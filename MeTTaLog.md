# MeTTaLog: An Implementation of MeTTa in Prolog

MeTTaLog is a superfluous implementaiton of MeTTa, a language designed to succeed OpenCog Classic Atomese.  It is part of the OpenCog Hyperon initiative and provides well-defined semantics for meta-language features, different types of inference, and more.

Jump to [MeTTaLog Installation Guide](https://github.com/logicmoo/vspace-metta/blob/main/MeTTaLog.md#installation-guide)

# Bugs in MeTTaLog

| Pass | Fail |Percent| Directory                                        |
|------|------|-------|--------------------------------------------------|
|    66|     5|    92%| reports/cuRRent/baseline_compat/metta-morph_tests - |
|   187|    24|    88%| reports/cuRRent/baseline_compat/hyperon-experimental_scripts - |
|    27|     7|    79%| reports/cuRRent/baseline_compat/hyperon-mettalog_sanity - |
|    29|    17|    63%| reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments - |
|    30|    20|    60%| reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis - |
|     6|     1|    85%| reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/orientation - |
|     6|     1|    85%| reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/located - |
|     5|     4|    55%| reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/john-carry-flower - |
|    17|     6|    73%| reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo - |
|     1|     0|   100%| reports/cuRRent/baseline_compat/hyperon-pln_metta/subtyping - |
|     4|     3|    57%| reports/cuRRent/baseline_compat/hyperon-pln_metta/match - |
|     4|     0|   100%| reports/cuRRent/baseline_compat/hyperon-pln_metta/hol - |
|    32|    18|    64%| reports/cuRRent/baseline_compat/hyperon-pln_metta/forward-chainer - |
|     2|     2|    50%| reports/cuRRent/baseline_compat/hyperon-pln_metta/equal - |
|     6|     3|    66%| reports/cuRRent/baseline_compat/hyperon-pln_metta/entail - |
|    23|     8|    74%| reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types - |
|    15|     0|   100%| reports/cuRRent/baseline_compat/hyperon-pln_metta/common/truthvalue - |
|    13|     0|   100%| reports/cuRRent/baseline_compat/hyperon-pln_metta/common/formula - |
|    76|     3|    96%| reports/cuRRent/baseline_compat/hyperon-pln_metta/common - |
|    35|    14|    71%| reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer - |
|   230|    77|    74%| reports/cuRRent/baseline_compat/hyperon-pln_metta - |
|     0|     0|     0%| reports/cuRRent/performance -                    |
|   510|   113|    81%| reports -                                        |
|   510|   113|    81%| reports/cuRRent -                                |
|   510|   113|    81%| reports/cuRRent/baseline_compat -                |

<details><summary>Expand for Core Summaries</summary>

|Pass |Fail |File                               |GitHub Link                                                                                                                       |
|-----|-----|-----------------------------------|----------------------------------------------------------------------------------------------------------------------------------|
|  16 |  18 | forward-chainer-xp.metta.metta    |[reports/cuRRent/baseline_compat/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html)|
|  35 |  14 | backward-chainer-xp.metta.metta   |[reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html)|
|  2  |  11 | synthesize-via-unify-test.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html)|
|  12 |  6  | ImplicationDirectIntroductionDTLTest.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html)|
|  1  |  5  | unify-via-case.metta.metta        |[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html)|
|  14 |  4  | d4_type_prop.metta.metta          |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta.html)|
|  5  |  4  | john-carry-flower-test.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html)|
|  24 |  3  | d2_higherfunc.metta.metta         |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta.html)|
|  11 |  3  | d1_gadt.metta.metta               |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d1_gadt.metta.html)|
|  6  |  3  | e3_match_states.metta.metta       |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e3_match_states.metta.html)|
|  4  |  3  | c2_spaces.metta.metta             |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c2_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c2_spaces.metta.html)|
|  1  |  3  | 04_match_list_like_space.metta.metta|[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/04_match_list_like_space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/04_match_list_like_space.metta.html)|
|  1  |  3  | 05_match_superpose_element_like_space.metta.metta|[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html)|
|  1  |  3  | UnifyTest.metta.metta             |[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/UnifyTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/UnifyTest.metta.html)|
|  20 |  2  | f1_imports.metta.metta            |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_imports.metta.html)|
|  10 |  2  | NumTest.metta.metta               |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/NumTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/NumTest.metta.html)|
|  8  |  2  | match_void.metta.metta            |[reports/cuRRent/baseline_compat/metta-morph_tests/match_void.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/match_void.metta.html)|
|  5  |  2  | ImplicationDirectIntroductionEntailTest.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html)|
|  4  |  2  | ModusPonensDTLTest.metta.metta    |[reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html)|
|  3  |  2  | c3_pln_stv.metta.metta            |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c3_pln_stv.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c3_pln_stv.metta.html)|
|  2  |  2  | a3_twoside.metta.metta            |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a3_twoside.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a3_twoside.metta.html)|
|  1  |  2  | DeductionEqualTest.metta.metta    |[reports/cuRRent/baseline_compat/hyperon-pln_metta/equal/DeductionEqualTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/equal/DeductionEqualTest.metta.html)|
|  20 |  1  | b5_types_prelim.metta.metta       |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta.html)|
|  11 |  1  | OrderedSetTest.metta.metta        |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/OrderedSetTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/OrderedSetTest.metta.html)|
|  10 |  1  | b4_nondeterm.metta.metta          |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta.html)|
|  6  |  1  | located-test.metta.metta          |[reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/located/located-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/located/located-test.metta.html)|
|  6  |  1  | orientation-test.metta.metta      |[reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html)|
|  3  |  1  | synthesize-via-superpose.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html)|
|  2  |  1  | DeductionImplicationDirectIntroductionMatchTest.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html)|
|  1  |  1  | DeductionEntailTest.metta.metta   |[reports/cuRRent/baseline_compat/hyperon-pln_metta/entail/DeductionEntailTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/entail/DeductionEntailTest.metta.html)|
|  1  |  1  | DeductionMatchTest.metta.metta    |[reports/cuRRent/baseline_compat/hyperon-pln_metta/match/DeductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/match/DeductionMatchTest.metta.html)|
|  1  |  1  | ImplicationDirectIntroductionMatchTest.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta.html)|
|  0  |  1  | 02-curried-plus.metta.metta       |[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/02-curried-plus.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/02-curried-plus.metta.html)|
|  0  |  1  | match_feval.metta.metta           |[reports/cuRRent/baseline_compat/metta-morph_tests/match_feval.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/match_feval.metta.html)|
|  0  |  1  | minnars.metta.metta               |[reports/cuRRent/baseline_compat/metta-morph_tests/minnars.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/minnars.metta.html)|
|  0  |  1  | nalifier.metta.metta              |[reports/cuRRent/baseline_compat/metta-morph_tests/nalifier.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/nalifier.metta.html)|
|  21 |  0  | c1_grounded_basic.metta.metta     |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta.html)|
|  20 |  0  | ListTest.metta.metta              |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/ListTest.metta.html)|
|  17 |  0  | 00_lang_case.metta.metta          |[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/00_lang_case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/00_lang_case.metta.html)|
|  16 |  0  | forward-chainer-test.metta.metta  |[reports/cuRRent/baseline_compat/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html)|
|  14 |  0  | synthesize-via-type-checking.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html)|
|  13 |  0  | DeductionFormulaTest.metta.metta  |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html)|
|  11 |  0  | e2_states.metta.metta             |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e2_states.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e2_states.metta.html)|
|  10 |  0  | TruthValueTest.metta.metta        |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html)|
|  9  |  0  | sequential_nested.metta.metta     |[reports/cuRRent/baseline_compat/metta-morph_tests/sequential_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/sequential_nested.metta.html)|
|  9  |  0  | states_spaces.metta.metta         |[reports/cuRRent/baseline_compat/metta-morph_tests/states_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/states_spaces.metta.html)|
|  7  |  0  | a1_symbols.metta.metta            |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a1_symbols.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a1_symbols.metta.html)|
|  7  |  0  | d3_deptypes.metta.metta           |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d3_deptypes.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d3_deptypes.metta.html)|
|  7  |  0  | DeductionDTLTest.metta.metta      |[reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html)|
|  7  |  0  | match_superposed_spaces.metta.metta|[reports/cuRRent/baseline_compat/metta-morph_tests/match_superposed_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/match_superposed_spaces.metta.html)|
|  7  |  0  | supercollapse.metta.metta         |[reports/cuRRent/baseline_compat/metta-morph_tests/supercollapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/supercollapse.metta.html)|
|  7  |  0  | unify-via-let.metta.metta         |[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html)|
|  6  |  0  | b1_equal_chain.metta.metta        |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b1_equal_chain.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b1_equal_chain.metta.html)|
|  5  |  0  | 03-soring-via-insert.metta.metta  |[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/03-soring-via-insert.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/03-soring-via-insert.metta.html)|
|  5  |  0  | b0_chaining_prelim.metta.metta    |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b0_chaining_prelim.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b0_chaining_prelim.metta.html)|
|  5  |  0  | b2_backchain.metta.metta          |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b2_backchain.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b2_backchain.metta.html)|
|  5  |  0  | EvidentialTruthValueTest.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html)|
|  5  |  0  | types2.metta.metta                |[reports/cuRRent/baseline_compat/metta-morph_tests/types2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/types2.metta.html)|
|  4  |  0  | MaybeTest.metta.metta             |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/MaybeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/MaybeTest.metta.html)|
|  4  |  0  | superpose_nested.metta.metta      |[reports/cuRRent/baseline_compat/metta-morph_tests/superpose_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/superpose_nested.metta.html)|
|  3  |  0  | b3_direct.metta.metta             |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b3_direct.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/b3_direct.metta.html)|
|  3  |  0  | e1_kb_write.metta.metta           |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e1_kb_write.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/e1_kb_write.metta.html)|
|  3  |  0  | f1_moduleA.metta.metta            |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_moduleA.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/f1_moduleA.metta.html)|
|  2  |  0  | 01_lang_inc.metta.metta           |[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/01_lang_inc.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/01_lang_inc.metta.html)|
|  2  |  0  | EqualityTypeTest.metta.metta      |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/EqualityTypeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/EqualityTypeTest.metta.html)|
|  2  |  0  | let_superpose_list.metta.metta    |[reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_list.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_list.metta.html)|
|  2  |  0  | ListTest.metta.metta              |[reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/ListTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/ListTest.metta.html)|
|  2  |  0  | NatTest.metta.metta               |[reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/NatTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/NatTest.metta.html)|
|  2  |  0  | synthesize-via-unify-test-longer.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta.html)|
|  2  |  0  | zeroargs.metta.metta              |[reports/cuRRent/baseline_compat/metta-morph_tests/zeroargs.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/zeroargs.metta.html)|
|  1  |  0  | a2_opencoggy.metta.metta          |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a2_opencoggy.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/a2_opencoggy.metta.html)|
|  1  |  0  | add_atom_match.metta.metta        |[reports/cuRRent/baseline_compat/metta-morph_tests/add_atom_match.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/add_atom_match.metta.html)|
|  1  |  0  | and_or.metta.metta                |[reports/cuRRent/baseline_compat/metta-morph_tests/and_or.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/and_or.metta.html)|
|  1  |  0  | collapse.metta.metta              |[reports/cuRRent/baseline_compat/metta-morph_tests/collapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/collapse.metta.html)|
|  1  |  0  | d5_auto_types.metta.metta         |[reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d5_auto_types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-experimental_scripts/d5_auto_types.metta.html)|
|  1  |  0  | factorial.metta.metta             |[reports/cuRRent/baseline_compat/metta-morph_tests/factorial.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/factorial.metta.html)|
|  1  |  0  | identity.metta.metta              |[reports/cuRRent/baseline_compat/metta-morph_tests/identity.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/identity.metta.html)|
|  1  |  0  | if.metta.metta                    |[reports/cuRRent/baseline_compat/metta-morph_tests/if.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/if.metta.html)|
|  1  |  0  | ImplicationDirectIntroductionEqualTest.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html)|
|  1  |  0  | InTest.metta.metta                |[reports/cuRRent/baseline_compat/hyperon-pln_metta/common/InTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/common/InTest.metta.html)|
|  1  |  0  | letlet.metta.metta                |[reports/cuRRent/baseline_compat/metta-morph_tests/letlet.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/letlet.metta.html)|
|  1  |  0  | let_superpose_list2.metta.metta   |[reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_list2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_list2.metta.html)|
|  1  |  0  | multifunction.metta.metta         |[reports/cuRRent/baseline_compat/metta-morph_tests/multifunction.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/multifunction.metta.html)|
|  1  |  0  | nested_parameters.metta.metta     |[reports/cuRRent/baseline_compat/metta-morph_tests/nested_parameters.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/nested_parameters.metta.html)|
|  1  |  0  | peano.metta.metta                 |[reports/cuRRent/baseline_compat/metta-morph_tests/peano.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/peano.metta.html)|
|  1  |  0  | structure-tests.metta.metta       |[reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/structure-tests.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-mettalog_sanity/structure-tests.metta.html)|
|  1  |  0  | subtyping-test.metta.metta        |[reports/cuRRent/baseline_compat/hyperon-pln_metta/subtyping/subtyping-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/subtyping/subtyping-test.metta.html)|
|  1  |  0  | types3.metta.metta                |[reports/cuRRent/baseline_compat/metta-morph_tests/types3.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/types3.metta.html)|
|  1  |  0  | types.metta.metta                 |[reports/cuRRent/baseline_compat/metta-morph_tests/types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/types.metta.html)|
|  0  |  0  | DeductionImplicationDirectIntroductionDTLTest.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta.html)|
|  0  |  0  | let_superpose_if_case.metta.metta |[reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_if_case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/metta-morph_tests/let_superpose_if_case.metta.html)|
|  0  |  0  | NatSimpleTest.metta.metta         |[reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/NatSimpleTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/hol/NatSimpleTest.metta.html)|
|  0  |  0  | non-determinism.metta.metta       |[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/non-determinism.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/non-determinism.metta.html)|
|  0  |  0  | self-contained-synthesize.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/self-contained-synthesize.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/self-contained-synthesize.metta.html)|
|  0  |  0  | SynthesizeTest.metta.metta        |[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/SynthesizeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/SynthesizeTest.metta.html)|
|  0  |  0  | synthesize-via-case-test.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta.html)|
|  0  |  0  | synthesize-via-let-test.metta.metta|[reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta.html)|
|  0  |  0  | test_list_concatenation.metta.metta|[reports/cuRRent/performance/test_list_concatenation.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/test_list_concatenation.metta.html)|

</details>
 
 
| STATUS | TEST NAME | TEST CONDITION | ACTUAL RESULT | EXPECTED RESULT |
|--------|-----------|----------------|---------------|-----------------|
... | ||||
(/ ... | ||||
(/ ... | ||||
(/ ... | ||||
(/ ... | ||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(|- ||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
(()) |||||
... | ||||
... | ||||
($T))) |   ( (Type) ||||
(0) |||||
(0) |||||
(0) |||||
(0) |||||
(0) |||||
(0.0 |||||
(0.0 |||||
(0.0 |||||
(0.0 |||||
(0.0 0.40276243093922653)) |||||
(0.0 0.40276243093922653)) |||||
(0.0 0.40276243093922653)) |||||
(0.0 0.40276243093922653)) |||||
(0.0 0.81))) |||||
(0.0 0.81))) |||||
(0.0 0.81))) |||||
(0.0 0.81))) |||||
(0.24874999999999994) |||||
(0.25) |||||
(/ 0.81 1... | ||||
(/ 0.81 1... | ||||
(/ 0.81 1... | ||||
(/ 0.81 1... | ||||
(/ 0.81 1.81))) |||||
(/ 0.81 1.81))) |||||
(/ 0.81 1.81))) |||||
(/ 0.81 1.81))) |||||
(/ 0.81 1.81)))) | ||||
(/ 0.81 1.81)))) | ||||
(/ 0.81 1.81)))) | ||||
(/ 0.81 1.81)))) | ||||
(1)) |||||
(+ 1 |||||
(+ 1 |||||
( (1) |||||
(1) |||||
(1.0 |||||
(1.0 |||||
(1.0 |||||
(1.0 |||||
(1.0 |||||
(1.0 |||||
(1.0 |||||
(1.0 |||||
(1.0 |||||
(1.0 |||||
(1.0 |||||
(1.0 |||||
(1.0 ... | ||||
(1.0 ... | ||||
(1.0 ... | ||||
(1.0 ... | ||||
(10) |||||
(1.0 0.28712091374556914)) |||||
(1.0 0.28712091374556914)) |||||
(1.0 0.28712091374556914)) |||||
(1.0 0.28712091374556914)) |||||
(1.0 0.28712091374556914))) |||||
(1.0 0.28712091374556914))) |||||
(1.0 0.28712091374556914))) |||||
(1.0 0.28712091374556914))) |||||
( ( (1.0 0.37946790052053214) |||||
( ( (1.0 0.37946790052053214) |||||
(1.0 0.40276243093922653)) |||||
(1.0 0.40276243093922653)) |||||
(1.0 0.40276243093922653)) |||||
(1.0 0.40276243093922653)) |||||
(1.0 0.40276243093922653)) |||||
(1.0 0.40276243093922653)) |||||
(1.0 0.40276243093922653)) |||||
(1.0 0.40276243093922653)) |||||
(1.0 0.42163100057836905)) |||||
(1.0 0.42163100057836905)) |||||
(1.0 0.42163100057836905)) |||||
(1.0 0.42163100057836905)) |||||
(1.0 0.44751381215469616)) |||||
(1.0 0.44751381215469616)) |||||
(1.0 0.44751381215469616)) |||||
(1.0 0.44751381215469616)) |||||
(1.0 0.44751381215469616)) |||||
(1.0 0.44751381215469616)) |||||
(1.0 0.44751381215469616)) |||||
(1.0 0.44751381215469616)) |||||
(1.0 0.44751381215469616))) |||||
(1.0 0.44751381215469616))) |||||
(1.0 0.44751381215469616))) |||||
(1.0 0.44751381215469616))) |||||
(1.0 0.44751381215469616))) |||||
(1.0 0.44751381215469616))) |||||
(1.0 0.44751381215469616))) |||||
(1.0 0.44751381215469616))) |||||
(1.0 0.7290000000000001)) |||||
(1.0 0.7290000000000001)) |||||
(1.0 0.7290000000000001)) |||||
(1.0 0.7290000000000001)) |||||
(1.0 0.7290000000000001)) |||||
(1.0 0.7290000000000001)) |||||
(1.0 0.7290000000000001)) |||||
(1.0 0.7290000000000001)) |||||
(1.0 0.81))) |||||
(1.0 0.81))) |||||
(1.0 0.81))) |||||
(1.0 0.81))) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81))) | ||||
(1.0 0.81))) | ||||
(1.0 0.81))) | ||||
(1.0 0.81))) | ||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81)) |||||
(1.0 0.81))) |||||
(1.0 0.81))) |||||
(1.0 0.81))) |||||
(1.0 0.81))) |||||
(1.0 0.81))) |||||
(1.0 0.81))) |||||
(1.0 0.81))) |||||
(1.0 0.81))) |||||
(1.0 0.81))) | ||||
(1.0 0.81))) | ||||
(1.0 0.81))) | ||||
(1.0 0.81))) | ||||
(1.0 0.81... | ||||
(1.0 0.81... | ||||
(1.0 0.81... | ||||
(1.0 0.81... | ||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9))) |||||
(1.0 0.9))) |||||
(1.0 0.9))) |||||
(1.0 0.9))) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)) |||||
(1.0 0.9)))) |   ( ( (a --> ||||
(1.0 0.9)))) |   ( ( (a --> ||||
(1.0 0.9)))) |   ( ( (a --> ||||
(1.0 0.9)))) |   ( ( (a --> ||||
(1.0 0.9)))) |   ( ( ( { a } --> mwawa) ||||
(1.0 0.9)))) |   ( ( ( { a } --> mwawa) ||||
(1.0 0.9)))) |   ( ( ( { a } --> mwawa) ||||
(1.0 0.9)))) |   ( ( ( { a } --> mwawa) ||||
(1.0 0.9)))) |   ( ( (B --> A) ||||
(1.0 0.9)))) |   ( ( (B --> A) ||||
(1.0 0.9)))) |   ( ( (B --> A) ||||
(1.0 0.9)))) |   ( ( (B --> A) ||||
(1.0 0.9)))) |   ( ( (Garfield --> animal) ||||
(1.0 0.9)))) |   ( ( (Garfield --> animal) ||||
(1.0 0.9)))) |   ( ( (Garfield --> animal) ||||
(1.0 0.9)))) |   ( ( (Garfield --> animal) ||||
(1.0 0.9)))) |   ( ( (Garfield --> being) ||||
(1.0 0.9)))) |   ( ( (Garfield --> being) ||||
(1.0 0.9)))) |   ( ( (Garfield --> being) ||||
(1.0 0.9)))) |   ( ( (Garfield --> being) ||||
(1.0 0.9)))) |   ( ( (Garfield --> cat) ||||
(1.0 0.9)))) |   ( ( (Garfield --> cat) ||||
(1.0 0.9)))) |   ( ( (Garfield --> cat) ||||
(1.0 0.9)))) |   ( ( (Garfield --> cat) ||||
(1.0 0.9)))) |   ( ( ( (R \1 b) --> a) ||||
(1.0 0.9)))) |   ( ( ( (R \1 b) --> a) ||||
(1.0 0.9)))) |   ( ( ( (R \1 b) --> a) ||||
(1.0 0.9)))) |   ( ( ( (R \1 b) --> a) ||||
(120) |||||
(120) |||||
(1 2 3)))) |   ( (1) ||||
(13) |||||
(13) |||||
(136) |||||
(1 p |||||
( (1 p $_180434) |||||
(2) |||||
(2) |||||
(2) |||||
(2 1 3 4))) |||||
(2 1 3 4))) |||||
(2 3 4) |||||
(2 3 4) |||||
(25) |||||
(29) |||||
(29) |||||
(29) |||||
(29) |||||
(29) |||||
(29) |||||
(2.976046176046176) |||||
(2 None) |||||
(2 t |||||
(2 t $_180078) |||||
(2 t $_180078) |||||
(3)) |||||
(3)) | ||||
(3.00009155413138) |||||
(3025) |||||
(3.1031453128860114) |||||
(3.2751010413348074) |||||
(441) |||||
(49) |||||
(5) |||||
(5) |||||
(55) |||||
(720) |||||
(* 8 |||||
(* 8 |||||
(* 8 |||||
(81) |||||
(9) |||||
( ( (a --> |||||
( ( (a --> |||||
( ( (a --> |||||
( ( (a --> |||||
("a'") |||||
( (A)) |||||
(: "a'" $T) |||||
(: a $T) |||||
(: A $T) |||||
( (a a)) |||||
( (a a)) |||||
(a * b)) |||||
(a * b)) |||||
(a * b)) |||||
(a * b)) |||||
( ( (A & B) --> cat) |||||
( ( (A & B) --> cat) |||||
( ( (A & B) --> cat) |||||
( ( (A & B) --> cat) |||||
( ( (A | B) --> cat) ||||
( ( (A | B) --> cat) ||||
( ( (A | B) --> cat) ||||
( ( (A | B) --> cat) ||||
( ( (A ~ B) --> cat) |||||
( ( (A ~ B) --> cat) |||||
( ( (A ~ B) --> cat) |||||
( ( (A ~ B) --> cat) |||||
( ( { a b } --> mwawa) |||||
( ( { a b } --> mwawa) |||||
( ( { a b } --> mwawa) |||||
( ( { a b } --> mwawa) |||||
( ( (a * b) --> R) |||||
( ( (a * b) --> R) |||||
( ( (a * b) --> R) |||||
( ( (a * b) --> R) |||||
( (A --> cat) |||||
( (A --> cat) |||||
( (A --> cat) |||||
( (A --> cat) |||||
("a'" "c'" "d'") |||||
(all |||||
( ( ( { a } --> mwawa) |||||
( ( ( { a } --> mwawa) |||||
( ( ( { a } --> mwawa) |||||
( ( ( { a } --> mwawa) |||||
(ana mapExpr nTimes) |||||
( (ana mapExpr nTimes) |||||
(and |||||
(and 2 |||||
(and 3 |||||
( (animal --> |||||
( (animal --> |||||
( (animal --> |||||
( (animal --> |||||
( (animal --> |||||
( (animal --> |||||
( (animal --> |||||
( (animal --> |||||
( (animal --> |||||
( (animal --> |||||
( (animal --> |||||
( (animal --> |||||
( (animal --> being) |||||
( (animal --> being) |||||
( (animal --> being) |||||
( (animal --> being) |||||
( (animal --> Garfield) |||||
( (animal --> Garfield) |||||
( (animal --> Garfield) |||||
( (animal --> Garfield) |||||
( (animal --> Garfield) |||||
( (animal --> Garfield) |||||
( (animal --> Garfield) |||||
( (animal --> Garfield) |||||
("a'"))) NoValidAlternatives)) |||||
(any |||||
( (b --> |||||
( (b --> |||||
( (b --> |||||
( (b --> |||||
( (b --> |||||
( (b --> |||||
( (b --> |||||
( (b --> |||||
(B) |||||
( (B) |||||
( (B <-> A) |||||
( (B <-> A) |||||
( (B <-> A) |||||
( (B <-> A) |||||
( (B <-> A) |||||
( (B <-> A) |||||
( (B <-> A) |||||
( (B <-> A) |||||
( ( (B --> A) |||||
( ( (B --> A) |||||
( ( (B --> A) |||||
( ( (B --> A) |||||
("b'" "c'") |||||
("b'" "c'") |||||
("b'" "c'") |||||
( (B --> cat) |||||
( (B --> cat) |||||
( (B --> cat) |||||
( (B --> cat) |||||
( (being --> Garfield) |||||
( (being --> Garfield) |||||
( (being --> Garfield) |||||
( (being --> Garfield) |||||
( (being --> Garfield) |||||
( (being --> Garfield) |||||
( (being --> Garfield) |||||
( (being --> Garfield) |||||
( (being --> Garfield) |||||
( (being --> Garfield) |||||
( (being --> Garfield) |||||
( (being --> Garfield) |||||
( (being <-> Garfield) |||||
( (being <-> Garfield) |||||
( (being <-> Garfield) |||||
( (being <-> Garfield) |||||
(Bernoulli))))) |||||
(Bernoulli))))) |||||
(bind! &attentional_focus |||||
(bind! &attentional_focus |||||
(bind! &attentional_focus |||||
(bind! &attentional_focus |||||
(bind! &attentional_focus |||||
(bind! &belief_events |||||
(bind! &belief_events |||||
(bind! &belief_events |||||
(bind! &belief_events |||||
(bind! &belief_events |||||
(bind! &belief_events |||||
(bind! &concepts |||||
(bind! &concepts |||||
(bind! &concepts |||||
(bind! &concepts |||||
(bind! &concepts |||||
(bind! &currentTime |||||
(bind! &currentTime |||||
(bind! &currentTime |||||
(bind! &currentTime |||||
(bind! &currentTime |||||
(bind! &currentTime |||||
(bind! &data |||||
(bind! &evidentialBase |||||
(bind! &evidentialBase |||||
(bind! &evidentialBase |||||
(bind! &evidentialBase |||||
(bind! &evidentialBase |||||
(bind! &evidentialBase |||||
(bind! &fail |||||
(bind! &FIFO |||||
(bind! &FIFO |||||
(bind! &FIFO |||||
(bind! &FIFO |||||
(bind! &FIFO |||||
(bind! &goal_events |||||
(bind! &goal_events |||||
(bind! &goal_events |||||
(bind! &goal_events |||||
(bind! &goal_events |||||
(bind! &goal_events |||||
(bind! &pass |||||
(bind! pass-or-False |||||
(bind! &tempbest |||||
(bind! &tempbest |||||
(bind! &tempbest |||||
(bind! &tempbest |||||
(bind! &tempbest |||||
(bind! &tempbest |||||
(bind! &tempbestscore |||||
(bind! &tempbestscore |||||
(bind! &tempbestscore |||||
(bind! &tempbestscore |||||
(bind! &tempbestscore |||||
(bind! &tempbestscore |||||
(bind! &tempset |||||
(bind! &tempset |||||
(bind! &tempset |||||
(bind! &tempset |||||
(bind! &tempset |||||
(bind! &tempstate |||||
(bind! &tempstate |||||
(bind! &tempstate |||||
(bind! &tempstate |||||
(bind! &tempstate |||||
(Blue False Green Red True) |||||
(Blue False Green Red True) |||||
(Blue False Green Red True) |||||
(Blue False Green Red True) |||||
(Blue False Green Red True) |||||
(Blue False Green Red True) |||||
(Blue Green Red) |||||
(Blue Green Red) |||||
(Blue Green Red) |||||
(Blue Green Red) |||||
( ( { b } --> mwawa) |||||
( ( { b } --> mwawa) |||||
( ( { b } --> mwawa) |||||
( ( { b } --> mwawa) |||||
(BuildTupleCounts |||||
(:called) |||||
(cata mapExpr evalExpr) |||||
( (cata mapExpr evalExpr) |||||
( (cat --> animal) |||||
( (cat --> animal) |||||
( (cat --> animal) |||||
( (cat --> animal) |||||
( (cat --> animal) |||||
( (cat --> animal) |||||
( (cat --> animal) |||||
( (cat --> animal) |||||
( ( (cat x sky) --> like) |||||
(ColDist)))) |||||
(ColDist)))) |||||
(ColPerm |||||
(ColPerm |||||
(ColPerm True)) | ||||
(ColPerm True)) | ||||
(Cons |||||
(Cons |||||
(Cons |||||
(Cons |||||
(Cons $_2868 Nil))) Nil)))) |||||
(Cons 0 |||||
(Cons 2 |||||
(Cons 2 Nil))) |||||
(Cons 3 Nil)))) |||||
(Cons boris |||||
(Cons cashier |||||
(Cons cashier |||||
(Cons controller |||||
(Cons has_sister Nil))) |||||
(Cons ivan |||||
(Cons ivan |||||
(Cons no_sister Nil))) |||||
(Cons no_sister Nil))) |||||
(Cons semyon |||||
(Cons supervisor |||||
(Const 1)))))))) |||||
(Const 1)) |||||
(Const 1)) |||||
(Const 1)))))) |   ( (diff ||||
(Const 2)))) |||||
(Const 2)) |||||
(Const 2))))) |||||
(Const 40)))))))) |||||
("d'") |||||
(D) |||||
(D)) | ||||
( (diff |||||
(Distribution |||||
( (Error |||||
(evalExpr |||||
( (evalExpr |||||
(expand $X) $Y) $X)) |   ( (1 p $_180434) ||||
( ( (ExtSet garfield) --> cat) |||||
(f |||||
(f |||||
(False) |||||
(False) |||||
(False True) |||||
(False True) |||||
( (file-name allele_genetic_interactions "data/ftp.flybase.net/releases/current/precomputed_files/alleles/allele_genetic_interactions_fb_2023_04.tsv")) |||||
( (file-name automated_gene_summaries "data/ftp.flybase.net/releases/current/precomputed_files/genes/automated_gene_summaries_fb_2023_04.tsv")) |||||
( (file-name automated_gene_summaries "data/ftp.flybase.net/releases/current/precomputed_files/genes/automated_gene_summaries.tsv")) |||||
( (file-name best_gene_summary "data/ftp.flybase.net/releases/current/precomputed_files/genes/best_gene_summary_fb_2023_04.tsv")) |||||
( (file-name cDNA_clone_data "data/ftp.flybase.net/releases/current/precomputed_files/clones/cDNA_clone_data_fb_2023_04.tsv")) |||||
( (file-name cyto-genetic-seq "data/ftp.flybase.net/releases/current/precomputed_files/map_conversion/cyto-genetic-seq.tsv")) |||||
( (file-name dataset_metadata "data/ftp.flybase.net/releases/current/precomputed_files/metadata/dataset_metadata_fb_2023_04.tsv")) |||||
( (file-name disease_model_annotations "data/ftp.flybase.net/releases/current/precomputed_files/human_disease/disease_model_annotations_fb_2023_04.tsv")) |||||
( (file-name Dmel_enzyme_data "data/ftp.flybase.net/releases/current/precomputed_files/genes/Dmel_enzyme_data_fb_2023_04.tsv")) |||||
( (file-name dmel_gene_sequence_ontology_annotations "data/ftp.flybase.net/releases/current/precomputed_files/genes/dmel_gene_sequence_ontology_annotations_fb_2023_04.tsv")) |||||
( (file-name dmel_paralogs "data/ftp.flybase.net/releases/current/precomputed_files/orthologs/dmel_paralogs_fb_2023_04.tsv")) |||||
( (file-name dmel_unique_protein_isoforms "data/ftp.flybase.net/releases/current/precomputed_files/genes/dmel_unique_protein_isoforms_fb_2023_04.tsv")) |||||
( (file-name fbal_to_fbgn "data/ftp.flybase.net/releases/current/precomputed_files/alleles/fbal_to_fbgn_fb_2023_04.tsv")) |||||
( (file-name fbgn_annotation_ID "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_annotation_ID_fb_2023_04.tsv")) |||||
( (file-name fbgn_annotation_ID "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_annotation_ID.tsv")) |||||
( (file-name fbgn_exons2affy1_overlaps "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_exons2affy1_overlaps.tsv")) |||||
( (file-name fbgn_exons2affy2_overlaps "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_exons2affy2_overlaps.tsv")) |||||
( (file-name fbgn_fbtr_fbpp "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_fb_2023_04.tsv")) |||||
( (file-name fbgn_fbtr_fbpp_expanded "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_expanded_fb_2023_04.tsv")) |||||
( (file-name fbgn_gleanr "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_gleanr_fb_2023_04.tsv")) |||||
( (file-name fbgn_NAseq_Uniprot "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_NAseq_Uniprot_fb_2023_04.tsv")) |||||
( (file-name fbgn_uniprot "data/ftp.flybase.net/releases/current/precomputed_files/collaborators/fbgn_uniprot_fb_2023_04.tsv")) |||||
( (file-name fu_gal4_table_ "data/ftp.flybase.net/releases/current/precomputed_files/insertions/fu_gal4_table_fb_2023_04.json")) |||||
( (file-name gene_associatio "data/ftp.flybase.net/releases/current/precomputed_files/go/gene_association.fb")) |||||
( (file-name gene_functional_complementation "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_functional_complementation_fb_2023_04.tsv")) |||||
( (file-name gene_genetic_interactions "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_genetic_interactions_fb_2023_04.tsv")) |||||
( (file-name gene_group_data "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_group_data_fb_2023_04.tsv")) |||||
( (file-name gene_groups_HGNC "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_groups_HGNC_fb_2023_04.tsv")) |||||
( (file-name gene_map_table "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_map_table_fb_2023_04.tsv")) |||||
( (file-name gene_rpkm_matrix "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_rpkm_matrix_fb_2023_04.tsv")) |||||
( (file-name gene_rpkm_report "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_rpkm_report_fb_2023_04.tsv")) |||||
( (file-name gene_snapshots "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_snapshots_fb_2023_04.tsv")) |||||
( (file-name genome-cyto-seq "data/ftp.flybase.net/releases/current/precomputed_files/map_conversion/genome-cyto-seq.txt")) |||||
( (file-name genomic_clone_data "data/ftp.flybase.net/releases/current/precomputed_files/clones/genomic_clone_data_fb_2023_04.tsv")) |||||
( (file-name genotype_phenotype_data "data/ftp.flybase.net/releases/current/precomputed_files/alleles/genotype_phenotype_data_fb_2023_04.tsv")) |||||
( (file-name gp_informatio "data/ftp.flybase.net/releases/current/precomputed_files/collaborators/gp_information.fb")) |||||
( (file-name insertion_mapping "data/ftp.flybase.net/releases/current/precomputed_files/insertions/insertion_mapping_fb_2023_04.tsv")) |||||
( (file-name ncRNA_genes_ "data/ftp.flybase.net/releases/current/precomputed_files/genes/ncRNA_genes_fb_2023_04.json")) |||||
( (file-name pathway_group_data "data/ftp.flybase.net/releases/current/precomputed_files/genes/pathway_group_data_fb_2023_04.tsv")) |||||
( (file-name physical_interactions_mitab "data/ftp.flybase.net/releases/current/precomputed_files/genes/physical_interactions_mitab_fb_2023_04.tsv")) |||||
( (file-name pmid_fbgn_uniprot "data/ftp.flybase.net/releases/current/precomputed_files/collaborators/pmid_fbgn_uniprot_fb_2023_04.tsv")) |||||
( (file-name scRNA-Seq_gene_expression "data/ftp.flybase.net/releases/current/precomputed_files/genes/scRNA-Seq_gene_expression_fb_2023_04.tsv")) |||||
( (file-name sed5C "data/ftp.flybase.net/releases/current/precomputed_files/genes/sed5CWUTK")) |||||
( (file-name sednJ "data/ftp.flybase.net/releases/current/precomputed_files/genes/sednJUylZ")) |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
(Fix |||||
( (Fix |||||
( (Fix |||||
(Fix $_179186)) |||||
(Fix $_179186)) | ||||
(foo $Employers) |||||
( (futu mapExpr expand) |||||
( (futu_picking mapExpr expand) |||||
( ( (Garfield --> animal) |||||
( ( (Garfield --> animal) |||||
( ( (Garfield --> animal) |||||
( ( (Garfield --> animal) |||||
(Garfield & being)) |||||
(Garfield & being)) |||||
(Garfield & being)) |||||
(Garfield & being)) |||||
(Garfield - being)) |||||
(Garfield - being)) |||||
(Garfield - being)) |||||
(Garfield - being)) |||||
(Garfield | being)) ||||
(Garfield | being)) ||||
(Garfield | being)) ||||
(Garfield | being)) ||||
( ( (Garfield --> being) |||||
( ( (Garfield --> being) |||||
( ( (Garfield --> being) |||||
( ( (Garfield --> being) |||||
(Garfield --> carnivore)) |||||
(Garfield --> carnivore)) |||||
(Garfield --> carnivore)) |||||
(Garfield --> carnivore)) |||||
( (Garfield --> carnivore) |||||
( (Garfield --> carnivore) |||||
( (Garfield --> carnivore) |||||
( (Garfield --> carnivore) |||||
( (Garfield --> cat) |||||
( (Garfield --> cat) |||||
( (Garfield --> cat) |||||
( (Garfield --> cat) |||||
( ( (Garfield --> cat) ==> |||||
( ( (Garfield --> cat) ==> |||||
( ( (Garfield --> cat) ==> |||||
( ( (Garfield --> cat) ==> |||||
( (Garfield --> cat) |||||
( (Garfield --> cat) |||||
( (Garfield --> cat) |||||
( (Garfield --> cat) |||||
( ( (Garfield --> cat) |||||
( ( (Garfield --> cat) |||||
( ( (Garfield --> cat) |||||
( ( (Garfield --> cat) |||||
(get-data $K) $V) |||||
(get-data k-7) $V) |||||
(get-state |||||
(" (get-type &belief_events) => " |||||
( (" (get-type &belief_events) => " hyperon::space::DynSpace)) |||||
(" (get-type &currentTime) => " |||||
( (" (get-type &currentTime) => " |||||
(get-type &currentTime))) |   ( (" (get-type &currentTime) => " ||||
(HybridDist)))) |||||
(HybridDist)))) |||||
(HybridDist)))) |   (False ||||
(HybridDist)))) |   (False ||||
(HybridPerm |||||
(HybridPerm |||||
(HybridPerm |||||
(HybridPerm |||||
(hylo mapExpr evalExpr nTimes) |||||
( (hylo mapExpr evalExpr nTimes) |||||
(if $R $Employers None))) |   ( (Cons ||||
(if-like |||||
(is-True) |||||
(K |||||
(K |||||
(k-0) |||||
(k-1) |||||
(k-2) |||||
(k-3) |||||
(k-4) |||||
(k-5) |||||
(k-6) |||||
(k-7) |||||
(k-8) |||||
(k-9) |||||
(K K)) x) y) z)) |   ( ( ( ( (S ||||
(K S)) K))) S)) |||||
(K S)) K) x) y) z)) |   ( ( ( (S ||||
(K x)) y) z)) | ||||
(let $K k-1 |||||
(let $R |||||
(let $Res |||||
(let $V |||||
(let $V |||||
(let $V |||||
(let $V |||||
(let $V |||||
(let $V |||||
(let $V |||||
(let $V |||||
(let $V |||||
(let $V |||||
(mapExpr |||||
(mapExpr |||||
(mapExpr |||||
(mapExpr |||||
(match &data |||||
(match &data |||||
(match &data |||||
(match &data |||||
(match &data |||||
(match &data |||||
(match &data |||||
(match &data |||||
(match &data |||||
(match &data |||||
(match &data |||||
(match &data |||||
(match &data |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(memb $X |||||
(memb $X |||||
(new-state v-0) |||||
(new-state v-1) |||||
(new-state v-2) |||||
(new-state v-3) |||||
(new-state v-4) |||||
(new-state v-5) |||||
(new-state v-6) |||||
(new-state v-7) |||||
(new-state v-8) |||||
(new-state v-9) |||||
(None |||||
(nTim... | ||||
( (para mapExpr diff) |||||
(para_pair mapExpr diff) |||||
(:pass) |||||
(:pass) |||||
(Plus |||||
(Plus |||||
(Plus |||||
(Plus |||||
(Plus |||||
(Plus |||||
(Plus |||||
(Plus |||||
(Plus |||||
(Plus |||||
(Plus |||||
(Plus |||||
(Plus |||||
(Plus True True))) | ||||
(Question |||||
( (R --> |||||
( (R --> |||||
( (R --> |||||
( (R --> |||||
(R /1 b)) |||||
(R /1 b)) |||||
(R /1 b)) |||||
(R /1 b)) |||||
(R /1 b)) |||||
(R /1 b)) |||||
(R /1 b)) |||||
(R /1 b)) |||||
( ( ( (R \1 b) --> a) |||||
( ( ( (R \1 b) --> a) |||||
( ( ( (R \1 b) --> a) |||||
( ( ( (R \1 b) --> a) |||||
(R /2 a)) |||||
(R /2 a)) |||||
(R /2 a)) |||||
(R /2 a)) |||||
(R /2 a)) |||||
(R /2 a)) |||||
(R /2 a)) |||||
(R /2 a)) |||||
( ( (R \2 a) --> b) |||||
( ( (R \2 a) --> b) |||||
( ( (R \2 a) --> b) |||||
( ( (R \2 a) --> b) |||||
( ( (R \2 a) --> b) |||||
( ( (R \2 a) --> b) |||||
( ( (R \2 a) --> b) |||||
( ( (R \2 a) --> b) |||||
(random Green Blue)))) |||||
(random Green Blue)))) |||||
(random Red |||||
(random Red |||||
( (S |||||
( (S |||||
(S |||||
(S |||||
(S |||||
( ( ( ( (S |||||
( ( ( ( (S |||||
( (sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
( (sample |||||
( (sample |||||
( (sample |||||
( (sample |||||
( (sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(sample |||||
(Sentence |||||
( (Sentence |||||
(set-pass) |||||
( ("sheep see")) |||||
( ("sheep see")) |||||
( (S K) x)) y)) | ||||
(S K)) x) y)) |   ( ( ( (S x) ||||
(sqr |||||
(sqr |||||
( ( ( (S S) |||||
(StateMonad Number))) |||||
(StateMonad Number))) | ||||
(superpose |||||
(superpose |||||
( (superpose |||||
(S x))) K) y) z)) | ||||
(S Z)))))) |   ( (+ ||||
(S Z))))) |   ( (Fix ||||
(test 0 |||||
(thunk |||||
(thunk |||||
(thunk |||||
(thunk |||||
( (thunk |||||
( (thunk |||||
( (thunk |||||
( (thunk |||||
(True) |||||
(True) |||||
(TupleCount |||||
(TupleCount |||||
(TupleCount |||||
(TupleCount |||||
(Type)) |||||
( ("U_ABCD'")) |||||
("U_ABCD'") |||||
(:uncalled) |||||
(:uncalled) |||||
(:uncalled) |||||
(unFix |||||
(unFix |||||
(v-1) |||||
(v-7) |||||
(v-7) |||||
(Var X)) |||||
(Var X)) |||||
(Var X)) |||||
(Var X)))) |||||
(Var X))))))) |||||
(Var X)) |||||
(Var X)))))) |   ( (Fix ||||
( (x |||||
( ( (x y) y)) |||||
( ( (x z) y)) |||||
(y z))) |||||
... | () | |||
($T))) |   ( (A)) | |||
($T))) |   ( ("U_ABCD'")) | |||
(1) 0 10)) | () | |||
(1 2 3)))) |   (2 3 4) | |||
(1 2 3)))) |   (2 3 4) | |||
(+ 2 5))) |   (49) | |||
(... |   (42) | |||
(>= 6 5)) |   (True) | |||
("a'"))))) |   ("a'") | |||
("a'"))))) |   ("a'") | |||
("a'"))) |   ("b'") | |||
("a'"))) |   ("b'") | |||
(_abs -5)) |   (5) | |||
(abs -5)) |   (5) | |||
(a-plus-abs-b 5 -5)) |   ( (- 5 -5)) | |||
(Bernoulli))) |   (True) | |||
(Bernoulli))) |   (True) | |||
("c'"))))) |   ("a'") | |||
("c'"))))))) |   ("b'") | |||
("c'"))) |   ("d'") | |||
(ColDist))) |   (Red) | |||
(ColDist))) |   (Red) | |||
(debug-me)) |   (Nil) | |||
(Distribution "U_ABCD'"))) |   ("U_ABCD'") | |||
(exercise_1_3 1 2 5)) |   (29) | |||
(exercise_1_3 1 5 2)) |   (29) | |||
(exercise_1_3 2 1 5)) |   (29) | |||
(exercise_1_3 2 5 1)) |   (29) | |||
(exercise_1_3 5 1 2)) |   (29) | |||
(exercise_1_3 5 2 1)) |   (29) | |||
(f $X) 2) $X)) |   ($_3618) | |||
(f 1) $Y) $Y)) |   ($_3450) | |||
(f 5)) |   (136) | |||
(factorial 5)) |   (120) | |||
(False False False False))) |   (False) | |||
(fib 7)) |   (13) | |||
(file-name allele_genetic_interactions "data/ftp.flybase.net/releases/current/precomputed_files/alleles/allele_genetic_interactions_fb_2023_04.tsv")) |   ( (file-name allele_genetic_interactions "data/ftp.flybase.net/releases/current/precomputed_files/... | |||
(file-name automated_gene_summaries "data/ftp.flybase.net/releases/current/precomputed_files/genes/automated_gene_summaries_fb_2023_04.tsv")) |   ( (file-name automated_gene_summaries "data/ftp.flybase.net/releases/current/precomputed_files/gen... | |||
(file-name automated_gene_summaries "data/ftp.flybase.net/releases/current/precomputed_files/genes/automated_gene_summaries.tsv")) |   ( (file-name automated_gene_summaries "data/ftp.flybase.net/releases/current/precomputed_files/gen... | |||
(file-name best_gene_summary "data/ftp.flybase.net/releases/current/precomputed_files/genes/best_gene_summary_fb_2023_04.tsv")) |   ( (file-name best_gene_summary "data/ftp.flybase.net/releases/current/precomputed_files/genes/best... | |||
(file-name cDNA_clone_data "data/ftp.flybase.net/releases/current/precomputed_files/clones/cDNA_clone_data_fb_2023_04.tsv")) |   ( (file-name cDNA_clone_data "data/ftp.flybase.net/releases/current/precomputed_files/clones/cDNA_... | |||
(file-name cyto-genetic-seq "data/ftp.flybase.net/releases/current/precomputed_files/map_conversion/cyto-genetic-seq.tsv")) |   ( (file-name cyto-genetic-seq "data/ftp.flybase.net/releases/current/precomputed_files/map_convers... | |||
(file-name dataset_metadata "data/ftp.flybase.net/releases/current/precomputed_files/metadata/dataset_metadata_fb_2023_04.tsv")) |   ( (file-name dataset_metadata "data/ftp.flybase.net/releases/current/precomputed_files/metadata/da... | |||
(file-name disease_model_annotations "data/ftp.flybase.net/releases/current/precomputed_files/human_disease/disease_model_annotations_fb_2023_04.tsv")) |   ( (file-name disease_model_annotations "data/ftp.flybase.net/releases/current/precomputed_files/hu... | |||
(file-name Dmel_enzyme_data "data/ftp.flybase.net/releases/current/precomputed_files/genes/Dmel_enzyme_data_fb_2023_04.tsv")) |   ( (file-name Dmel_enzyme_data "data/ftp.flybase.net/releases/current/precomputed_files/genes/Dmel_... | |||
(file-name dmel_gene_sequence_ontology_annotations "data/ftp.flybase.net/releases/current/precomputed_files/genes/dmel_gene_sequence_ontology_annotations_fb_2023_04.tsv")) |   ( (file-name dmel_gene_sequence_ontology_annotations "data/ftp.flybase.net/releases/current/precom... | |||
(file-name dmel_paralogs "data/ftp.flybase.net/releases/current/precomputed_files/orthologs/dmel_paralogs_fb_2023_04.tsv")) |   ( (file-name dmel_paralogs "data/ftp.flybase.net/releases/current/precomputed_files/orthologs/dmel... | |||
(file-name dmel_unique_protein_isoforms "data/ftp.flybase.net/releases/current/precomputed_files/genes/dmel_unique_protein_isoforms_fb_2023_04.tsv")) |   ( (file-name dmel_unique_protein_isoforms "data/ftp.flybase.net/releases/current/precomputed_files... | |||
(file-name fbal_to_fbgn "data/ftp.flybase.net/releases/current/precomputed_files/alleles/fbal_to_fbgn_fb_2023_04.tsv")) |   ( (file-name fbal_to_fbgn "data/ftp.flybase.net/releases/current/precomputed_files/alleles/fbal_to... | |||
(file-name fbgn_annotation_ID "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_annotation_ID_fb_2023_04.tsv")) |   ( (file-name fbgn_annotation_ID "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbg... | |||
(file-name fbgn_annotation_ID "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_annotation_ID.tsv")) |   ( (file-name fbgn_annotation_ID "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbg... | |||
(file-name fbgn_exons2affy1_overlaps "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_exons2affy1_overlaps.tsv")) |   ( (file-name fbgn_exons2affy1_overlaps "data/ftp.flybase.net/releases/current/precomputed_files/ge... | |||
(file-name fbgn_exons2affy2_overlaps "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_exons2affy2_overlaps.tsv")) |   ( (file-name fbgn_exons2affy2_overlaps "data/ftp.flybase.net/releases/current/precomputed_files/ge... | |||
(file-name fbgn_fbtr_fbpp "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_fb_2023_04.tsv")) |   ( (file-name fbgn_fbtr_fbpp "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fb... | |||
(file-name fbgn_fbtr_fbpp_expanded "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_expanded_fb_2023_04.tsv")) |   ( (file-name fbgn_fbtr_fbpp_expanded "data/ftp.flybase.net/releases/current/precomputed_files/gene... | |||
(file-name fbgn_gleanr "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_gleanr_fb_2023_04.tsv")) |   ( (file-name fbgn_gleanr "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_glean... | |||
(file-name fbgn_NAseq_Uniprot "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_NAseq_Uniprot_fb_2023_04.tsv")) |   ( (file-name fbgn_NAseq_Uniprot "data/ftp.flybase.net/releases/current/precomputed_files/genes/fbg... | |||
(file-name fbgn_uniprot "data/ftp.flybase.net/releases/current/precomputed_files/collaborators/fbgn_uniprot_fb_2023_04.tsv")) |   ( (file-name fbgn_uniprot "data/ftp.flybase.net/releases/current/precomputed_files/collaborators/f... | |||
(file-name fu_gal4_table_ "data/ftp.flybase.net/releases/current/precomputed_files/insertions/fu_gal4_table_fb_2023_04.json")) |   ( (file-name fu_gal4_table_ "data/ftp.flybase.net/releases/current/precomputed_files/insertions/fu... | |||
(file-name gene_associatio "data/ftp.flybase.net/releases/current/precomputed_files/go/gene_association.fb")) |   ( (file-name gene_associatio "data/ftp.flybase.net/releases/current/precomputed_files/go/gene_asso... | |||
(file-name gene_functional_complementation "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_functional_complementation_fb_2023_04.tsv")) |   ( (file-name gene_functional_complementation "data/ftp.flybase.net/releases/current/precomputed_fi... | |||
(file-name gene_genetic_interactions "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_genetic_interactions_fb_2023_04.tsv")) |   ( (file-name gene_genetic_interactions "data/ftp.flybase.net/releases/current/precomputed_files/ge... | |||
(file-name gene_group_data "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_group_data_fb_2023_04.tsv")) |   ( (file-name gene_group_data "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_g... | |||
(file-name gene_groups_HGNC "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_groups_HGNC_fb_2023_04.tsv")) |   ( (file-name gene_groups_HGNC "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_... | |||
(file-name gene_map_table "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_map_table_fb_2023_04.tsv")) |   ( (file-name gene_map_table "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_ma... | |||
(file-name gene_rpkm_matrix "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_rpkm_matrix_fb_2023_04.tsv")) |   ( (file-name gene_rpkm_matrix "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_... | |||
(file-name gene_rpkm_report "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_rpkm_report_fb_2023_04.tsv")) |   ( (file-name gene_rpkm_report "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_... | |||
(file-name gene_snapshots "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_snapshots_fb_2023_04.tsv")) |   ( (file-name gene_snapshots "data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_sn... | |||
(file-name genome-cyto-seq "data/ftp.flybase.net/releases/current/precomputed_files/map_conversion/genome-cyto-seq.txt")) |   ( (file-name genome-cyto-seq "data/ftp.flybase.net/releases/current/precomputed_files/map_conversi... | |||
(file-name genomic_clone_data "data/ftp.flybase.net/releases/current/precomputed_files/clones/genomic_clone_data_fb_2023_04.tsv")) |   ( (file-name genomic_clone_data "data/ftp.flybase.net/releases/current/precomputed_files/clones/ge... | |||
(file-name genotype_phenotype_data "data/ftp.flybase.net/releases/current/precomputed_files/alleles/genotype_phenotype_data_fb_2023_04.tsv")) |   ( (file-name genotype_phenotype_data "data/ftp.flybase.net/releases/current/precomputed_files/alle... | |||
(file-name gp_informatio "data/ftp.flybase.net/releases/current/precomputed_files/collaborators/gp_information.fb")) |   ( (file-name gp_informatio "data/ftp.flybase.net/releases/current/precomputed_files/collaborators/... | |||
(file-name insertion_mapping "data/ftp.flybase.net/releases/current/precomputed_files/insertions/insertion_mapping_fb_2023_04.tsv")) |   ( (file-name insertion_mapping "data/ftp.flybase.net/releases/current/precomputed_files/insertions... | |||
(file-name ncRNA_genes_ "data/ftp.flybase.net/releases/current/precomputed_files/genes/ncRNA_genes_fb_2023_04.json")) |   ( (file-name ncRNA_genes_ "data/ftp.flybase.net/releases/current/precomputed_files/genes/ncRNA_gen... | |||
(file-name pathway_group_data "data/ftp.flybase.net/releases/current/precomputed_files/genes/pathway_group_data_fb_2023_04.tsv")) |   ( (file-name pathway_group_data "data/ftp.flybase.net/releases/current/precomputed_files/genes/pat... | |||
(file-name physical_interactions_mitab "data/ftp.flybase.net/releases/current/precomputed_files/genes/physical_interactions_mitab_fb_2023_04.tsv")) |   ( (file-name physical_interactions_mitab "data/ftp.flybase.net/releases/current/precomputed_files/... | |||
(file-name pmid_fbgn_uniprot "data/ftp.flybase.net/releases/current/precomputed_files/collaborators/pmid_fbgn_uniprot_fb_2023_04.tsv")) |   ( (file-name pmid_fbgn_uniprot "data/ftp.flybase.net/releases/current/precomputed_files/collaborat... | |||
(file-name scRNA-Seq_gene_expression "data/ftp.flybase.net/releases/current/precomputed_files/genes/scRNA-Seq_gene_expression_fb_2023_04.tsv")) |   ( (file-name scRNA-Seq_gene_expression "data/ftp.flybase.net/releases/current/precomputed_files/ge... | |||
(file-name sed5C "data/ftp.flybase.net/releases/current/precomputed_files/genes/sed5CWUTK")) |   ( (file-name sed5C "data/ftp.flybase.net/releases/current/precomputed_files/genes/sed5CWUTK")) | |||
(file-name sednJ "data/ftp.flybase.net/releases/current/precomputed_files/genes/sednJUylZ")) |   ( (file-name sednJ "data/ftp.flybase.net/releases/current/precomputed_files/genes/sednJUylZ")) | |||
(FlattenedColDist))) |   (Red) | |||
(FlattenedColDist))) |   (Red) | |||
(FlattenedHybridDist))) |   (True) | |||
(FlattenedHybridDist))) |   (True) | |||
(get-atoms &belief_events))) | () | |||
(get-atoms &belief_events))) | () | |||
(get-atoms &belief_events))) | () | |||
(get-atoms &belief_events))) | () | |||
(get-data $K) $V) $K))) |   (k-0) | |||
(get-data $K) $V) $K))) |   (k-1) | |||
(get-data $K) $V) $K))) |   (k-2) | |||
(get-data $K) $V) $K))) |   (k-3) | |||
(get-data $K) $V) $K))) |   (k-4) | |||
(get-data $K) $V) $K))) |   (k-5) | |||
(get-data $K) $V) $K))) |   (k-6) | |||
(get-data $K) $V) $K))) |   (k-7) | |||
(get-data $K) $V) $K))) |   (k-8) | |||
(get-data $K) $V) $K))) |   (k-9) | |||
(get-data k-7) $V) $V))) |   (v-7) | |||
(get-state $V)))) |   (v-1) | |||
(get-state $V))) |   (v-7) | |||
(get-state &fail)) |   (:uncalled) | |||
(get-state &fail)) |   (:uncalled) | |||
(get-state &pass)) |   (:uncalled) | |||
(get-state &pass)) |   (:uncalled) | |||
(get-type &belief_events))) |   ( (" (get-type &belief_events) => " hyperon::space::DynSpace)) | |||
(HybridDist))) |   (True) | |||
(HybridDist))) |   (True) | |||
(if $Res $X ... |   (2) | |||
(ifactorial 5)) |   (120) | |||
(ifib 7)) |   (13) | |||
(integral cube 0 1 0.1)) | () | |||
(integral-simpson cube 0 1 10)) | () | |||
(jw_pivalue 5)) | () | |||
(new-entry! k-0 v-0)) | () | |||
(new-entry! k-1 v-1)) | () | |||
(new-entry! k-2 v-2)) | () | |||
(new-entry! k-3 v-3)) | () | |||
(new-entry! k-4 v-4)) | () | |||
(new-entry! k-5 v-5)) | () | |||
(new-entry! k-6 v-6)) | () | |||
(new-entry! k-7 v-7)) | () | |||
(new-entry! k-8 v-8)) | () | |||
(new-entry! k-9 v-9)) | () | |||
(new-named-space Linkspace)) | () | |||
(new-named-space Linkspace)) | () | |||
(new-named-space Xspace)) | () | |||
(new-named-space Xspace)) | () | |||
(new-named-space Yspace)) | () | |||
(new-named-space Yspace)) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-space))) | () | |||
(new-state ()))) | () | |||
(new-state ()))) | () | |||
(new-state ()))) | () | |||
(new-state ()))) | () | |||
(new-state ()))) | () | |||
(new-state 0))) | () | |||
(new-state 0))) | () | |||
(new-state 0))) | () | |||
(new-state 0))) | () | |||
(new-state 0))) | () | |||
(new-state 0))) | () | |||
(new-state 1))) | () | |||
(new-state 1))) | () | |||
(new-state 1))) | () | |||
(new-state 1))) | () | |||
(new-state 1))) | () | |||
(new-state 1))) | () | |||
(new-state 1))) | () | |||
(new-state 1))) | () | |||
(new-state 1))) | () | |||
(new-state 1))) | () | |||
(new-state 1))) | () | |||
(new-state 1))) | () | |||
(new-state False))) | () | |||
(new-state False))) | () | |||
(new-state False))) | () | |||
(new-state False))) | () | |||
(new-state False))) | () | |||
(new-state Nil))) | () | |||
(new-state Nil))) | () | |||
(new-state Nil))) | () | |||
(new-state Nil))) | () | |||
(new-state Nil))) | () | |||
(new-state Nil))) | () | |||
(new-state :uncalled))) | () | |||
(new-state :uncalled))) | () | |||
(p))) |   (0) | |||
(pass-or-False-f)) |   ( (pass-or-False-f)) | |||
(pi-raccsum 1 10))) | () | |||
(pi-sum 1 50))) | () | |||
(pragma! compiler full)) | () | |||
(pragma! tracelen 20)) | () | |||
(pragma! trace-on-error True)) | () | |||
(pragma! trace-on-False True)) | () | |||
(pragma! trace-on-False True)) | () | |||
(pragma! trace-on-overflow True)) | () | |||
(pragma! trace-on-pass False)) | () | |||
(pragma! trace-on-pass True)) | () | |||
(rfactorial 6)) |   (720) | |||
(SecondOrderColDist))) |   ( (thunk Red)) | |||
(SecondOrderColDist))) |   ( (thunk Red)) | |||
(SecondOrderHybridDist))) |   ( (thunk True)) | |||
(SecondOrderHybridDist))) |   ( (thunk True)) | |||
(set-False)))) | () | |||
("sheep see")) |   ( ("sheep see")) | |||
("sheep see")) |   ( ("sheep see")) | |||
( ( (S I) I) a)) |   ( (a a)) | |||
(solve start goal)) |   (True) | |||
(sqr 21)) |   (441) | |||
(sqr 3))) |   (81) | |||
(sqrt 9)) |   (3.00009155413138) | |||
(sum-cubes 1 10)) |   (3025) | |||
(sum-integers 1 10)) |   (55) | |||
(sum-of-squares 3 4)) |   (25) | |||
(True True True False))) |   (False) | |||
(U a)) |   ( (a a)) | |||
(extend-py! additional_funcs)) |   ( (extend-py! additional_funcs)) | () |||
(hanoi_test)) | () | () |||
(hanoi_test)) | () | () |||
(pi-raccsum 1 10))) | () | () |||
(pragma! compile full)) | () | () |||
(pragma! compile full)) | () | () |||
(pragma! compile full)) | () | () |||
(pragma! compile full)) | () | () |||
(rfactorial 6)) |   (720) | () |||
(sum-cubes 1 10)) |   (3025) | () |||
| FAIL | [COMBINATOR-LOGIC-EXPERIMENTS.Y-COMB-EXAMPLES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_120268.metta.html#COMBINATOR-LOGIC-EXPERIMENTS.Y-COMB-EXAMPLES.01) |   (assertEqual ||
| FAIL | [COMBINATOR-LOGIC-EXPERIMENTS.Y-COMB-EXAMPLES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_359918.metta.html#COMBINATOR-LOGIC-EXPERIMENTS.Y-COMB-EXAMPLES.02) |   (assertEqual ||
| FAIL | [COMBINATOR-LOGIC-EXPERIMENTS.Y-COMB-EXAMPLES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_319020.metta.html#COMBINATOR-LOGIC-EXPERIMENTS.Y-COMB-EXAMPLES.03) |   (assertEqual ||
| PASS | [COMBINATOR-LOGIC-EXPERIMENTS.Y-COMB-EXAMPLES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_444674.metta.html#COMBINATOR-LOGIC-EXPERIMENTS.Y-COMB-EXAMPLES.04) |   (assertEqual ||
| PASS | [COMBINATOR-LOGIC-EXPERIMENTS.Y-COMB-EXAMPLES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_86164.metta.html#COMBINATOR-LOGIC-EXPERIMENTS.Y-COMB-EXAMPLES.05) |   (assertEqual ||
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/00a_lang_compiled_case.metta.html#COMPILER.00A-LANG-COMPILED-CASE.01) |   (assertEqualToResult ||
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/00a_lang_compiled_case.metta.html#COMPILER.00A-LANG-COMPILED-CASE.02) |   (assertEqual ||
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/00a_lang_compiled_case.metta.html#COMPILER.00A-LANG-COMPILED-CASE.03) |   (assertEqual ||
| PASS | [COMPILER.00A-LANG-COMPILED-CASE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/00a_lang_compiled_case.metta.html#COMPILER.00A-LANG-COMPILED-CASE.04) |   (assertEqual ||
| PASS | [COMPILER.DEFINE-IF-LIKE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/define_if_like.metta.html#COMPILER.DEFINE-IF-LIKE.01) |   (assertEqualToResult ||
| PASS | [COMPILER.DEFINE-IF-LIKE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/define_if_like.metta.html#COMPILER.DEFINE-IF-LIKE.02) |   (assertEqualToResult ||
| PASS | [COMPILER.DEFINE-IF-LIKE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/define_if_like.metta.html#COMPILER.DEFINE-IF-LIKE.03) |   (assertEqualToResult ||
| PASS | [COMPILER.DEFINE-IF-LIKE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/define_if_like.metta.html#COMPILER.DEFINE-IF-LIKE.04) |   (assertEqual pass-or-False) |   (:pass) | 
| FAIL | [COMPILER.DEFINE-IF-LIKE.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/define_if_like.metta.html#COMPILER.DEFINE-IF-LIKE.05) |   (assertEqual ||
| PASS | [COMPILER.DEFINE-IF-LIKE.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/define_if_like.metta.html#COMPILER.DEFINE-IF-LIKE.06) |   (assertEqual ||
| FAIL | [COMPILER.DEFINE-IF-LIKE.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/define_if_like.metta.html#COMPILER.DEFINE-IF-LIKE.07) |   (assertEqual ||
| PASS | [COMPILER.DEFINE-IF-LIKE.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/define_if_like.metta.html#COMPILER.DEFINE-IF-LIKE.08) |   (assertEqual ||
| PASS | [COMPILER.DEFINE-IF-LIKE.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/compiler/define_if_like.metta.html#COMPILER.DEFINE-IF-LIKE.09) |   (assertEqual ||
| PASS | [CURRENT.TESTS0.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.01) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS0.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.02) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS0.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.03) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS0.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.04) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS0.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.05) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS0.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.06) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS0.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.07) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS0.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.08) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS0.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.09) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS0.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.10) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS0.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.11) |   (assertEqualToResult ||
| FAIL | [CURRENT.TESTS0.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.12) |   (assertEqual ||
| FAIL | [CURRENT.TESTS0.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.13) |   (assertEqualToResult ||
| FAIL | [CURRENT.TESTS0.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.14) |   (assertEqualToResult ||
| FAIL | [CURRENT.TESTS0.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.15) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS0.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.16) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS0.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.17) |   (assertEqualToResult ||
| FAIL | [CURRENT.TESTS0.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.18) |   (assertEqualToResult ||
| FAIL | [CURRENT.TESTS0.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests0.metta.html#CURRENT.TESTS0.19) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS1.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests1.metta.html#CURRENT.TESTS1.01) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS1.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests1.metta.html#CURRENT.TESTS1.02) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS1.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests1.metta.html#CURRENT.TESTS1.03) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS1.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests1.metta.html#CURRENT.TESTS1.04) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS1.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests1.metta.html#CURRENT.TESTS1.05) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS1.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests1.metta.html#CURRENT.TESTS1.06) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS1.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests1.metta.html#CURRENT.TESTS1.07) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS1.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests1.metta.html#CURRENT.TESTS1.08) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS2.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests2.metta.html#CURRENT.TESTS2.01) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS2.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests2.metta.html#CURRENT.TESTS2.02) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS2.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests2.metta.html#CURRENT.TESTS2.03) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS2.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests2.metta.html#CURRENT.TESTS2.04) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS2.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests2.metta.html#CURRENT.TESTS2.05) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS2.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests2.metta.html#CURRENT.TESTS2.06) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS2.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests2.metta.html#CURRENT.TESTS2.07) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS2.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests2.metta.html#CURRENT.TESTS2.08) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS2.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests2.metta.html#CURRENT.TESTS2.09) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS2.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests2.metta.html#CURRENT.TESTS2.10) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS2.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests2.metta.html#CURRENT.TESTS2.11) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS3.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests3.metta.html#CURRENT.TESTS3.01) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS3.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests3.metta.html#CURRENT.TESTS3.02) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS3.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests3.metta.html#CURRENT.TESTS3.03) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS3.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests3.metta.html#CURRENT.TESTS3.04) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS3.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests3.metta.html#CURRENT.TESTS3.05) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS3.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests3.metta.html#CURRENT.TESTS3.06) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS3.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests3.metta.html#CURRENT.TESTS3.07) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS3.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests3.metta.html#CURRENT.TESTS3.08) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS3.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests3.metta.html#CURRENT.TESTS3.09) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS3.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests3.metta.html#CURRENT.TESTS3.10) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS3.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests3.metta.html#CURRENT.TESTS3.11) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS4.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests4.metta.html#CURRENT.TESTS4.01) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS4.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests4.metta.html#CURRENT.TESTS4.02) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS4.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests4.metta.html#CURRENT.TESTS4.03) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS4.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests4.metta.html#CURRENT.TESTS4.04) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS4.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests4.metta.html#CURRENT.TESTS4.05) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS4.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests4.metta.html#CURRENT.TESTS4.06) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS4.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests4.metta.html#CURRENT.TESTS4.07) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS4.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests4.metta.html#CURRENT.TESTS4.08) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS4.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests4.metta.html#CURRENT.TESTS4.09) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS4.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests4.metta.html#CURRENT.TESTS4.10) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS4.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests4.metta.html#CURRENT.TESTS4.11) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS5.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests5.metta.html#CURRENT.TESTS5.01) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS5.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests5.metta.html#CURRENT.TESTS5.02) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS5.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests5.metta.html#CURRENT.TESTS5.03) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS5.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests5.metta.html#CURRENT.TESTS5.04) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS5.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests5.metta.html#CURRENT.TESTS5.05) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS5.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests5.metta.html#CURRENT.TESTS5.06) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS5.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests5.metta.html#CURRENT.TESTS5.07) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS5.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests5.metta.html#CURRENT.TESTS5.08) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS5.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests5.metta.html#CURRENT.TESTS5.09) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS5.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests5.metta.html#CURRENT.TESTS5.10) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS5.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests5.metta.html#CURRENT.TESTS5.11) |   (assertEqualToResult ||
| PASS | [CURRENT.TESTS5.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/current/tests5.metta.html#CURRENT.TESTS5.12) |   (assertEqualToResult ||
| FAIL | [EXAMPLES.EXPRESSION.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_47068.metta.html#EXAMPLES.EXPRESSION.02) |   (assertEqualToResult ||
| FAIL | [EXAMPLES.EXPRESSION.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_366106.metta.html#EXAMPLES.EXPRESSION.03) |   (assertEqualToResult ||
| FAIL | [EXAMPLES.EXPRESSION.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_160004.metta.html#EXAMPLES.EXPRESSION.04) |   (assertEqualToResult ||
| FAIL | [EXAMPLES.EXPRESSION.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_127694.metta.html#EXAMPLES.EXPRESSION.05) |   (assertEqualToResult ||
| PASS | [EXAMPLES.EXPRESSION.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_305052.metta.html#EXAMPLES.EXPRESSION.06) |   (assertEqualToResult ||
| FAIL | [EXAMPLES.EXPRESSION.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_413860.metta.html#EXAMPLES.EXPRESSION.07) |   (assertEqualToResult ||
| FAIL | [FEATURES.REVERSE-ARITHMETIC.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/reverse-arithmetic.metta.html#FEATURES.REVERSE-ARITHMETIC.01) |   (assertEqual ||
| FAIL | [FEATURES.REVERSE-ARITHMETIC.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/features/reverse-arithmetic.metta.html#FEATURES.REVERSE-ARITHMETIC.02) |   (assertEqual ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.01) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.02) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.03) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.04) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.05) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.06) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.07) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.08) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.09) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.10) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.11) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.12) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.13) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.14) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.15) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.16) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.17) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.18) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.19) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.20) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.21) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.22) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.23) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.24](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.24) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.25](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.25) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.26](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.26) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.27](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.27) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.28](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.28) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.29](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.29) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.30](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.30) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.31](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.31) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.32](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.32) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.33](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.33) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.34](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.34) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.35](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.35) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.36](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.36) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.37](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.37) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.38](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.38) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.39](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.39) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.40](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.40) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.41](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.41) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.42](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.42) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.43](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.43) |   (assertEqualToResult ||
| PASS | [FLYBASE.FLYBASE-DEDUCED.44](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/flybase/flybase-deduced.metta.html#FLYBASE.FLYBASE-DEDUCED.44) |   (assertEqualToResult ||
| PASS | [LOGIC.ALL-ANY.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_393264.metta.html#LOGIC.ALL-ANY.01) |   (assertEqualToResult ||
| PASS | [LOGIC.ALL-ANY.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_491156.metta.html#LOGIC.ALL-ANY.02) |   (assertEqualToResult ||
| FAIL | [LOGIC.MEMB.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_130904.metta.html#LOGIC.MEMB.01) |   (assertEqualToResult ||
| FAIL | [LOGIC.PUZZLE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_471224.metta.html#LOGIC.PUZZLE.01) |   (assertEqualToResult ||
| PASS | [NARS-EXTRAS.NARS-BUILDTUPLECOUNTS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_extras/NARS_BuildTupleCounts.metta.html#NARS-EXTRAS.NARS-BUILDTUPLECOUNTS.01) |   (assertEqualToResult ||
| FAIL | [NARS-EXTRAS.RUN-MINNARS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_extras/RUN_minnars.metta.html#NARS-EXTRAS.RUN-MINNARS.01) |   (assertEqual ||
| FAIL | [NARS-EXTRAS.RUN-MINNARS-TRIMMED.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_extras/RUN_minnars_trimmed.metta.html#NARS-EXTRAS.RUN-MINNARS-TRIMMED.01) |   (assertEqualToResult ||
| PASS | [NARS-V0.TESTS0.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests0.metta.html#NARS-V0.TESTS0.01) |   (assertEqualToResult ||
| PASS | [NARS-V0.TESTS0.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests0.metta.html#NARS-V0.TESTS0.02) |   (assertEqualToResult ||
| PASS | [NARS-V0.TESTS0.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests0.metta.html#NARS-V0.TESTS0.03) |   (bind! &FIFO) | () | 
| FAIL | [NARS-V0.TESTS0.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests0.metta.html#NARS-V0.TESTS0.04) |   (assertEqualToResult ||
| FAIL | [NARS-V0.TESTS0.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests0.metta.html#NARS-V0.TESTS0.05) |   (assertEqualToResult ||
| FAIL | [NARS-V0.TESTS0.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests0.metta.html#NARS-V0.TESTS0.06) |   (assertEqualToResult ||
| PASS | [NARS-V0.TESTS0.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests0.metta.html#NARS-V0.TESTS0.07) |   (assertEqualToResult ||
| PASS | [NARS-V0.TESTS0.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests0.metta.html#NARS-V0.TESTS0.08) |   (assertEqualToResult ||
| FAIL | [NARS-V0.TESTS0.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests0.metta.html#NARS-V0.TESTS0.09) |   (assertEqualToResult ||
| FAIL | [NARS-V0.TESTS0.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests0.metta.html#NARS-V0.TESTS0.10) |   (assertEqualToResult ||
| PASS | [NARS-V0.TESTS1.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests1.metta.html#NARS-V0.TESTS1.01) |   (assertEqualToResult ||
| PASS | [NARS-V0.TESTS1.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests1.metta.html#NARS-V0.TESTS1.02) |   (bind! &FIFO) | () | 
| PASS | [NARS-V0.TESTS1.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests1.metta.html#NARS-V0.TESTS1.03) |   (assertEqualToResult ||
| PASS | [NARS-V0.TESTS1.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests1.metta.html#NARS-V0.TESTS1.04) |   (assertEqualToResult ||
| PASS | [NARS-V0.TESTS1.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests1.metta.html#NARS-V0.TESTS1.05) |   (assertEqualToResult ||
| PASS | [NARS-V0.TESTS1.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests1.metta.html#NARS-V0.TESTS1.06) |   (assertEqualToResult ||
| PASS | [NARS-V0.TESTS1.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests1.metta.html#NARS-V0.TESTS1.07) |   (assertEqualToResult ||
| FAIL | [NARS-V0.TESTS1.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests1.metta.html#NARS-V0.TESTS1.08) |   (assertEqual ||
| PASS | [NARS-V0.TESTS2.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests2.metta.html#NARS-V0.TESTS2.01) |   (bind! &FIFO) | () | 
| PASS | [NARS-V0.TESTS3.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests3.metta.html#NARS-V0.TESTS3.01) |   (bind! &FIFO) | () | 
| PASS | [NARS-V0.TESTS4.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests4.metta.html#NARS-V0.TESTS4.01) |   (bind! &FIFO) | () | 
| PASS | [NARS-V0.TESTS5.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/nars_v0/tests5.metta.html#NARS-V0.TESTS5.01) |   (bind! &FIFO) | () | 
| PASS | [NEW.TESTS0.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests0.metta.html#NEW.TESTS0.01) |   (bind! &FIFO) | () | 
| FAIL | [NEW.TESTS0.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests0.metta.html#NEW.TESTS0.02) |   (assertEqualToResult ||
| FAIL | [NEW.TESTS0.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests0.metta.html#NEW.TESTS0.03) |   (assertEqualToResult ||
| FAIL | [NEW.TESTS0.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests0.metta.html#NEW.TESTS0.04) |   (assertEqualToResult ||
| PASS | [NEW.TESTS0.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests0.metta.html#NEW.TESTS0.05) |   (assertEqualToResult ||
| PASS | [NEW.TESTS0.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests0.metta.html#NEW.TESTS0.06) |   (assertEqualToResult ||
| FAIL | [NEW.TESTS0.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests0.metta.html#NEW.TESTS0.07) |   (assertEqualToResult ||
| FAIL | [NEW.TESTS0.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests0.metta.html#NEW.TESTS0.08) |   (assertEqualToResult ||
| PASS | [NEW.TESTS1.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests1.metta.html#NEW.TESTS1.01) |   (bind! &FIFO) | () | 
| FAIL | [NEW.TESTS1.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests1.metta.html#NEW.TESTS1.02) |   (assertEqual ||
| PASS | [NEW.TESTS2.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests2.metta.html#NEW.TESTS2.01) |   (bind! &FIFO) | () | 
| PASS | [NEW.TESTS3.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests3.metta.html#NEW.TESTS3.01) |   (bind! &FIFO) | () | 
| PASS | [NEW.TESTS4.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests4.metta.html#NEW.TESTS4.01) |   (bind! &FIFO) | () | 
| PASS | [NEW.TESTS5.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests5.metta.html#NEW.TESTS5.01) |   (bind! &FIFO) | () | 
| PASS | [NEW.TESTS5.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/new/tests5.metta.html#NEW.TESTS5.02) |   (assertEqualToResult ||
| FAIL | [PERFORMANCE.FACTORIAL.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/factorial.metta.html#PERFORMANCE.FACTORIAL.01) |   (assertEqual 120) |   (120) | () |
| PASS | [PERFORMANCE.FIBO-AS-PRED.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/fibo-as-pred.metta.html#PERFORMANCE.FIBO-AS-PRED.01) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.FWGC1.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/fwgc1.metta.html#PERFORMANCE.FWGC1.01) |   (assertEqual ||
| PASS | [PERFORMANCE.HANOI-ONE-SPACE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/hanoi-one-space.metta.html#PERFORMANCE.HANOI-ONE-SPACE.01) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.HANOI-PEG-SPACE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/hanoi-peg-space.metta.html#PERFORMANCE.HANOI-PEG-SPACE.01) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.01) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.02) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.03) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.04) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.05) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.06) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.07) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.08) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.09) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.10) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.11) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.12) |   (assertEqual ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.13) |   (assertEqual ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.14) |   (assertEqual ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.15) |   (assertEqual ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.16) |   (assertEqual ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.17) |   (assertEqual ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.18) |   (assertEqual ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.19) |   (assertEqual ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.20) |   (assertEqual ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.21) |   (assertEqual ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.22) |   (assertEqual ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.23) |   (assertEqual ||
| PASS | [PERFORMANCE.KEY-LOOKUPS-MANY.24](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/key-lookups-many.metta.html#PERFORMANCE.KEY-LOOKUPS-MANY.24) |   (assertEqual ||
| PASS | [PERFORMANCE.PATHFINDING-EASY.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/pathfinding-easy.metta.html#PERFORMANCE.PATHFINDING-EASY.01) |   (assertEqualToResult ||
| PASS | [PERFORMANCE.PATHFINDING-EASY-F.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/pathfinding-easy-f.metta.html#PERFORMANCE.PATHFINDING-EASY-F.01) |   (assertEqualToResult ||
| FAIL | [PREV.TESTS0.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests0.metta.html#PREV.TESTS0.01) |   (assertEqualToResult ||
| FAIL | [PREV.TESTS0.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests0.metta.html#PREV.TESTS0.02) |   (assertEqualToResult ||
| FAIL | [PREV.TESTS0.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests0.metta.html#PREV.TESTS0.03) |   (assertEqualToResult ||
| PASS | [PREV.TESTS0.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests0.metta.html#PREV.TESTS0.04) |   (assertEqualToResult ||
| PASS | [PREV.TESTS0.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests0.metta.html#PREV.TESTS0.05) |   (assertEqualToResult ||
| FAIL | [PREV.TESTS0.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests0.metta.html#PREV.TESTS0.06) |   (assertEqualToResult ||
| FAIL | [PREV.TESTS0.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests0.metta.html#PREV.TESTS0.07) |   (assertEqualToResult ||
| FAIL | [PREV.TESTS1.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/nars/prev/tests1.metta.html#PREV.TESTS1.01) |   (assertEqual ||
| FAIL | [PROB-DEP-TYPES.INF-ORDER-PROBS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_286502.metta.html#PROB-DEP-TYPES.INF-ORDER-PROBS.01) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.INF-ORDER-PROBS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_291074.metta.html#PROB-DEP-TYPES.INF-ORDER-PROBS.02) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.INF-ORDER-PROBS.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_509918.metta.html#PROB-DEP-TYPES.INF-ORDER-PROBS.03) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.INF-ORDER-PROBS.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_347516.metta.html#PROB-DEP-TYPES.INF-ORDER-PROBS.04) |   (assertEqualToResult ||
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_46668.metta.html#PROB-DEP-TYPES.INF-ORDER-PROBS.05) |   (assertEqualToResult ||
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_191096.metta.html#PROB-DEP-TYPES.INF-ORDER-PROBS.06) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.INF-ORDER-PROBS.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_285046.metta.html#PROB-DEP-TYPES.INF-ORDER-PROBS.07) |   (assertEqualToResult ||
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_333306.metta.html#PROB-DEP-TYPES.INF-ORDER-PROBS.08) |   (assertEqualToResult ||
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_442422.metta.html#PROB-DEP-TYPES.INF-ORDER-PROBS.09) |   (assertEqualToResult ||
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_32186.metta.html#PROB-DEP-TYPES.INF-ORDER-PROBS.10) |   (assertEqualToResult ||
| PASS | [PROB-DEP-TYPES.INF-ORDER-PROBS.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_146438.metta.html#PROB-DEP-TYPES.INF-ORDER-PROBS.11) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_227896.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.01) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_465508.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.02) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_315614.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.03) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_77916.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.04) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_196612.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.05) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_277558.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.06) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_27642.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.07) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_275458.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.08) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_517806.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.09) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_510182.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.10) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_52748.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.11) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_9842.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.12) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_198812.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.13) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_360636.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.14) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_55386.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.15) |   (assertEqualToResult ||
| FAIL | [PROB-DEP-TYPES.PROB-DEP-TYPES.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_301714.metta.html#PROB-DEP-TYPES.PROB-DEP-TYPES.16) |   (assertEqualToResult ||
| PASS | [SICP-BOOK.CHAPTER-1-1.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_332528.metta.html#SICP-BOOK.CHAPTER-1-1.01) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_465860.metta.html#SICP-BOOK.CHAPTER-1-1.02) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_94494.metta.html#SICP-BOOK.CHAPTER-1-1.03) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_281260.metta.html#SICP-BOOK.CHAPTER-1-1.04) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_25532.metta.html#SICP-BOOK.CHAPTER-1-1.05) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_247410.metta.html#SICP-BOOK.CHAPTER-1-1.06) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_422726.metta.html#SICP-BOOK.CHAPTER-1-1.07) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_90854.metta.html#SICP-BOOK.CHAPTER-1-1.08) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_58254.metta.html#SICP-BOOK.CHAPTER-1-1.09) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_482350.metta.html#SICP-BOOK.CHAPTER-1-1.10) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_311634.metta.html#SICP-BOOK.CHAPTER-1-1.11) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_148036.metta.html#SICP-BOOK.CHAPTER-1-1.12) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_472778.metta.html#SICP-BOOK.CHAPTER-1-1.13) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_383100.metta.html#SICP-BOOK.CHAPTER-1-1.14) |   (assertEqual ||
| FAIL | [SICP-BOOK.CHAPTER-1-1.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_60940.metta.html#SICP-BOOK.CHAPTER-1-1.15) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-1.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_370960.metta.html#SICP-BOOK.CHAPTER-1-1.16) |   (assertEqualToResult ||
| PASS | [SICP-BOOK.CHAPTER-1-1.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_501788.metta.html#SICP-BOOK.CHAPTER-1-1.17) |   (assertEqual ||
| FAIL | [SICP-BOOK.CHAPTER-1-2.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_375248.metta.html#SICP-BOOK.CHAPTER-1-2.01) |   (assertEqualToResult ||
| PASS | [SICP-BOOK.CHAPTER-1-2.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_518110.metta.html#SICP-BOOK.CHAPTER-1-2.02) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-2.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_145020.metta.html#SICP-BOOK.CHAPTER-1-2.03) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-2.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_137914.metta.html#SICP-BOOK.CHAPTER-1-2.04) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-2.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_173388.metta.html#SICP-BOOK.CHAPTER-1-2.05) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-3.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_265898.metta.html#SICP-BOOK.CHAPTER-1-3.01) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-3.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_126248.metta.html#SICP-BOOK.CHAPTER-1-3.02) |   (assertEqual ||
| FAIL | [SICP-BOOK.CHAPTER-1-3.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_307726.metta.html#SICP-BOOK.CHAPTER-1-3.03) |   (assertEqual ||
| FAIL | [SICP-BOOK.CHAPTER-1-3.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_430006.metta.html#SICP-BOOK.CHAPTER-1-3.04) |   (assertEqual ||
| FAIL | [SICP-BOOK.CHAPTER-1-3.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_366572.metta.html#SICP-BOOK.CHAPTER-1-3.05) |   (assertEqual ||
| FAIL | [SICP-BOOK.CHAPTER-1-3.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_267886.metta.html#SICP-BOOK.CHAPTER-1-3.06) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-3.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_367696.metta.html#SICP-BOOK.CHAPTER-1-3.07) |   (assertEqual ||
| FAIL | [SICP-BOOK.CHAPTER-1-3.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_199746.metta.html#SICP-BOOK.CHAPTER-1-3.08) |   (assertEqual ||
| FAIL | [SICP-BOOK.CHAPTER-1-3.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_8948.metta.html#SICP-BOOK.CHAPTER-1-3.09) |   (assertEqual ||
| FAIL | [SICP-BOOK.CHAPTER-1-3.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_259926.metta.html#SICP-BOOK.CHAPTER-1-3.10) |   (assertEqual ||
| PASS | [SICP-BOOK.CHAPTER-1-3.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/_358434.metta.html#SICP-BOOK.CHAPTER-1-3.11) |   (assertEqual ||
| PASS | [UTILS.MINERUTILS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/hyperon-miner/utils/MinerUtils.metta.html#UTILS.MINERUTILS.01) |   (assertEqualToResult ||
| PASS | [UTILS.MINERUTILS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/hyperon-miner/utils/MinerUtils.metta.html#UTILS.MINERUTILS.01) |   (assertEqualToResult ||
| PASS | [UTILS.MINERUTILS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/hyperon-miner/utils/MinerUtils.metta.html#UTILS.MINERUTILS.02) |   (assertEqualToResult ||
| PASS | [UTILS.MINERUTILS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/hyperon-miner/utils/MinerUtils.metta.html#UTILS.MINERUTILS.02) |   (assertEqualToResult ||
| PASS | [UTILS.MINERUTILS.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/hyperon-miner/utils/MinerUtils.metta.html#UTILS.MINERUTILS.03) |   (assertEqualToResult ||
| PASS | [UTILS.MINERUTILS.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/extended_compat/hyperon-miner/utils/MinerUtils.metta.html#UTILS.MINERUTILS.03) |   (assertEqualToResult ||




Test Results:
220 Passed,
71 Failed,
291 Total,
75.60% Passed
 
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


