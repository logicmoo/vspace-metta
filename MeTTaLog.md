# MeTTaLog: An Implementation of MeTTa in Prolog

MeTTaLog is a superfluous implementaiton of MeTTa, a language designed to succeed OpenCog Classic Atomese.  It is part of the OpenCog Hyperon initiative and provides well-defined semantics for meta-language features, different types of inference, and more.

Jump to [MeTTaLog Installation Guide](https://github.com/logicmoo/vspace-metta/blob/main/MeTTaLog.md#installation-guide)

# Bugs in MeTTaLog

| Pass | Fail |Percent| Directory                                        |
|------|------|-------|--------------------------------------------------|
|    66|     5|    92%| reports/cuRRent/interp_00/metta-morph_tests -    |
|    52|    24|    68%| reports/cuRRent/interp_1a/metta-morph_tests -    |
|    81|     5|    94%| reports/cuRRent/interp_77/metta-morph_tests -    |
|    66|     7|    90%| reports/cuRRent/interp_80/metta-morph_tests -    |
|    51|    23|    68%| reports/cuRRent/interp_88/metta-morph_tests -    |
|   187|    24|    88%| reports/cuRRent/interp_00/hyperon-experimental_scripts - |
|   167|    40|    80%| reports/cuRRent/interp_1a/hyperon-experimental_scripts - |
|   174|    37|    82%| reports/cuRRent/interp_80/hyperon-experimental_scripts - |
|   165|    53|    75%| reports/cuRRent/interp_88/hyperon-experimental_scripts - |
|    27|     7|    79%| reports/cuRRent/interp_00/hyperon-mettalog_sanity - |
|    27|     9|    75%| reports/cuRRent/interp_1a/hyperon-mettalog_sanity - |
|    26|     8|    76%| reports/cuRRent/interp_80/hyperon-mettalog_sanity - |
|    25|     9|    73%| reports/cuRRent/interp_88/hyperon-mettalog_sanity - |
|    29|    17|    63%| reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments - |
|    28|    18|    60%| reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments - |
|    30|    18|    62%| reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments - |
|    31|    18|    63%| reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments - |
|    30|    20|    60%| reports/cuRRent/interp_00/hyperon-pln_metta/synthesis - |
|    29|    21|    58%| reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis - |
|    31|    21|    59%| reports/cuRRent/interp_80/hyperon-pln_metta/synthesis - |
|    32|    21|    60%| reports/cuRRent/interp_88/hyperon-pln_metta/synthesis - |
|     6|     1|    85%| reports/cuRRent/interp_00/hyperon-pln_metta/sumo/orientation - |
|     2|     1|    66%| reports/cuRRent/interp_1a/hyperon-pln_metta/sumo/orientation - |
|     6|     1|    85%| reports/cuRRent/interp_80/hyperon-pln_metta/sumo/orientation - |
|     5|     2|    71%| reports/cuRRent/interp_88/hyperon-pln_metta/sumo/orientation - |
|     6|     1|    85%| reports/cuRRent/interp_00/hyperon-pln_metta/sumo/located - |
|     2|     1|    66%| reports/cuRRent/interp_1a/hyperon-pln_metta/sumo/located - |
|     5|     3|    62%| reports/cuRRent/interp_80/hyperon-pln_metta/sumo/located - |
|     5|     3|    62%| reports/cuRRent/interp_88/hyperon-pln_metta/sumo/located - |
|     5|     4|    55%| reports/cuRRent/interp_00/hyperon-pln_metta/sumo/john-carry-flower - |
|     2|     3|    40%| reports/cuRRent/interp_1a/hyperon-pln_metta/sumo/john-carry-flower - |
|     5|     5|    50%| reports/cuRRent/interp_80/hyperon-pln_metta/sumo/john-carry-flower - |
|     5|     5|    50%| reports/cuRRent/interp_88/hyperon-pln_metta/sumo/john-carry-flower - |
|    17|     6|    73%| reports/cuRRent/interp_00/hyperon-pln_metta/sumo - |
|     6|     5|    54%| reports/cuRRent/interp_1a/hyperon-pln_metta/sumo - |
|    16|     9|    64%| reports/cuRRent/interp_80/hyperon-pln_metta/sumo - |
|    15|    10|    60%| reports/cuRRent/interp_88/hyperon-pln_metta/sumo - |
|     1|     0|   100%| reports/cuRRent/interp_00/hyperon-pln_metta/subtyping - |
|     1|     0|   100%| reports/cuRRent/interp_1a/hyperon-pln_metta/subtyping - |
|     1|     0|   100%| reports/cuRRent/interp_80/hyperon-pln_metta/subtyping - |
|     1|     0|   100%| reports/cuRRent/interp_88/hyperon-pln_metta/subtyping - |
|     4|     3|    57%| reports/cuRRent/interp_00/hyperon-pln_metta/match - |
|     6|     4|    60%| reports/cuRRent/interp_1a/hyperon-pln_metta/match - |
|     4|     3|    57%| reports/cuRRent/interp_80/hyperon-pln_metta/match - |
|     4|     3|    57%| reports/cuRRent/interp_88/hyperon-pln_metta/match - |
|     4|     0|   100%| reports/cuRRent/interp_00/hyperon-pln_metta/hol - |
|    24|     0|   100%| reports/cuRRent/interp_1a/hyperon-pln_metta/hol - |
|     4|     0|   100%| reports/cuRRent/interp_80/hyperon-pln_metta/hol - |
|     4|     0|   100%| reports/cuRRent/interp_88/hyperon-pln_metta/hol - |
|    32|    18|    64%| reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer - |
|    24|    23|    51%| reports/cuRRent/interp_1a/hyperon-pln_metta/forward-chainer - |
|    32|    18|    64%| reports/cuRRent/interp_80/hyperon-pln_metta/forward-chainer - |
|    32|    18|    64%| reports/cuRRent/interp_88/hyperon-pln_metta/forward-chainer - |
|     2|     2|    50%| reports/cuRRent/interp_00/hyperon-pln_metta/equal - |
|     2|     2|    50%| reports/cuRRent/interp_1a/hyperon-pln_metta/equal - |
|     2|     2|    50%| reports/cuRRent/interp_80/hyperon-pln_metta/equal - |
|     2|     2|    50%| reports/cuRRent/interp_88/hyperon-pln_metta/equal - |
|     6|     3|    66%| reports/cuRRent/interp_00/hyperon-pln_metta/entail - |
|     6|     4|    60%| reports/cuRRent/interp_1a/hyperon-pln_metta/entail - |
|     6|     3|    66%| reports/cuRRent/interp_80/hyperon-pln_metta/entail - |
|     6|     3|    66%| reports/cuRRent/interp_88/hyperon-pln_metta/entail - |
|    23|     8|    74%| reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types - |
|    16|    10|    61%| reports/cuRRent/interp_1a/hyperon-pln_metta/dependent-types - |
|    22|    12|    64%| reports/cuRRent/interp_80/hyperon-pln_metta/dependent-types - |
|    22|    11|    66%| reports/cuRRent/interp_88/hyperon-pln_metta/dependent-types - |
|    15|     0|   100%| reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue - |
|    14|     2|    87%| reports/cuRRent/interp_1a/hyperon-pln_metta/common/truthvalue - |
|    15|     0|   100%| reports/cuRRent/interp_80/hyperon-pln_metta/common/truthvalue - |
|    22|     0|   100%| reports/cuRRent/interp_88/hyperon-pln_metta/common/truthvalue - |
|    13|     0|   100%| reports/cuRRent/interp_00/hyperon-pln_metta/common/formula - |
|    25|     8|    75%| reports/cuRRent/interp_1a/hyperon-pln_metta/common/formula - |
|    13|     0|   100%| reports/cuRRent/interp_80/hyperon-pln_metta/common/formula - |
|    13|     0|   100%| reports/cuRRent/interp_88/hyperon-pln_metta/common/formula - |
|    76|     3|    96%| reports/cuRRent/interp_00/hyperon-pln_metta/common - |
|    83|    14|    85%| reports/cuRRent/interp_1a/hyperon-pln_metta/common - |
|    76|     3|    96%| reports/cuRRent/interp_80/hyperon-pln_metta/common - |
|    83|     3|    96%| reports/cuRRent/interp_88/hyperon-pln_metta/common - |
|    35|    14|    71%| reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer - |
|    30|    15|    66%| reports/cuRRent/interp_1a/hyperon-pln_metta/backward-chainer - |
|    35|    14|    71%| reports/cuRRent/interp_80/hyperon-pln_metta/backward-chainer - |
|    29|    20|    59%| reports/cuRRent/interp_88/hyperon-pln_metta/backward-chainer - |
|   230|    77|    74%| reports/cuRRent/interp_00/hyperon-pln_metta -    |
|   227|    98|    69%| reports/cuRRent/interp_1a/hyperon-pln_metta -    |
|   229|    85|    72%| reports/cuRRent/interp_80/hyperon-pln_metta -    |
|   230|    91|    71%| reports/cuRRent/interp_88/hyperon-pln_metta -    |
|     0|     0|     0%| reports/cuRRent/performance -                    |
|  2030|   602|    77%| reports -                                        |
|  2030|   602|    77%| reports/cuRRent -                                |
|   510|   113|    81%| reports/cuRRent/interp_00 -                      |
|   473|   171|    73%| reports/cuRRent/interp_1a -                      |
|    81|     5|    94%| reports/cuRRent/interp_77 -                      |
|   495|   137|    78%| reports/cuRRent/interp_80 -                      |
|   471|   176|    72%| reports/cuRRent/interp_88 -                      |

<details><summary>Expand for Core Summaries</summary>

|Pass |Fail |File                               |GitHub Link                                                                                                                       |
|-----|-----|-----------------------------------|----------------------------------------------------------------------------------------------------------------------------------|
|  10 |  21 | forward-chainer-xp.metta.metta    |[reports/cuRRent/interp_1a/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html)|
|  29 |  20 | backward-chainer-xp.metta.metta   |[reports/cuRRent/interp_88/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html)|
|  16 |  18 | forward-chainer-xp.metta.metta    |[reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html)|
|  16 |  18 | forward-chainer-xp.metta.metta    |[reports/cuRRent/interp_80/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html)|
|  17 |  17 | forward-chainer-xp.metta.metta    |[reports/cuRRent/interp_88/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html)|
|  30 |  15 | backward-chainer-xp.metta.metta   |[reports/cuRRent/interp_1a/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html)|
|  35 |  14 | backward-chainer-xp.metta.metta   |[reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html)|
|  35 |  14 | backward-chainer-xp.metta.metta   |[reports/cuRRent/interp_80/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html)|
|  2  |  11 | synthesize-via-unify-test.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html)|
|  2  |  11 | synthesize-via-unify-test.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html)|
|  2  |  11 | synthesize-via-unify-test.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html)|
|  2  |  11 | synthesize-via-unify-test.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html)|
|  25 |  8  | DeductionFormulaTest.metta.metta  |[reports/cuRRent/interp_1a/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html)|
|  6  |  8  | d1_gadt.metta.metta               |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/d1_gadt.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/d1_gadt.metta.html)|
|  12 |  7  | ImplicationDirectIntroductionDTLTest.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html)|
|  11 |  7  | d4_type_prop.metta.metta          |[reports/cuRRent/interp_88/hyperon-experimental_scripts/d4_type_prop.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/d4_type_prop.metta.html)|
|  7  |  7  | d1_gadt.metta.metta               |[reports/cuRRent/interp_88/hyperon-experimental_scripts/d1_gadt.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/d1_gadt.metta.html)|
|  2  |  7  | sequential_nested.metta.metta     |[reports/cuRRent/interp_88/metta-morph_tests/sequential_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/sequential_nested.metta.html)|
|  21 |  6  | d2_higherfunc.metta.metta         |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/d2_higherfunc.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/d2_higherfunc.metta.html)|
|  21 |  6  | d2_higherfunc.metta.metta         |[reports/cuRRent/interp_88/hyperon-experimental_scripts/d2_higherfunc.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/d2_higherfunc.metta.html)|
|  12 |  6  | d4_type_prop.metta.metta          |[reports/cuRRent/interp_80/hyperon-experimental_scripts/d4_type_prop.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/d4_type_prop.metta.html)|
|  12 |  6  | ImplicationDirectIntroductionDTLTest.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html)|
|  12 |  6  | ImplicationDirectIntroductionDTLTest.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html)|
|  12 |  6  | ImplicationDirectIntroductionDTLTest.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html)|
|  2  |  6  | match_void.metta.metta            |[reports/cuRRent/interp_1a/metta-morph_tests/match_void.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/match_void.metta.html)|
|  1  |  6  | sequential_nested.metta.metta     |[reports/cuRRent/interp_1a/metta-morph_tests/sequential_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/sequential_nested.metta.html)|
|  7  |  5  | match_superposed_spaces.metta.metta|[reports/cuRRent/interp_1a/metta-morph_tests/match_superposed_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/match_superposed_spaces.metta.html)|
|  6  |  5  | b4_nondeterm.metta.metta          |[reports/cuRRent/interp_80/hyperon-experimental_scripts/b4_nondeterm.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/b4_nondeterm.metta.html)|
|  5  |  5  | john-carry-flower-test.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html)|
|  5  |  5  | john-carry-flower-test.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html)|
|  1  |  5  | unify-via-case.metta.metta        |[reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html)|
|  1  |  5  | unify-via-case.metta.metta        |[reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html)|
|  1  |  5  | unify-via-case.metta.metta        |[reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html)|
|  1  |  5  | unify-via-case.metta.metta        |[reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html)|
|  14 |  4  | d4_type_prop.metta.metta          |[reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html)|
|  14 |  4  | d4_type_prop.metta.metta          |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/d4_type_prop.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/d4_type_prop.metta.html)|
|  6  |  4  | match_void.metta.metta            |[reports/cuRRent/interp_88/metta-morph_tests/match_void.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/match_void.metta.html)|
|  5  |  4  | e3_match_states.metta.metta       |[reports/cuRRent/interp_88/hyperon-experimental_scripts/e3_match_states.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/e3_match_states.metta.html)|
|  5  |  4  | john-carry-flower-test.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html)|
|  3  |  4  | d3_deptypes.metta.metta           |[reports/cuRRent/interp_88/hyperon-experimental_scripts/d3_deptypes.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/d3_deptypes.metta.html)|
|  24 |  3  | d2_higherfunc.metta.metta         |[reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html)|
|  24 |  3  | d2_higherfunc.metta.metta         |[reports/cuRRent/interp_80/hyperon-experimental_scripts/d2_higherfunc.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/d2_higherfunc.metta.html)|
|  19 |  3  | f1_imports.metta.metta            |[reports/cuRRent/interp_88/hyperon-experimental_scripts/f1_imports.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/f1_imports.metta.html)|
|  18 |  3  | b5_types_prelim.metta.metta       |[reports/cuRRent/interp_88/hyperon-experimental_scripts/b5_types_prelim.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/b5_types_prelim.metta.html)|
|  18 |  3  | c1_grounded_basic.metta.metta     |[reports/cuRRent/interp_80/hyperon-experimental_scripts/c1_grounded_basic.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/c1_grounded_basic.metta.html)|
|  11 |  3  | d1_gadt.metta.metta               |[reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html)|
|  11 |  3  | d1_gadt.metta.metta               |[reports/cuRRent/interp_80/hyperon-experimental_scripts/d1_gadt.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/d1_gadt.metta.html)|
|  9  |  3  | e2_states.metta.metta             |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/e2_states.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/e2_states.metta.html)|
|  8  |  3  | b4_nondeterm.metta.metta          |[reports/cuRRent/interp_88/hyperon-experimental_scripts/b4_nondeterm.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/b4_nondeterm.metta.html)|
|  7  |  3  | c2_spaces.metta.metta             |[reports/cuRRent/interp_88/hyperon-experimental_scripts/c2_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/c2_spaces.metta.html)|
|  6  |  3  | e3_match_states.metta.metta       |[reports/cuRRent/interp_00/hyperon-experimental_scripts/e3_match_states.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e3_match_states.metta.html)|
|  6  |  3  | e3_match_states.metta.metta       |[reports/cuRRent/interp_80/hyperon-experimental_scripts/e3_match_states.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/e3_match_states.metta.html)|
|  6  |  3  | supercollapse.metta.metta         |[reports/cuRRent/interp_1a/metta-morph_tests/supercollapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/supercollapse.metta.html)|
|  5  |  3  | c2_spaces.metta.metta             |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/c2_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/c2_spaces.metta.html)|
|  5  |  3  | ImplicationDirectIntroductionEntailTest.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html)|
|  5  |  3  | located-test.metta.metta          |[reports/cuRRent/interp_80/hyperon-pln_metta/sumo/located/located-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/sumo/located/located-test.metta.html)|
|  5  |  3  | located-test.metta.metta          |[reports/cuRRent/interp_88/hyperon-pln_metta/sumo/located/located-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/sumo/located/located-test.metta.html)|
|  4  |  3  | c2_spaces.metta.metta             |[reports/cuRRent/interp_00/hyperon-experimental_scripts/c2_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c2_spaces.metta.html)|
|  4  |  3  | c2_spaces.metta.metta             |[reports/cuRRent/interp_80/hyperon-experimental_scripts/c2_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/c2_spaces.metta.html)|
|  4  |  3  | match_superposed_spaces.metta.metta|[reports/cuRRent/interp_88/metta-morph_tests/match_superposed_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/match_superposed_spaces.metta.html)|
|  4  |  3  | ModusPonensDTLTest.metta.metta    |[reports/cuRRent/interp_80/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html)|
|  4  |  3  | ModusPonensDTLTest.metta.metta    |[reports/cuRRent/interp_88/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html)|
|  4  |  3  | supercollapse.metta.metta         |[reports/cuRRent/interp_88/metta-morph_tests/supercollapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/supercollapse.metta.html)|
|  2  |  3  | john-carry-flower-test.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html)|
|  1  |  3  | 04_match_list_like_space.metta.metta|[reports/cuRRent/interp_00/hyperon-mettalog_sanity/04_match_list_like_space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/04_match_list_like_space.metta.html)|
|  1  |  3  | 04_match_list_like_space.metta.metta|[reports/cuRRent/interp_1a/hyperon-mettalog_sanity/04_match_list_like_space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-mettalog_sanity/04_match_list_like_space.metta.html)|
|  1  |  3  | 04_match_list_like_space.metta.metta|[reports/cuRRent/interp_80/hyperon-mettalog_sanity/04_match_list_like_space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-mettalog_sanity/04_match_list_like_space.metta.html)|
|  1  |  3  | 04_match_list_like_space.metta.metta|[reports/cuRRent/interp_88/hyperon-mettalog_sanity/04_match_list_like_space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-mettalog_sanity/04_match_list_like_space.metta.html)|
|  1  |  3  | 05_match_superpose_element_like_space.metta.metta|[reports/cuRRent/interp_00/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html)|
|  1  |  3  | 05_match_superpose_element_like_space.metta.metta|[reports/cuRRent/interp_1a/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html)|
|  1  |  3  | 05_match_superpose_element_like_space.metta.metta|[reports/cuRRent/interp_80/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html)|
|  1  |  3  | 05_match_superpose_element_like_space.metta.metta|[reports/cuRRent/interp_88/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html)|
|  1  |  3  | e3_match_states.metta.metta       |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/e3_match_states.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/e3_match_states.metta.html)|
|  1  |  3  | UnifyTest.metta.metta             |[reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/UnifyTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/UnifyTest.metta.html)|
|  1  |  3  | UnifyTest.metta.metta             |[reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/UnifyTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/UnifyTest.metta.html)|
|  1  |  3  | UnifyTest.metta.metta             |[reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/UnifyTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/UnifyTest.metta.html)|
|  1  |  3  | UnifyTest.metta.metta             |[reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/UnifyTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/UnifyTest.metta.html)|
|  20 |  2  | f1_imports.metta.metta            |[reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html)|
|  20 |  2  | f1_imports.metta.metta            |[reports/cuRRent/interp_80/hyperon-experimental_scripts/f1_imports.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/f1_imports.metta.html)|
|  15 |  2  | 00_lang_case.metta.metta          |[reports/cuRRent/interp_88/hyperon-mettalog_sanity/00_lang_case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-mettalog_sanity/00_lang_case.metta.html)|
|  14 |  2  | f1_imports.metta.metta            |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/f1_imports.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/f1_imports.metta.html)|
|  14 |  2  | forward-chainer-test.metta.metta  |[reports/cuRRent/interp_1a/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html)|
|  10 |  2  | NumTest.metta.metta               |[reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html)|
|  10 |  2  | NumTest.metta.metta               |[reports/cuRRent/interp_1a/hyperon-pln_metta/common/NumTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/common/NumTest.metta.html)|
|  10 |  2  | NumTest.metta.metta               |[reports/cuRRent/interp_80/hyperon-pln_metta/common/NumTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/common/NumTest.metta.html)|
|  10 |  2  | NumTest.metta.metta               |[reports/cuRRent/interp_88/hyperon-pln_metta/common/NumTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/common/NumTest.metta.html)|
|  9  |  2  | b4_nondeterm.metta.metta          |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/b4_nondeterm.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/b4_nondeterm.metta.html)|
|  9  |  2  | e2_states.metta.metta             |[reports/cuRRent/interp_88/hyperon-experimental_scripts/e2_states.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/e2_states.metta.html)|
|  8  |  2  | match_void.metta.metta            |[reports/cuRRent/interp_00/metta-morph_tests/match_void.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_void.metta.html)|
|  8  |  2  | match_void.metta.metta            |[reports/cuRRent/interp_77/metta-morph_tests/match_void.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/match_void.metta.html)|
|  8  |  2  | match_void.metta.metta            |[reports/cuRRent/interp_80/metta-morph_tests/match_void.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/match_void.metta.html)|
|  6  |  2  | DeductionDTLTest.metta.metta      |[reports/cuRRent/interp_80/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html)|
|  6  |  2  | DeductionDTLTest.metta.metta      |[reports/cuRRent/interp_88/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html)|
|  5  |  2  | c3_pln_stv.metta.metta            |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/c3_pln_stv.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/c3_pln_stv.metta.html)|
|  5  |  2  | c3_pln_stv.metta.metta            |[reports/cuRRent/interp_88/hyperon-experimental_scripts/c3_pln_stv.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/c3_pln_stv.metta.html)|
|  5  |  2  | EvidentialTruthValueTest.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html)|
|  5  |  2  | ImplicationDirectIntroductionEntailTest.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html)|
|  5  |  2  | ImplicationDirectIntroductionEntailTest.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html)|
|  5  |  2  | ImplicationDirectIntroductionEntailTest.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html)|
|  5  |  2  | orientation-test.metta.metta      |[reports/cuRRent/interp_88/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html)|
|  4  |  2  | a3_twoside.metta.metta            |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/a3_twoside.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/a3_twoside.metta.html)|
|  4  |  2  | a3_twoside.metta.metta            |[reports/cuRRent/interp_88/hyperon-experimental_scripts/a3_twoside.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/a3_twoside.metta.html)|
|  4  |  2  | ModusPonensDTLTest.metta.metta    |[reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html)|
|  3  |  2  | b2_backchain.metta.metta          |[reports/cuRRent/interp_88/hyperon-experimental_scripts/b2_backchain.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/b2_backchain.metta.html)|
|  3  |  2  | c3_pln_stv.metta.metta            |[reports/cuRRent/interp_00/hyperon-experimental_scripts/c3_pln_stv.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c3_pln_stv.metta.html)|
|  3  |  2  | c3_pln_stv.metta.metta            |[reports/cuRRent/interp_80/hyperon-experimental_scripts/c3_pln_stv.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/c3_pln_stv.metta.html)|
|  3  |  2  | e1_kb_write.metta.metta           |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/e1_kb_write.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/e1_kb_write.metta.html)|
|  3  |  2  | ImplicationDirectIntroductionMatchTest.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta.html)|
|  2  |  2  | a3_twoside.metta.metta            |[reports/cuRRent/interp_00/hyperon-experimental_scripts/a3_twoside.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a3_twoside.metta.html)|
|  2  |  2  | a3_twoside.metta.metta            |[reports/cuRRent/interp_80/hyperon-experimental_scripts/a3_twoside.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/a3_twoside.metta.html)|
|  2  |  2  | DeductionDTLTest.metta.metta      |[reports/cuRRent/interp_1a/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html)|
|  2  |  2  | ModusPonensDTLTest.metta.metta    |[reports/cuRRent/interp_1a/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html)|
|  1  |  2  | b3_direct.metta.metta             |[reports/cuRRent/interp_80/hyperon-experimental_scripts/b3_direct.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/b3_direct.metta.html)|
|  1  |  2  | b3_direct.metta.metta             |[reports/cuRRent/interp_88/hyperon-experimental_scripts/b3_direct.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/b3_direct.metta.html)|
|  1  |  2  | DeductionEqualTest.metta.metta    |[reports/cuRRent/interp_00/hyperon-pln_metta/equal/DeductionEqualTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/equal/DeductionEqualTest.metta.html)|
|  1  |  2  | DeductionEqualTest.metta.metta    |[reports/cuRRent/interp_1a/hyperon-pln_metta/equal/DeductionEqualTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/equal/DeductionEqualTest.metta.html)|
|  1  |  2  | DeductionEqualTest.metta.metta    |[reports/cuRRent/interp_80/hyperon-pln_metta/equal/DeductionEqualTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/equal/DeductionEqualTest.metta.html)|
|  1  |  2  | DeductionEqualTest.metta.metta    |[reports/cuRRent/interp_88/hyperon-pln_metta/equal/DeductionEqualTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/equal/DeductionEqualTest.metta.html)|
|  1  |  2  | e1_kb_write.metta.metta           |[reports/cuRRent/interp_88/hyperon-experimental_scripts/e1_kb_write.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/e1_kb_write.metta.html)|
|  20 |  1  | b5_types_prelim.metta.metta       |[reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html)|
|  20 |  1  | b5_types_prelim.metta.metta       |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/b5_types_prelim.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/b5_types_prelim.metta.html)|
|  20 |  1  | b5_types_prelim.metta.metta       |[reports/cuRRent/interp_80/hyperon-experimental_scripts/b5_types_prelim.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/b5_types_prelim.metta.html)|
|  20 |  1  | c1_grounded_basic.metta.metta     |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/c1_grounded_basic.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/c1_grounded_basic.metta.html)|
|  20 |  1  | c1_grounded_basic.metta.metta     |[reports/cuRRent/interp_88/hyperon-experimental_scripts/c1_grounded_basic.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/c1_grounded_basic.metta.html)|
|  16 |  1  | 00_lang_case.metta.metta          |[reports/cuRRent/interp_1a/hyperon-mettalog_sanity/00_lang_case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-mettalog_sanity/00_lang_case.metta.html)|
|  16 |  1  | 00_lang_case.metta.metta          |[reports/cuRRent/interp_80/hyperon-mettalog_sanity/00_lang_case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-mettalog_sanity/00_lang_case.metta.html)|
|  15 |  1  | forward-chainer-test.metta.metta  |[reports/cuRRent/interp_88/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html)|
|  13 |  1  | synthesize-via-type-checking.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html)|
|  13 |  1  | synthesize-via-type-checking.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html)|
|  12 |  1  | synthesize-via-type-checking.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html)|
|  11 |  1  | OrderedSetTest.metta.metta        |[reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html)|
|  11 |  1  | OrderedSetTest.metta.metta        |[reports/cuRRent/interp_80/hyperon-pln_metta/common/OrderedSetTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/common/OrderedSetTest.metta.html)|
|  11 |  1  | OrderedSetTest.metta.metta        |[reports/cuRRent/interp_88/hyperon-pln_metta/common/OrderedSetTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/common/OrderedSetTest.metta.html)|
|  10 |  1  | b4_nondeterm.metta.metta          |[reports/cuRRent/interp_00/hyperon-experimental_scripts/b4_nondeterm.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b4_nondeterm.metta.html)|
|  10 |  1  | OrderedSetTest.metta.metta        |[reports/cuRRent/interp_1a/hyperon-pln_metta/common/OrderedSetTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/common/OrderedSetTest.metta.html)|
|  8  |  1  | states_spaces.metta.metta         |[reports/cuRRent/interp_80/metta-morph_tests/states_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/states_spaces.metta.html)|
|  8  |  1  | states_spaces.metta.metta         |[reports/cuRRent/interp_88/metta-morph_tests/states_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/states_spaces.metta.html)|
|  6  |  1  | located-test.metta.metta          |[reports/cuRRent/interp_00/hyperon-pln_metta/sumo/located/located-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/located/located-test.metta.html)|
|  6  |  1  | orientation-test.metta.metta      |[reports/cuRRent/interp_00/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html)|
|  6  |  1  | orientation-test.metta.metta      |[reports/cuRRent/interp_80/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html)|
|  4  |  1  | b2_backchain.metta.metta          |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/b2_backchain.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/b2_backchain.metta.html)|
|  4  |  1  | b2_backchain.metta.metta          |[reports/cuRRent/interp_80/hyperon-experimental_scripts/b2_backchain.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/b2_backchain.metta.html)|
|  4  |  1  | synthesize-via-superpose.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html)|
|  4  |  1  | synthesize-via-superpose.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html)|
|  3  |  1  | synthesize-via-superpose.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html)|
|  3  |  1  | synthesize-via-superpose.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html)|
|  2  |  1  | DeductionImplicationDirectIntroductionMatchTest.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html)|
|  2  |  1  | DeductionImplicationDirectIntroductionMatchTest.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html)|
|  2  |  1  | DeductionImplicationDirectIntroductionMatchTest.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html)|
|  2  |  1  | DeductionImplicationDirectIntroductionMatchTest.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html)|
|  2  |  1  | e1_kb_write.metta.metta           |[reports/cuRRent/interp_80/hyperon-experimental_scripts/e1_kb_write.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/e1_kb_write.metta.html)|
|  2  |  1  | located-test.metta.metta          |[reports/cuRRent/interp_1a/hyperon-pln_metta/sumo/located/located-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/sumo/located/located-test.metta.html)|
|  2  |  1  | orientation-test.metta.metta      |[reports/cuRRent/interp_1a/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html)|
|  1  |  1  | 02-curried-plus.metta.metta       |[reports/cuRRent/interp_1a/hyperon-mettalog_sanity/02-curried-plus.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-mettalog_sanity/02-curried-plus.metta.html)|
|  1  |  1  | add_atom_match.metta.metta        |[reports/cuRRent/interp_1a/metta-morph_tests/add_atom_match.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/add_atom_match.metta.html)|
|  1  |  1  | add_atom_match.metta.metta        |[reports/cuRRent/interp_88/metta-morph_tests/add_atom_match.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/add_atom_match.metta.html)|
|  1  |  1  | DeductionEntailTest.metta.metta   |[reports/cuRRent/interp_00/hyperon-pln_metta/entail/DeductionEntailTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/entail/DeductionEntailTest.metta.html)|
|  1  |  1  | DeductionEntailTest.metta.metta   |[reports/cuRRent/interp_1a/hyperon-pln_metta/entail/DeductionEntailTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/entail/DeductionEntailTest.metta.html)|
|  1  |  1  | DeductionEntailTest.metta.metta   |[reports/cuRRent/interp_80/hyperon-pln_metta/entail/DeductionEntailTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/entail/DeductionEntailTest.metta.html)|
|  1  |  1  | DeductionEntailTest.metta.metta   |[reports/cuRRent/interp_88/hyperon-pln_metta/entail/DeductionEntailTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/entail/DeductionEntailTest.metta.html)|
|  1  |  1  | DeductionMatchTest.metta.metta    |[reports/cuRRent/interp_00/hyperon-pln_metta/match/DeductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/match/DeductionMatchTest.metta.html)|
|  1  |  1  | DeductionMatchTest.metta.metta    |[reports/cuRRent/interp_1a/hyperon-pln_metta/match/DeductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/match/DeductionMatchTest.metta.html)|
|  1  |  1  | DeductionMatchTest.metta.metta    |[reports/cuRRent/interp_80/hyperon-pln_metta/match/DeductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/match/DeductionMatchTest.metta.html)|
|  1  |  1  | DeductionMatchTest.metta.metta    |[reports/cuRRent/interp_88/hyperon-pln_metta/match/DeductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/match/DeductionMatchTest.metta.html)|
|  1  |  1  | EqualityTypeTest.metta.metta      |[reports/cuRRent/interp_1a/hyperon-pln_metta/common/EqualityTypeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/common/EqualityTypeTest.metta.html)|
|  1  |  1  | ImplicationDirectIntroductionMatchTest.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta.html)|
|  1  |  1  | ImplicationDirectIntroductionMatchTest.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta.html)|
|  1  |  1  | ImplicationDirectIntroductionMatchTest.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta.html)|
|  1  |  1  | match_feval.metta.metta           |[reports/cuRRent/interp_1a/metta-morph_tests/match_feval.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/match_feval.metta.html)|
|  1  |  1  | match_feval.metta.metta           |[reports/cuRRent/interp_80/metta-morph_tests/match_feval.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/match_feval.metta.html)|
|  1  |  1  | match_feval.metta.metta           |[reports/cuRRent/interp_88/metta-morph_tests/match_feval.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/match_feval.metta.html)|
|  1  |  1  | nested_parameters.metta.metta     |[reports/cuRRent/interp_80/metta-morph_tests/nested_parameters.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/nested_parameters.metta.html)|
|  1  |  1  | nested_parameters.metta.metta     |[reports/cuRRent/interp_88/metta-morph_tests/nested_parameters.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/nested_parameters.metta.html)|
|  1  |  1  | structure-tests.metta.metta       |[reports/cuRRent/interp_1a/hyperon-mettalog_sanity/structure-tests.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-mettalog_sanity/structure-tests.metta.html)|
|  0  |  1  | 02-curried-plus.metta.metta       |[reports/cuRRent/interp_00/hyperon-mettalog_sanity/02-curried-plus.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/02-curried-plus.metta.html)|
|  0  |  1  | 02-curried-plus.metta.metta       |[reports/cuRRent/interp_80/hyperon-mettalog_sanity/02-curried-plus.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-mettalog_sanity/02-curried-plus.metta.html)|
|  0  |  1  | 02-curried-plus.metta.metta       |[reports/cuRRent/interp_88/hyperon-mettalog_sanity/02-curried-plus.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-mettalog_sanity/02-curried-plus.metta.html)|
|  0  |  1  | match_feval.metta.metta           |[reports/cuRRent/interp_00/metta-morph_tests/match_feval.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_feval.metta.html)|
|  0  |  1  | match_feval.metta.metta           |[reports/cuRRent/interp_77/metta-morph_tests/match_feval.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/match_feval.metta.html)|
|  0  |  1  | minnars.metta.metta               |[reports/cuRRent/interp_00/metta-morph_tests/minnars.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/minnars.metta.html)|
|  0  |  1  | minnars.metta.metta               |[reports/cuRRent/interp_1a/metta-morph_tests/minnars.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/minnars.metta.html)|
|  0  |  1  | minnars.metta.metta               |[reports/cuRRent/interp_77/metta-morph_tests/minnars.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/minnars.metta.html)|
|  0  |  1  | minnars.metta.metta               |[reports/cuRRent/interp_80/metta-morph_tests/minnars.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/minnars.metta.html)|
|  0  |  1  | minnars.metta.metta               |[reports/cuRRent/interp_88/metta-morph_tests/minnars.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/minnars.metta.html)|
|  0  |  1  | nalifier.metta.metta              |[reports/cuRRent/interp_00/metta-morph_tests/nalifier.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/nalifier.metta.html)|
|  0  |  1  | nalifier.metta.metta              |[reports/cuRRent/interp_1a/metta-morph_tests/nalifier.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/nalifier.metta.html)|
|  0  |  1  | nalifier.metta.metta              |[reports/cuRRent/interp_77/metta-morph_tests/nalifier.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/nalifier.metta.html)|
|  0  |  1  | nalifier.metta.metta              |[reports/cuRRent/interp_80/metta-morph_tests/nalifier.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/nalifier.metta.html)|
|  0  |  1  | nalifier.metta.metta              |[reports/cuRRent/interp_88/metta-morph_tests/nalifier.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/nalifier.metta.html)|
|  22 |  0  | ListTest.metta.metta              |[reports/cuRRent/interp_1a/hyperon-pln_metta/hol/ListTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/hol/ListTest.metta.html)|
|  21 |  0  | c1_grounded_basic.metta.metta     |[reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html)|
|  20 |  0  | ListTest.metta.metta              |[reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html)|
|  20 |  0  | ListTest.metta.metta              |[reports/cuRRent/interp_80/hyperon-pln_metta/common/ListTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/common/ListTest.metta.html)|
|  20 |  0  | ListTest.metta.metta              |[reports/cuRRent/interp_88/hyperon-pln_metta/common/ListTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/common/ListTest.metta.html)|
|  19 |  0  | ListTest.metta.metta              |[reports/cuRRent/interp_1a/hyperon-pln_metta/common/ListTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/common/ListTest.metta.html)|
|  17 |  0  | 00_lang_case.metta.metta          |[reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html)|
|  17 |  0  | TruthValueTest.metta.metta        |[reports/cuRRent/interp_88/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html)|
|  16 |  0  | forward-chainer-test.metta.metta  |[reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html)|
|  16 |  0  | forward-chainer-test.metta.metta  |[reports/cuRRent/interp_80/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html)|
|  14 |  0  | synthesize-via-type-checking.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html)|
|  13 |  0  | DeductionFormulaTest.metta.metta  |[reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html)|
|  13 |  0  | DeductionFormulaTest.metta.metta  |[reports/cuRRent/interp_80/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html)|
|  13 |  0  | DeductionFormulaTest.metta.metta  |[reports/cuRRent/interp_88/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html)|
|  11 |  0  | e2_states.metta.metta             |[reports/cuRRent/interp_00/hyperon-experimental_scripts/e2_states.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e2_states.metta.html)|
|  11 |  0  | e2_states.metta.metta             |[reports/cuRRent/interp_80/hyperon-experimental_scripts/e2_states.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/e2_states.metta.html)|
|  10 |  0  | TruthValueTest.metta.metta        |[reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html)|
|  10 |  0  | TruthValueTest.metta.metta        |[reports/cuRRent/interp_80/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html)|
|  9  |  0  | sequential_nested.metta.metta     |[reports/cuRRent/interp_00/metta-morph_tests/sequential_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/sequential_nested.metta.html)|
|  9  |  0  | sequential_nested.metta.metta     |[reports/cuRRent/interp_77/metta-morph_tests/sequential_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/sequential_nested.metta.html)|
|  9  |  0  | sequential_nested.metta.metta     |[reports/cuRRent/interp_80/metta-morph_tests/sequential_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/sequential_nested.metta.html)|
|  9  |  0  | states_spaces.metta.metta         |[reports/cuRRent/interp_00/metta-morph_tests/states_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/states_spaces.metta.html)|
|  9  |  0  | states_spaces.metta.metta         |[reports/cuRRent/interp_1a/metta-morph_tests/states_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/states_spaces.metta.html)|
|  9  |  0  | states_spaces.metta.metta         |[reports/cuRRent/interp_77/metta-morph_tests/states_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/states_spaces.metta.html)|
|  9  |  0  | TruthValueTest.metta.metta        |[reports/cuRRent/interp_1a/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html)|
|  9  |  0  | types.metta.metta                 |[reports/cuRRent/interp_77/metta-morph_tests/types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/types.metta.html)|
|  8  |  0  | collapse.metta.metta              |[reports/cuRRent/interp_77/metta-morph_tests/collapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/collapse.metta.html)|
|  7  |  0  | a1_symbols.metta.metta            |[reports/cuRRent/interp_00/hyperon-experimental_scripts/a1_symbols.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a1_symbols.metta.html)|
|  7  |  0  | a1_symbols.metta.metta            |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/a1_symbols.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/a1_symbols.metta.html)|
|  7  |  0  | a1_symbols.metta.metta            |[reports/cuRRent/interp_80/hyperon-experimental_scripts/a1_symbols.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/a1_symbols.metta.html)|
|  7  |  0  | a1_symbols.metta.metta            |[reports/cuRRent/interp_88/hyperon-experimental_scripts/a1_symbols.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/a1_symbols.metta.html)|
|  7  |  0  | d3_deptypes.metta.metta           |[reports/cuRRent/interp_00/hyperon-experimental_scripts/d3_deptypes.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d3_deptypes.metta.html)|
|  7  |  0  | d3_deptypes.metta.metta           |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/d3_deptypes.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/d3_deptypes.metta.html)|
|  7  |  0  | d3_deptypes.metta.metta           |[reports/cuRRent/interp_80/hyperon-experimental_scripts/d3_deptypes.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/d3_deptypes.metta.html)|
|  7  |  0  | DeductionDTLTest.metta.metta      |[reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html)|
|  7  |  0  | match_superposed_spaces.metta.metta|[reports/cuRRent/interp_00/metta-morph_tests/match_superposed_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_superposed_spaces.metta.html)|
|  7  |  0  | match_superposed_spaces.metta.metta|[reports/cuRRent/interp_77/metta-morph_tests/match_superposed_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/match_superposed_spaces.metta.html)|
|  7  |  0  | match_superposed_spaces.metta.metta|[reports/cuRRent/interp_80/metta-morph_tests/match_superposed_spaces.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/match_superposed_spaces.metta.html)|
|  7  |  0  | supercollapse.metta.metta         |[reports/cuRRent/interp_00/metta-morph_tests/supercollapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/supercollapse.metta.html)|
|  7  |  0  | supercollapse.metta.metta         |[reports/cuRRent/interp_77/metta-morph_tests/supercollapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/supercollapse.metta.html)|
|  7  |  0  | supercollapse.metta.metta         |[reports/cuRRent/interp_80/metta-morph_tests/supercollapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/supercollapse.metta.html)|
|  7  |  0  | unify-via-let.metta.metta         |[reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html)|
|  7  |  0  | unify-via-let.metta.metta         |[reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html)|
|  7  |  0  | unify-via-let.metta.metta         |[reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html)|
|  7  |  0  | unify-via-let.metta.metta         |[reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html)|
|  6  |  0  | b1_equal_chain.metta.metta        |[reports/cuRRent/interp_00/hyperon-experimental_scripts/b1_equal_chain.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b1_equal_chain.metta.html)|
|  6  |  0  | b1_equal_chain.metta.metta        |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/b1_equal_chain.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/b1_equal_chain.metta.html)|
|  6  |  0  | b1_equal_chain.metta.metta        |[reports/cuRRent/interp_80/hyperon-experimental_scripts/b1_equal_chain.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/b1_equal_chain.metta.html)|
|  6  |  0  | b1_equal_chain.metta.metta        |[reports/cuRRent/interp_88/hyperon-experimental_scripts/b1_equal_chain.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/b1_equal_chain.metta.html)|
|  5  |  0  | 03-soring-via-insert.metta.metta  |[reports/cuRRent/interp_00/hyperon-mettalog_sanity/03-soring-via-insert.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/03-soring-via-insert.metta.html)|
|  5  |  0  | 03-soring-via-insert.metta.metta  |[reports/cuRRent/interp_1a/hyperon-mettalog_sanity/03-soring-via-insert.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-mettalog_sanity/03-soring-via-insert.metta.html)|
|  5  |  0  | 03-soring-via-insert.metta.metta  |[reports/cuRRent/interp_80/hyperon-mettalog_sanity/03-soring-via-insert.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-mettalog_sanity/03-soring-via-insert.metta.html)|
|  5  |  0  | 03-soring-via-insert.metta.metta  |[reports/cuRRent/interp_88/hyperon-mettalog_sanity/03-soring-via-insert.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-mettalog_sanity/03-soring-via-insert.metta.html)|
|  5  |  0  | b0_chaining_prelim.metta.metta    |[reports/cuRRent/interp_00/hyperon-experimental_scripts/b0_chaining_prelim.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b0_chaining_prelim.metta.html)|
|  5  |  0  | b0_chaining_prelim.metta.metta    |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/b0_chaining_prelim.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/b0_chaining_prelim.metta.html)|
|  5  |  0  | b0_chaining_prelim.metta.metta    |[reports/cuRRent/interp_80/hyperon-experimental_scripts/b0_chaining_prelim.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/b0_chaining_prelim.metta.html)|
|  5  |  0  | b0_chaining_prelim.metta.metta    |[reports/cuRRent/interp_88/hyperon-experimental_scripts/b0_chaining_prelim.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/b0_chaining_prelim.metta.html)|
|  5  |  0  | b2_backchain.metta.metta          |[reports/cuRRent/interp_00/hyperon-experimental_scripts/b2_backchain.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b2_backchain.metta.html)|
|  5  |  0  | EvidentialTruthValueTest.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html)|
|  5  |  0  | EvidentialTruthValueTest.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html)|
|  5  |  0  | EvidentialTruthValueTest.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html)|
|  5  |  0  | types2.metta.metta                |[reports/cuRRent/interp_00/metta-morph_tests/types2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/types2.metta.html)|
|  5  |  0  | types2.metta.metta                |[reports/cuRRent/interp_1a/metta-morph_tests/types2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/types2.metta.html)|
|  5  |  0  | types2.metta.metta                |[reports/cuRRent/interp_77/metta-morph_tests/types2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/types2.metta.html)|
|  5  |  0  | types2.metta.metta                |[reports/cuRRent/interp_80/metta-morph_tests/types2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/types2.metta.html)|
|  5  |  0  | types2.metta.metta                |[reports/cuRRent/interp_88/metta-morph_tests/types2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/types2.metta.html)|
|  4  |  0  | MaybeTest.metta.metta             |[reports/cuRRent/interp_00/hyperon-pln_metta/common/MaybeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/MaybeTest.metta.html)|
|  4  |  0  | MaybeTest.metta.metta             |[reports/cuRRent/interp_80/hyperon-pln_metta/common/MaybeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/common/MaybeTest.metta.html)|
|  4  |  0  | MaybeTest.metta.metta             |[reports/cuRRent/interp_88/hyperon-pln_metta/common/MaybeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/common/MaybeTest.metta.html)|
|  4  |  0  | superpose_nested.metta.metta      |[reports/cuRRent/interp_00/metta-morph_tests/superpose_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/superpose_nested.metta.html)|
|  4  |  0  | superpose_nested.metta.metta      |[reports/cuRRent/interp_1a/metta-morph_tests/superpose_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/superpose_nested.metta.html)|
|  4  |  0  | superpose_nested.metta.metta      |[reports/cuRRent/interp_77/metta-morph_tests/superpose_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/superpose_nested.metta.html)|
|  4  |  0  | superpose_nested.metta.metta      |[reports/cuRRent/interp_80/metta-morph_tests/superpose_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/superpose_nested.metta.html)|
|  4  |  0  | superpose_nested.metta.metta      |[reports/cuRRent/interp_88/metta-morph_tests/superpose_nested.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/superpose_nested.metta.html)|
|  3  |  0  | b3_direct.metta.metta             |[reports/cuRRent/interp_00/hyperon-experimental_scripts/b3_direct.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b3_direct.metta.html)|
|  3  |  0  | b3_direct.metta.metta             |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/b3_direct.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/b3_direct.metta.html)|
|  3  |  0  | e1_kb_write.metta.metta           |[reports/cuRRent/interp_00/hyperon-experimental_scripts/e1_kb_write.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e1_kb_write.metta.html)|
|  3  |  0  | f1_moduleA.metta.metta            |[reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_moduleA.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_moduleA.metta.html)|
|  3  |  0  | f1_moduleA.metta.metta            |[reports/cuRRent/interp_80/hyperon-experimental_scripts/f1_moduleA.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/f1_moduleA.metta.html)|
|  3  |  0  | f1_moduleA.metta.metta            |[reports/cuRRent/interp_88/hyperon-experimental_scripts/f1_moduleA.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/f1_moduleA.metta.html)|
|  3  |  0  | MaybeTest.metta.metta             |[reports/cuRRent/interp_1a/hyperon-pln_metta/common/MaybeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/common/MaybeTest.metta.html)|
|  2  |  0  | 01_lang_inc.metta.metta           |[reports/cuRRent/interp_00/hyperon-mettalog_sanity/01_lang_inc.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/01_lang_inc.metta.html)|
|  2  |  0  | 01_lang_inc.metta.metta           |[reports/cuRRent/interp_1a/hyperon-mettalog_sanity/01_lang_inc.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-mettalog_sanity/01_lang_inc.metta.html)|
|  2  |  0  | 01_lang_inc.metta.metta           |[reports/cuRRent/interp_80/hyperon-mettalog_sanity/01_lang_inc.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-mettalog_sanity/01_lang_inc.metta.html)|
|  2  |  0  | 01_lang_inc.metta.metta           |[reports/cuRRent/interp_88/hyperon-mettalog_sanity/01_lang_inc.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-mettalog_sanity/01_lang_inc.metta.html)|
|  2  |  0  | EqualityTypeTest.metta.metta      |[reports/cuRRent/interp_00/hyperon-pln_metta/common/EqualityTypeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/EqualityTypeTest.metta.html)|
|  2  |  0  | EqualityTypeTest.metta.metta      |[reports/cuRRent/interp_80/hyperon-pln_metta/common/EqualityTypeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/common/EqualityTypeTest.metta.html)|
|  2  |  0  | EqualityTypeTest.metta.metta      |[reports/cuRRent/interp_88/hyperon-pln_metta/common/EqualityTypeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/common/EqualityTypeTest.metta.html)|
|  2  |  0  | f1_moduleA.metta.metta            |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/f1_moduleA.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/f1_moduleA.metta.html)|
|  2  |  0  | let_superpose_list.metta.metta    |[reports/cuRRent/interp_00/metta-morph_tests/let_superpose_list.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/let_superpose_list.metta.html)|
|  2  |  0  | let_superpose_list.metta.metta    |[reports/cuRRent/interp_1a/metta-morph_tests/let_superpose_list.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/let_superpose_list.metta.html)|
|  2  |  0  | let_superpose_list.metta.metta    |[reports/cuRRent/interp_77/metta-morph_tests/let_superpose_list.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/let_superpose_list.metta.html)|
|  2  |  0  | let_superpose_list.metta.metta    |[reports/cuRRent/interp_80/metta-morph_tests/let_superpose_list.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/let_superpose_list.metta.html)|
|  2  |  0  | let_superpose_list.metta.metta    |[reports/cuRRent/interp_88/metta-morph_tests/let_superpose_list.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/let_superpose_list.metta.html)|
|  2  |  0  | ListTest.metta.metta              |[reports/cuRRent/interp_00/hyperon-pln_metta/hol/ListTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/hol/ListTest.metta.html)|
|  2  |  0  | ListTest.metta.metta              |[reports/cuRRent/interp_80/hyperon-pln_metta/hol/ListTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/hol/ListTest.metta.html)|
|  2  |  0  | ListTest.metta.metta              |[reports/cuRRent/interp_88/hyperon-pln_metta/hol/ListTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/hol/ListTest.metta.html)|
|  2  |  0  | NatTest.metta.metta               |[reports/cuRRent/interp_00/hyperon-pln_metta/hol/NatTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/hol/NatTest.metta.html)|
|  2  |  0  | NatTest.metta.metta               |[reports/cuRRent/interp_1a/hyperon-pln_metta/hol/NatTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/hol/NatTest.metta.html)|
|  2  |  0  | NatTest.metta.metta               |[reports/cuRRent/interp_80/hyperon-pln_metta/hol/NatTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/hol/NatTest.metta.html)|
|  2  |  0  | NatTest.metta.metta               |[reports/cuRRent/interp_88/hyperon-pln_metta/hol/NatTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/hol/NatTest.metta.html)|
|  2  |  0  | non-determinism.metta.metta       |[reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/non-determinism.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/non-determinism.metta.html)|
|  2  |  0  | non-determinism.metta.metta       |[reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/non-determinism.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/non-determinism.metta.html)|
|  2  |  0  | synthesize-via-unify-test-longer.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta.html)|
|  2  |  0  | synthesize-via-unify-test-longer.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta.html)|
|  2  |  0  | synthesize-via-unify-test-longer.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta.html)|
|  2  |  0  | synthesize-via-unify-test-longer.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta.html)|
|  2  |  0  | zeroargs.metta.metta              |[reports/cuRRent/interp_00/metta-morph_tests/zeroargs.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/zeroargs.metta.html)|
|  2  |  0  | zeroargs.metta.metta              |[reports/cuRRent/interp_1a/metta-morph_tests/zeroargs.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/zeroargs.metta.html)|
|  2  |  0  | zeroargs.metta.metta              |[reports/cuRRent/interp_77/metta-morph_tests/zeroargs.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/zeroargs.metta.html)|
|  2  |  0  | zeroargs.metta.metta              |[reports/cuRRent/interp_80/metta-morph_tests/zeroargs.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/zeroargs.metta.html)|
|  2  |  0  | zeroargs.metta.metta              |[reports/cuRRent/interp_88/metta-morph_tests/zeroargs.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/zeroargs.metta.html)|
|  1  |  0  | a2_opencoggy.metta.metta          |[reports/cuRRent/interp_00/hyperon-experimental_scripts/a2_opencoggy.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a2_opencoggy.metta.html)|
|  1  |  0  | a2_opencoggy.metta.metta          |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/a2_opencoggy.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/a2_opencoggy.metta.html)|
|  1  |  0  | a2_opencoggy.metta.metta          |[reports/cuRRent/interp_80/hyperon-experimental_scripts/a2_opencoggy.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/a2_opencoggy.metta.html)|
|  1  |  0  | a2_opencoggy.metta.metta          |[reports/cuRRent/interp_88/hyperon-experimental_scripts/a2_opencoggy.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/a2_opencoggy.metta.html)|
|  1  |  0  | add_atom_match.metta.metta        |[reports/cuRRent/interp_00/metta-morph_tests/add_atom_match.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/add_atom_match.metta.html)|
|  1  |  0  | add_atom_match.metta.metta        |[reports/cuRRent/interp_77/metta-morph_tests/add_atom_match.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/add_atom_match.metta.html)|
|  1  |  0  | add_atom_match.metta.metta        |[reports/cuRRent/interp_80/metta-morph_tests/add_atom_match.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/add_atom_match.metta.html)|
|  1  |  0  | and_or.metta.metta                |[reports/cuRRent/interp_00/metta-morph_tests/and_or.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/and_or.metta.html)|
|  1  |  0  | and_or.metta.metta                |[reports/cuRRent/interp_1a/metta-morph_tests/and_or.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/and_or.metta.html)|
|  1  |  0  | and_or.metta.metta                |[reports/cuRRent/interp_77/metta-morph_tests/and_or.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/and_or.metta.html)|
|  1  |  0  | and_or.metta.metta                |[reports/cuRRent/interp_80/metta-morph_tests/and_or.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/and_or.metta.html)|
|  1  |  0  | and_or.metta.metta                |[reports/cuRRent/interp_88/metta-morph_tests/and_or.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/and_or.metta.html)|
|  1  |  0  | collapse.metta.metta              |[reports/cuRRent/interp_00/metta-morph_tests/collapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/collapse.metta.html)|
|  1  |  0  | collapse.metta.metta              |[reports/cuRRent/interp_1a/metta-morph_tests/collapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/collapse.metta.html)|
|  1  |  0  | collapse.metta.metta              |[reports/cuRRent/interp_80/metta-morph_tests/collapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/collapse.metta.html)|
|  1  |  0  | collapse.metta.metta              |[reports/cuRRent/interp_88/metta-morph_tests/collapse.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/collapse.metta.html)|
|  1  |  0  | d5_auto_types.metta.metta         |[reports/cuRRent/interp_00/hyperon-experimental_scripts/d5_auto_types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d5_auto_types.metta.html)|
|  1  |  0  | d5_auto_types.metta.metta         |[reports/cuRRent/interp_1a/hyperon-experimental_scripts/d5_auto_types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-experimental_scripts/d5_auto_types.metta.html)|
|  1  |  0  | d5_auto_types.metta.metta         |[reports/cuRRent/interp_80/hyperon-experimental_scripts/d5_auto_types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-experimental_scripts/d5_auto_types.metta.html)|
|  1  |  0  | d5_auto_types.metta.metta         |[reports/cuRRent/interp_88/hyperon-experimental_scripts/d5_auto_types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-experimental_scripts/d5_auto_types.metta.html)|
|  1  |  0  | factorial.metta.metta             |[reports/cuRRent/interp_00/metta-morph_tests/factorial.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/factorial.metta.html)|
|  1  |  0  | factorial.metta.metta             |[reports/cuRRent/interp_1a/metta-morph_tests/factorial.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/factorial.metta.html)|
|  1  |  0  | factorial.metta.metta             |[reports/cuRRent/interp_77/metta-morph_tests/factorial.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/factorial.metta.html)|
|  1  |  0  | factorial.metta.metta             |[reports/cuRRent/interp_80/metta-morph_tests/factorial.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/factorial.metta.html)|
|  1  |  0  | factorial.metta.metta             |[reports/cuRRent/interp_88/metta-morph_tests/factorial.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/factorial.metta.html)|
|  1  |  0  | identity.metta.metta              |[reports/cuRRent/interp_00/metta-morph_tests/identity.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/identity.metta.html)|
|  1  |  0  | identity.metta.metta              |[reports/cuRRent/interp_1a/metta-morph_tests/identity.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/identity.metta.html)|
|  1  |  0  | identity.metta.metta              |[reports/cuRRent/interp_77/metta-morph_tests/identity.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/identity.metta.html)|
|  1  |  0  | identity.metta.metta              |[reports/cuRRent/interp_80/metta-morph_tests/identity.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/identity.metta.html)|
|  1  |  0  | identity.metta.metta              |[reports/cuRRent/interp_88/metta-morph_tests/identity.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/identity.metta.html)|
|  1  |  0  | if.metta.metta                    |[reports/cuRRent/interp_00/metta-morph_tests/if.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/if.metta.html)|
|  1  |  0  | if.metta.metta                    |[reports/cuRRent/interp_1a/metta-morph_tests/if.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/if.metta.html)|
|  1  |  0  | if.metta.metta                    |[reports/cuRRent/interp_77/metta-morph_tests/if.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/if.metta.html)|
|  1  |  0  | if.metta.metta                    |[reports/cuRRent/interp_80/metta-morph_tests/if.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/if.metta.html)|
|  1  |  0  | if.metta.metta                    |[reports/cuRRent/interp_88/metta-morph_tests/if.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/if.metta.html)|
|  1  |  0  | ImplicationDirectIntroductionEqualTest.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html)|
|  1  |  0  | ImplicationDirectIntroductionEqualTest.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html)|
|  1  |  0  | ImplicationDirectIntroductionEqualTest.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html)|
|  1  |  0  | ImplicationDirectIntroductionEqualTest.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html)|
|  1  |  0  | InTest.metta.metta                |[reports/cuRRent/interp_00/hyperon-pln_metta/common/InTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/InTest.metta.html)|
|  1  |  0  | InTest.metta.metta                |[reports/cuRRent/interp_1a/hyperon-pln_metta/common/InTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/common/InTest.metta.html)|
|  1  |  0  | InTest.metta.metta                |[reports/cuRRent/interp_80/hyperon-pln_metta/common/InTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/common/InTest.metta.html)|
|  1  |  0  | InTest.metta.metta                |[reports/cuRRent/interp_88/hyperon-pln_metta/common/InTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/common/InTest.metta.html)|
|  1  |  0  | letlet.metta.metta                |[reports/cuRRent/interp_00/metta-morph_tests/letlet.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/letlet.metta.html)|
|  1  |  0  | letlet.metta.metta                |[reports/cuRRent/interp_1a/metta-morph_tests/letlet.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/letlet.metta.html)|
|  1  |  0  | letlet.metta.metta                |[reports/cuRRent/interp_77/metta-morph_tests/letlet.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/letlet.metta.html)|
|  1  |  0  | letlet.metta.metta                |[reports/cuRRent/interp_80/metta-morph_tests/letlet.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/letlet.metta.html)|
|  1  |  0  | letlet.metta.metta                |[reports/cuRRent/interp_88/metta-morph_tests/letlet.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/letlet.metta.html)|
|  1  |  0  | let_superpose_list2.metta.metta   |[reports/cuRRent/interp_00/metta-morph_tests/let_superpose_list2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/let_superpose_list2.metta.html)|
|  1  |  0  | let_superpose_list2.metta.metta   |[reports/cuRRent/interp_1a/metta-morph_tests/let_superpose_list2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/let_superpose_list2.metta.html)|
|  1  |  0  | let_superpose_list2.metta.metta   |[reports/cuRRent/interp_77/metta-morph_tests/let_superpose_list2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/let_superpose_list2.metta.html)|
|  1  |  0  | let_superpose_list2.metta.metta   |[reports/cuRRent/interp_80/metta-morph_tests/let_superpose_list2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/let_superpose_list2.metta.html)|
|  1  |  0  | let_superpose_list2.metta.metta   |[reports/cuRRent/interp_88/metta-morph_tests/let_superpose_list2.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/let_superpose_list2.metta.html)|
|  1  |  0  | multifunction.metta.metta         |[reports/cuRRent/interp_00/metta-morph_tests/multifunction.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/multifunction.metta.html)|
|  1  |  0  | multifunction.metta.metta         |[reports/cuRRent/interp_1a/metta-morph_tests/multifunction.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/multifunction.metta.html)|
|  1  |  0  | multifunction.metta.metta         |[reports/cuRRent/interp_77/metta-morph_tests/multifunction.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/multifunction.metta.html)|
|  1  |  0  | multifunction.metta.metta         |[reports/cuRRent/interp_80/metta-morph_tests/multifunction.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/multifunction.metta.html)|
|  1  |  0  | multifunction.metta.metta         |[reports/cuRRent/interp_88/metta-morph_tests/multifunction.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/multifunction.metta.html)|
|  1  |  0  | nested_parameters.metta.metta     |[reports/cuRRent/interp_00/metta-morph_tests/nested_parameters.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/nested_parameters.metta.html)|
|  1  |  0  | nested_parameters.metta.metta     |[reports/cuRRent/interp_1a/metta-morph_tests/nested_parameters.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/nested_parameters.metta.html)|
|  1  |  0  | nested_parameters.metta.metta     |[reports/cuRRent/interp_77/metta-morph_tests/nested_parameters.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/nested_parameters.metta.html)|
|  1  |  0  | peano.metta.metta                 |[reports/cuRRent/interp_00/metta-morph_tests/peano.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/peano.metta.html)|
|  1  |  0  | peano.metta.metta                 |[reports/cuRRent/interp_1a/metta-morph_tests/peano.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/peano.metta.html)|
|  1  |  0  | peano.metta.metta                 |[reports/cuRRent/interp_77/metta-morph_tests/peano.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/peano.metta.html)|
|  1  |  0  | peano.metta.metta                 |[reports/cuRRent/interp_80/metta-morph_tests/peano.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/peano.metta.html)|
|  1  |  0  | peano.metta.metta                 |[reports/cuRRent/interp_88/metta-morph_tests/peano.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/peano.metta.html)|
|  1  |  0  | structure-tests.metta.metta       |[reports/cuRRent/interp_00/hyperon-mettalog_sanity/structure-tests.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/structure-tests.metta.html)|
|  1  |  0  | structure-tests.metta.metta       |[reports/cuRRent/interp_80/hyperon-mettalog_sanity/structure-tests.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-mettalog_sanity/structure-tests.metta.html)|
|  1  |  0  | structure-tests.metta.metta       |[reports/cuRRent/interp_88/hyperon-mettalog_sanity/structure-tests.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-mettalog_sanity/structure-tests.metta.html)|
|  1  |  0  | subtyping-test.metta.metta        |[reports/cuRRent/interp_00/hyperon-pln_metta/subtyping/subtyping-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/subtyping/subtyping-test.metta.html)|
|  1  |  0  | subtyping-test.metta.metta        |[reports/cuRRent/interp_1a/hyperon-pln_metta/subtyping/subtyping-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/subtyping/subtyping-test.metta.html)|
|  1  |  0  | subtyping-test.metta.metta        |[reports/cuRRent/interp_80/hyperon-pln_metta/subtyping/subtyping-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/subtyping/subtyping-test.metta.html)|
|  1  |  0  | subtyping-test.metta.metta        |[reports/cuRRent/interp_88/hyperon-pln_metta/subtyping/subtyping-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/subtyping/subtyping-test.metta.html)|
|  1  |  0  | types3.metta.metta                |[reports/cuRRent/interp_00/metta-morph_tests/types3.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/types3.metta.html)|
|  1  |  0  | types3.metta.metta                |[reports/cuRRent/interp_1a/metta-morph_tests/types3.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/types3.metta.html)|
|  1  |  0  | types3.metta.metta                |[reports/cuRRent/interp_77/metta-morph_tests/types3.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/types3.metta.html)|
|  1  |  0  | types3.metta.metta                |[reports/cuRRent/interp_80/metta-morph_tests/types3.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/types3.metta.html)|
|  1  |  0  | types3.metta.metta                |[reports/cuRRent/interp_88/metta-morph_tests/types3.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/types3.metta.html)|
|  1  |  0  | types.metta.metta                 |[reports/cuRRent/interp_00/metta-morph_tests/types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/types.metta.html)|
|  1  |  0  | types.metta.metta                 |[reports/cuRRent/interp_1a/metta-morph_tests/types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/types.metta.html)|
|  1  |  0  | types.metta.metta                 |[reports/cuRRent/interp_80/metta-morph_tests/types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/types.metta.html)|
|  1  |  0  | types.metta.metta                 |[reports/cuRRent/interp_88/metta-morph_tests/types.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/types.metta.html)|
|  0  |  0  | DeductionImplicationDirectIntroductionDTLTest.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta.html)|
|  0  |  0  | DeductionImplicationDirectIntroductionDTLTest.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta.html)|
|  0  |  0  | DeductionImplicationDirectIntroductionDTLTest.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta.html)|
|  0  |  0  | DeductionImplicationDirectIntroductionDTLTest.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta.html)|
|  0  |  0  | let_superpose_if_case.metta.metta |[reports/cuRRent/interp_00/metta-morph_tests/let_superpose_if_case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/let_superpose_if_case.metta.html)|
|  0  |  0  | let_superpose_if_case.metta.metta |[reports/cuRRent/interp_1a/metta-morph_tests/let_superpose_if_case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/metta-morph_tests/let_superpose_if_case.metta.html)|
|  0  |  0  | let_superpose_if_case.metta.metta |[reports/cuRRent/interp_77/metta-morph_tests/let_superpose_if_case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_77/metta-morph_tests/let_superpose_if_case.metta.html)|
|  0  |  0  | let_superpose_if_case.metta.metta |[reports/cuRRent/interp_80/metta-morph_tests/let_superpose_if_case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/metta-morph_tests/let_superpose_if_case.metta.html)|
|  0  |  0  | let_superpose_if_case.metta.metta |[reports/cuRRent/interp_88/metta-morph_tests/let_superpose_if_case.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/metta-morph_tests/let_superpose_if_case.metta.html)|
|  0  |  0  | NatSimpleTest.metta.metta         |[reports/cuRRent/interp_00/hyperon-pln_metta/hol/NatSimpleTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/hol/NatSimpleTest.metta.html)|
|  0  |  0  | NatSimpleTest.metta.metta         |[reports/cuRRent/interp_1a/hyperon-pln_metta/hol/NatSimpleTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/hol/NatSimpleTest.metta.html)|
|  0  |  0  | NatSimpleTest.metta.metta         |[reports/cuRRent/interp_80/hyperon-pln_metta/hol/NatSimpleTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/hol/NatSimpleTest.metta.html)|
|  0  |  0  | NatSimpleTest.metta.metta         |[reports/cuRRent/interp_88/hyperon-pln_metta/hol/NatSimpleTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/hol/NatSimpleTest.metta.html)|
|  0  |  0  | non-determinism.metta.metta       |[reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/non-determinism.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/non-determinism.metta.html)|
|  0  |  0  | non-determinism.metta.metta       |[reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/non-determinism.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/non-determinism.metta.html)|
|  0  |  0  | self-contained-synthesize.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/self-contained-synthesize.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/self-contained-synthesize.metta.html)|
|  0  |  0  | self-contained-synthesize.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/self-contained-synthesize.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/self-contained-synthesize.metta.html)|
|  0  |  0  | self-contained-synthesize.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/self-contained-synthesize.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/self-contained-synthesize.metta.html)|
|  0  |  0  | self-contained-synthesize.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/self-contained-synthesize.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/self-contained-synthesize.metta.html)|
|  0  |  0  | SynthesizeTest.metta.metta        |[reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/SynthesizeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/SynthesizeTest.metta.html)|
|  0  |  0  | SynthesizeTest.metta.metta        |[reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/SynthesizeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/SynthesizeTest.metta.html)|
|  0  |  0  | SynthesizeTest.metta.metta        |[reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/SynthesizeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/SynthesizeTest.metta.html)|
|  0  |  0  | SynthesizeTest.metta.metta        |[reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/SynthesizeTest.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/SynthesizeTest.metta.html)|
|  0  |  0  | synthesize-via-case-test.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta.html)|
|  0  |  0  | synthesize-via-case-test.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta.html)|
|  0  |  0  | synthesize-via-case-test.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta.html)|
|  0  |  0  | synthesize-via-case-test.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta.html)|
|  0  |  0  | synthesize-via-let-test.metta.metta|[reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta.html)|
|  0  |  0  | synthesize-via-let-test.metta.metta|[reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_1a/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta.html)|
|  0  |  0  | synthesize-via-let-test.metta.metta|[reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_80/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta.html)|
|  0  |  0  | synthesize-via-let-test.metta.metta|[reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_88/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta.html)|
|  0  |  0  | test_list_concatenation.metta.metta|[reports/cuRRent/performance/test_list_concatenation.metta.html](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/performance/test_list_concatenation.metta.html)|

</details>
 
 
| STATUS | TEST NAME | TEST CONDITION | ACTUAL RESULT | EXPECTED RESULT |
|--------|-----------|----------------|---------------|-----------------|
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(- |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(* |||||
(* |||||
(* |||||
(* |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(<= |||||
(→ |||||
(→ |||||
(∧ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(:: |||||
(:: |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(∧ |||||
(∧ |||||
(∧ |||||
(⟹ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(/ |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(< |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(→ |||||
(∧ |||||
(∧ |||||
(∧ |||||
(∧ |||||
(∧ |||||
(∧ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(⍃ |||||
(⍃ |||||
(⍃ |||||
(⍃ |||||
(⍃ |||||
(⟹ |||||
(⟹ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(+ |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(∧ |||||
(∧ |||||
(∧ |||||
(∧ |||||
(∧ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(⍃ |||||
(⍃ |||||
(⍃ |||||
(⍃ |||||
(⍃ |||||
(⟹ |||||
(⟹ |||||
(⟹ |||||
(⟹ |||||
(. |||||
(. |||||
(: -> |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(== |||||
(== |||||
(⟹ |||||
(⟹ |||||
(⟹ |||||
(⟹ |||||
(⟹ |||||
... | ||||
... | ||||
(+ |||||
(. |||||
(... | ||||
(: |||||
(: |||||
(: |||||
(:: |||||
(:: |||||
(:: |||||
(:: |||||
(= |||||
(= |||||
(== |||||
(=== |||||
(=== |||||
(∧ |||||
(∧ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
... | () ||||
... | () ||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
(. |||||
(. |||||
(. |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(:: |||||
(:: |||||
(:= |||||
(:= |||||
(:= |||||
(:= |||||
(:= |||||
(:= |||||
(:= |||||
(:= |||||
(:= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(== |||||
(=== |||||
(=== |||||
(∧ |||||
(∧ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(≞ |||||
(⍃ |||||
(⍃ |||||
(⍃ |||||
... | ||||
(+ |||||
(. |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(: |||||
(:: |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(= |||||
(== |||||
(== |||||
(== |||||
(== |||||
(⊢ |||||
... | ||||
... | ||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (: |||||
( (≞ |||||
( (≞ |||||
( (⊢ |||||
( (⊢ |||||
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
(()) |||||
(... |||||
... | ||||
... | ||||
(: $_... | ||||
(: $_12600 |||||
(: $_12600 |||||
(: $_12600 |||||
(: $_12600 |||||
( ( (: $_12600 |||||
( ( (: $_12600 |||||
( ( (: $_12600 |||||
( ( (: $_12600 |||||
(<= $_12666 |||||
(<= $_12666 |||||
(<= $_12666 |||||
(<= $_12666 |||||
(* $_12666 $_12894) |||||
(* $_12666 $_12894) |||||
(* $_12666 $_12894) |||||
(* $_12666 $_12894) |||||
(: $_12828 |||||
(: $_12828 |||||
(: $_12828 |||||
(: $_12828 |||||
( (: $_12828 |||||
( (: $_12828 |||||
( (: $_12828 |||||
( (: $_12828 |||||
(<= $_12894 |||||
(<= $_12894 |||||
(<= $_12894 |||||
(<= $_12894 |||||
(: $_16978 |||||
( ( (: $_16978 |||||
(: $_17884 |||||
(: $_17884 |||||
( ( (: $_17884 |||||
( ( (: $_17884 |||||
(-> $_180406 String)) |||||
(: $_18820 |||||
(: $_18820 |||||
(: $_18820 |||||
( (: $_18820 |||||
( (: $_18820 |||||
( ( (: $_18820 |||||
(⍃ $_18898 |||||
(⍃ $_18898 |||||
(⍃ $_18898 |||||
(⍃ $_18898 |||||
(⍃ $_18898 |||||
(⍃ $_18898 |||||
(:: $_18898 $_18916) |||||
(:: $_18898 $_18916) |||||
(:: $_18898 $_18916) |||||
(:: $_18898 $_18916) |||||
(:: $_18898 $_18916) |||||
(:: $_18898 $_18916) |||||
(:: $_18898 $_18916)) |||||
(:: $_18898 $_18916)) |||||
(:: $_18898 $_18916)) |||||
(* $_18946 |||||
(* $_18946 |||||
(* $_18946 |||||
(* $_18964 |||||
(* $_18964 |||||
(* $_18964 |||||
(* $_18964 |||||
(* $_18964 |||||
(* $_18964 |||||
(* $_18964 |||||
(* $_18964 |||||
(* $_18964 |||||
(* $_18964 |||||
(* $_18964 |||||
(* $_18964 |||||
(: $_19144 |||||
(: $_19144 |||||
(: $_19144 |||||
( (: $_19144 |||||
( (: $_19144 |||||
( (: $_19144 |||||
(: $_20542 |||||
(: $_20542 |||||
( ( (: $_20542 |||||
( ( (: $_20542 |||||
( (: $_205700 |||||
(: $_22240 |||||
( ( (: $_22240 |||||
(: $_23182 |||||
(: $_23182 |||||
( ( (: $_23182 |||||
( ( (: $_23182 |||||
(+ $_234496 2))) |||||
(+ $_234496 2))) | ||||
(. $_23736 h) |||||
(-> $_23760 String)) |||||
(: $_24190 |||||
(: $_24190 |||||
(: $_24190 |||||
(: $_24190 |||||
(: $_24190 |||||
(: $_24190 |||||
(: $_24190 |||||
( (: $_24190 |||||
( (: $_24190 |||||
( ( (: $_24190 |||||
( ( (: $_24190 |||||
( ( (: $_24190 |||||
( ( (: $_24190 |||||
( ( (: $_24190 |||||
(: $_24574 |||||
( ( (: $_24574 |||||
(: $_24766 |||||
(: $_24766 |||||
(: $_24766 |||||
( (: $_24766 |||||
( ( (: $_24766 |||||
( ( (: $_24766 |||||
(⍃ $_24844 |||||
(⍃ $_24844 |||||
(⍃ $_24844 |||||
(⍃ $_24844 |||||
(⍃ $_24844 |||||
(⍃ $_24844 |||||
(:: $_24844 $_24862) |||||
(:: $_24844 $_24862) |||||
(:: $_24844 $_24862) |||||
(:: $_24844 $_24862) |||||
(:: $_24844 $_24862) |||||
(:: $_24844 $_24862) |||||
(:: $_24844 $_24862)) |||||
(:: $_24844 $_24862)) |||||
(:: $_24844 $_24862)) |||||
(* $_24892 |||||
(* $_24892 |||||
(* $_24892 |||||
(* $_24910 |||||
(* $_24910 |||||
(* $_24910 |||||
(* $_24910 |||||
(* $_24910 |||||
(* $_24910 |||||
(* $_24910 |||||
(* $_24910 |||||
(* $_24910 |||||
(* $_24910 |||||
(* $_24910 |||||
(* $_24910 |||||
(: $_25090 |||||
(: $_25090 |||||
(: $_25090 |||||
( (: $_25090 |||||
( (: $_25090 |||||
( (: $_25090 |||||
( (: $_271110 |||||
(. $_2944 $_2962) |||||
(: $_32386 |||||
(: $_32386 |||||
( ( (: $_32386 |||||
( ( (: $_32386 |||||
(: $_32638 |||||
(: $_32638 |||||
( (: $_32638 |||||
( (: $_32638 |||||
(⍃ $_32716 |||||
(⍃ $_32716 |||||
(⍃ $_32716 |||||
(⍃ $_32716 |||||
(:: $_32716 $_32734) |||||
(:: $_32716 $_32734) |||||
(:: $_32716 $_32734) |||||
(:: $_32716 $_32734) |||||
(:: $_32716 $_32734)) |||||
(:: $_32716 $_32734)) |||||
(* $_32764 |||||
(* $_32764 |||||
(* $_32782 |||||
(* $_32782 |||||
(* $_32782 |||||
(* $_32782 |||||
(* $_32782 |||||
(* $_32782 |||||
(* $_32782 |||||
(* $_32782 |||||
(: $_3542 |||||
( ( (: $_3542 |||||
(-> $_356204 Bool))... | ||||
(: $_36694 |||||
( ( (: $_36694 |||||
(: $_36922 |||||
( (: $_36922 |||||
(⍃ $_37000 |||||
(⍃ $_37000 |||||
(:: $_37000 $_37018) |||||
(:: $_37000 $_37018) |||||
(:: $_37000 $_37018)) |||||
(* $_37048 |||||
(* $_37066 |||||
(* $_37066 |||||
(* $_37066 |||||
(* $_37066 |||||
(: $_37282 |||||
( (: $_37282 |||||
(: $_3956 |||||
( ( (: $_3956 |||||
(: $_409490 $_4094... | ||||
( (: $_409490 $_409496) Z) |||||
( (: $_426354 $_426360) |||||
(: $_4710 |||||
( ( (: $_4710 |||||
(⟹ $_4740 |||||
(⟹ $_4740 |||||
(. $_500844 h) |||||
( (: $_5046 $_4740) |||||
(: $_5046 $_4740) kb rb |||||
(: $_5240 |||||
( ( (: $_5240 |||||
(⟹ $_5270 |||||
(⟹ $_5270 |||||
( (: $_5636 $_5270) |||||
(: $_5636 $_5270) kb rb |||||
(: $_7914 |||||
(: $_7914 |||||
(: $_7914 |||||
(: $_7914 |||||
(: $_7914 |||||
(: $_7914 |||||
(: $_7914 |||||
(: $_7914 |||||
( ( (: $_7914 |||||
( ( (: $_7914 |||||
( ( (: $_7914 |||||
( ( (: $_7914 |||||
( ( (: $_7914 |||||
( ( (: $_7914 |||||
( ( (: $_7914 |||||
( ( (: $_7914 |||||
(* $_8016 0.99) |||||
(* $_8016 0.99) |||||
(* $_8016 0.99) |||||
(* $_8016 0.99) |||||
(* $_8016 0.99) |||||
(* $_8016 0.99) |||||
(* $_8016 0.99) |||||
(* $_8016 0.99) |||||
(< $_8034 1) $_8034 1) 0.99) |||||
(< $_8034 1) $_8034 1) 0.99) |||||
(< $_8034 1) $_8034 1) 0.99) |||||
(< $_8034 1) $_8034 1) 0.99) |||||
(< $_8034 1) $_8034 1) 0.99) |||||
(< $_8034 1) $_8034 1) 0.99) |||||
(< $_8034 1) $_8034 1) 0.99) |||||
(< $_8034 1) $_8034 1) 0.99) |||||
(< $_8034 1) $_8034 1) 0.99))))) |||||
(< $_8034 1) $_8034 1) 0.99))))) |||||
(< $_8034 1) $_8034 1) 0.99))))) |||||
(< $_8034 1) $_8034 1) 0.99))))) |||||
(< $_8034 1) $_8034 1) 0.99))))) |||||
(< $_8034 1) $_8034 1) 0.99))))) |||||
(< $_8034 1) $_8034 1) 0.99))))) |||||
(< $_8034 1) $_8034 1) 0.99)))))) |||||
( (: $_85478 |||||
(-> $A $B) |||||
($A mortal) |||||
(-> $B $C) |||||
($Color $Who) $Tv) |||||
($Color $Who) T) |||||
( ( ($F1 $C1) $T)) |||||
(. $G h) |||||
(. $G h) |||||
($Gy |||||
( ($Gy |||||
(-> $In Bool)) |||||
(-> $In String)) |||||
(-> $In String)) |||||
($Obj is $Prop) |||||
($Obj is $Prop) |||||
($Obj is-a Planet)) |||||
($Obj is-a Planet)) |||||
( ($P |||||
($P $A) $Patv) |||||
($P $X) |||||
($P $X) |||||
($P $X) |||||
( ($Pa |||||
($Pq |||||
($Pq |||||
(-> $Premise1 $Premise2 $Conclusion)) |||||
(: $Prf |||||
(: $Prf |||||
(: $Prf |||||
(: $Prf |||||
(: $Prf |||||
(: $Prf |||||
(: $Prf |||||
(: $Prf |||||
(: $Prf B) |||||
(: $Prf C) |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
(: $Proof |||||
($Prop is-a Color) |||||
($Prop is-a Color) |||||
($Prop is-a Color) |||||
($Q |||||
($Qa |||||
($Qr |||||
($R |||||
(:= $R $R2) $R2))) |   ( (S ||||
( ($R1 |||||
($R2 |||||
($R3 |||||
($Rel $X)) |||||
($Rel $X)) |||||
($Rel $X)) |||||
($Rel $X))) |   ( (Rel-P B) ||||
($Rel A $X) |||||
($Rel A $X) |||||
($Rel A $X))) |   ( (Rel-P A B) ||||
($Rel A_Each $X) |||||
($Rel A_List $X) |||||
($Rel B $X) |||||
($Rel B_Each $X) |||||
($Rel B_List $X) |||||
( ( (: $Ructor |||||
($S $EV) |||||
($SS A_Each $X) |||||
($SS A_List $X) |||||
( (: $Term |||||
( (: $Term |||||
( (: $Term |||||
( (: $Term $Type) |||||
( (: $Term $Type) Z))) |   ( (â· synthesize ||||
($Who is a $What) |||||
($Who is really $Color))) |   ( (Sam is really Green) ||||
($Who the $What))) |   ( (Sam the frog) ||||
( ($X |||||
( ($X |||||
( ($X |||||
(+ $X $Y)) |||||
($X $Y) |||||
(+ $X 2))) |   ( (> 4 ||||
(-> $X B) |||||
(-> $X B) |||||
( ($X leaf2) leaf3) $X)) |   (leaf1 ||||
($Y |||||
($Z |||||
( ($Z |||||
( ($Z |||||
($Z C)) |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(> 0 |||||
(* 0 |||||
(:: 0 |||||
(:: 0 |||||
(0) |||||
(< 0 0.5) |||||
(< 0 0.5) |||||
(< 0 0.5) |||||
(< 0 0.5) |||||
(< 0 0.5) |||||
(< 0 0.7) |||||
(< 0 0.8) |||||
(< 0 0.9) |||||
(0 1) |||||
(0.1) |||||
(0.1) |||||
(0.14) |||||
(0.14) |||||
(* 0.2 |||||
(* 0.2 |||||
(* 0.2 |||||
(* 0.2 |||||
(* 0.2 |||||
(* 0.2 |||||
(* 0.2 |||||
(* 0.2 |||||
(0.2) |||||
(0.2) |||||
(* 0.5 |||||
(* 0.5 |||||
(* 0.5 |||||
(* 0.5 |||||
(* 0.5 |||||
(* 0.5 |||||
(* 0.5 |||||
(* 0.5 |||||
(* 0.5 |||||
(* 0.5 |||||
(* 0.5 |||||
(* 0.5 |||||
(* 0.5 |||||
(* 0.5 |||||
(0.5) |||||
(* 0.5 $_12894))) |||||
(/ 0.5 0.5)))))) |||||
(/ 0.5 0.5))) 0 |||||
(/ 0.5 0.5)) 1 |||||
(/ 0.5 0.5)) 1 |||||
(+ 0.5 0.5) 1) 0.5))) $_12666) |||||
(+ 0.5 0.5) 1) 0.5))) 0 |||||
(+ 0.5 0.5) 1) 0.5)) 1 |||||
(+ 0.5 0.5) 1) 0.5)) 1 |||||
(+ 0.5 0.7) 1) 0.5))) $_12666) |||||
(+ 0.5 0.7) 1) 0.5))) $_12894) |||||
(+ 0.5 0.7) 1) 0.5))) 0 |||||
(+ 0.5 0.7) 1) 0.5))) 0 |||||
(+ 0.5 0.7) 1) 0.5)) 1 |||||
(+ 0.5 0.7) 1) 0.5)) 1 |||||
(+ 0.5 0.7) 1) 0.5)) 1 |||||
(+ 0.5 0.7) 1) 0.5)) 1 |||||
(+ 0.5 0.8) 1) 0.5))) $_12666) |||||
(+ 0.5 0.8) 1) 0.5))) 0 |||||
(+ 0.5 0.8) 1) 0.5)) 1 |||||
(+ 0.5 0.8) 1) 0.5)) 1 |||||
(+ 0.5 0.9) 1) 0.5))) $_12666) |||||
(+ 0.5 0.9) 1) 0.5))) 0 |||||
(+ 0.5 0.9) 1) 0.5)) 1 |||||
(+ 0.5 0.9) 1) 0.5)) 1 |||||
(0.5555555555555556) |||||
(* 0.6666666666666666 |||||
(* 0.6666666666666666 |||||
(* 0.6666666666666666 |||||
(* 0.6666666666666666 |||||
(* 0.6666666666666666 |||||
(* 0.6666666666666666 |||||
(* 0.6666666666666666 |||||
(* 0.6666666666666666 |||||
(- 0.7 |||||
(- 0.7 |||||
(- 0.7 |||||
(- 0.7 |||||
(* 0.7 $_12894))) |||||
(/ 0.7 0.5)))))) |||||
(/ 0.7 0.5))))))) |||||
(/ 0.7 0.5))) 0 |||||
(/ 0.7 0.5))) 0 |||||
(/ 0.7 0.5)) 1 |||||
(/ 0.7 0.5)) 1 |||||
(/ 0.7 0.5)) 1 |||||
(/ 0.7 0.5)) 1 |||||
(/ 0.7 0.7))))))) |||||
(/ 0.7 0.7))) 0 |||||
(/ 0.7 0.7)) 1 |||||
(/ 0.7 0.7)) 1 |||||
(+ 0.7 0.7) 1) 0.7))) $_12894) |||||
(+ 0.7 0.7) 1) 0.7))) 0 |||||
(+ 0.7 0.7) 1) 0.7)) 1 |||||
(+ 0.7 0.7) 1) 0.7)) 1 |||||
(/ 0.7 0.8))))))) |||||
(/ 0.7 0.8))) 0 |||||
(/ 0.7 0.8)) 1 |||||
(/ 0.7 0.8)) 1 |||||
(/ 0.7 0.9))))))) |||||
(/ 0.7 0.9))) 0 |||||
(/ 0.7 0.9)) 1 |||||
(/ 0.7 0.9)) 1 |||||
(0.8) |||||
(* 0.8 $_12894))) |||||
(/ 0.8 0.5)))))) |||||
(/ 0.8 0.5))) 0 |||||
(/ 0.8 0.5)) 1 |||||
(/ 0.8 0.5)) 1 |||||
(+ 0.8 0.7) 1) 0.8))) $_12894) |||||
(+ 0.8 0.7) 1) 0.8))) 0 |||||
(+ 0.8 0.7) 1) 0.8)) 1 |||||
(+ 0.8 0.7) 1) 0.8)) 1 |||||
(* 0.9 $_12894))) |||||
(/ 0.9 0.5)))))) |||||
(/ 0.9 0.5))) 0 |||||
(/ 0.9 0.5)) 1 |||||
(/ 0.9 0.5)) 1 |||||
(+ 0.9 0.7) 1) 0.9))) $_12894) |||||
(+ 0.9 0.7) 1) 0.9))) 0 |||||
(+ 0.9 0.7) 1) 0.9)) 1 |||||
(+ 0.9 0.7) 1) 0.9)) 1 |||||
(0.9090909090909091) |||||
(< 0.9999 0.5) 0.7 |||||
(< 0.9999 0.7) 0.7 |||||
(< 0.9999 0.8) 0.7 |||||
(< 0.9999 0.9) 0.7 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(* -1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(< 1 |||||
(* 1 |||||
(* 1 |||||
(+ 1 |||||
(1)) |||||
(+ 1 |||||
(+ 1 |||||
(+ 1 |||||
(+ 1 |||||
(+ 1 |||||
( (:: 1 |||||
( (:: 1 |||||
( (:: 1 |||||
( (:: 1 |||||
( (1) |||||
(1) |||||
(1) |||||
(1) |||||
(1) |||||
(- 1 $_12666) |||||
(- 1 $_12666) |||||
(- 1 $_12666) |||||
(- 1 $_12666) |||||
(10) |||||
(- 1.0 $_18964)) |||||
(- 1.0 $_18964)) |||||
(- 1.0 $_18964)) |||||
(- 1.0 $_18964)) |||||
(- 1.0 $_18964)) |||||
(- 1.0 $_18964)) |||||
(- 1.0 $_18964)) |||||
(- 1.0 $_18964)) |||||
(- 1.0 $_18964)) |||||
(- 1.0 $_18964)) |||||
(- 1.0 $_18964)) |||||
(- 1.0 $_18964)) |||||
(- 1.0 $_18964)))) |||||
(- 1.0 $_18964)))) |||||
(- 1.0 $_18964)))) |||||
(- 1.0 $_18964) 0) |||||
(- 1.0 $_18964) 0) |||||
(- 1.0 $_18964) 0) |||||
(- 1.0 $_18964) 0) |||||
(- 1.0 $_18964) 0) |||||
(- 1.0 $_18964) 0) |||||
(- 1.0 $_18964) 0) |||||
(- 1.0 $_18964) 0) |||||
(- 1.0 $_18964) 0) |||||
(- 1.0 $_18964) 0) |||||
(- 1.0 $_18964) 0) |||||
(- 1.0 $_18964) 0) |||||
(- 1.0 $_18964))) 1) |||||
(- 1.0 $_18964))) 1) |||||
(- 1.0 $_18964))) 1) |||||
(- 1.0 $_18964))) 1)) |||||
(- 1.0 $_18964))) 1)) |||||
(- 1.0 $_18964))) 1)) |||||
(- 1.0 $_18964)) 1.0e-9) |||||
(- 1.0 $_18964)) 1.0e-9) |||||
(- 1.0 $_18964)) 1.0e-9) |||||
(- 1.0 $_18964)) 1.0e-9) |||||
(- 1.0 $_18964)) 1.0e-9) |||||
(- 1.0 $_18964)) 1.0e-9) |||||
(- 1.0 $_18964)) 1.0e-9) |||||
(- 1.0 $_18964)) 1.0e-9) |||||
(- 1.0 $_18964)) 1.0e-9) |||||
(- 1.0 $_18964)) 1.0e-9) |||||
(- 1.0 $_18964)) 1.0e-9) |||||
(- 1.0 $_18964)) 1.0e-9) |||||
(- 1.0 $_18964))) 1) 1.0))))))) |||||
(- 1.0 $_18964))) 1) 1.0))))))) |||||
(- 1.0 $_18964))) 1) 1.0))))))) |||||
(- 1.0 $_24910)) |||||
(- 1.0 $_24910)) |||||
(- 1.0 $_24910)) |||||
(- 1.0 $_24910)) |||||
(- 1.0 $_24910)) |||||
(- 1.0 $_24910)) |||||
(- 1.0 $_24910)) |||||
(- 1.0 $_24910)) |||||
(- 1.0 $_24910)) |||||
(- 1.0 $_24910)) |||||
(- 1.0 $_24910)) |||||
(- 1.0 $_24910)) |||||
(- 1.0 $_24910) 0) |||||
(- 1.0 $_24910) 0) |||||
(- 1.0 $_24910) 0) |||||
(- 1.0 $_24910) 0) |||||
(- 1.0 $_24910) 0) |||||
(- 1.0 $_24910) 0) |||||
(- 1.0 $_24910) 0) |||||
(- 1.0 $_24910) 0) |||||
(- 1.0 $_24910) 0) |||||
(- 1.0 $_24910) 0) |||||
(- 1.0 $_24910) 0) |||||
(- 1.0 $_24910) 0) |||||
(- 1.0 $_24910)))) 1) |||||
(- 1.0 $_24910)))) 1) |||||
(- 1.0 $_24910)))) 1) |||||
(- 1.0 $_24910))) 1) |||||
(- 1.0 $_24910))) 1) |||||
(- 1.0 $_24910))) 1) |||||
(- 1.0 $_24910))) 1)) |||||
(- 1.0 $_24910))) 1)) |||||
(- 1.0 $_24910))) 1)) |||||
(- 1.0 $_24910)) 1.0e-9) |||||
(- 1.0 $_24910)) 1.0e-9) |||||
(- 1.0 $_24910)) 1.0e-9) |||||
(- 1.0 $_24910)) 1.0e-9) |||||
(- 1.0 $_24910)) 1.0e-9) |||||
(- 1.0 $_24910)) 1.0e-9) |||||
(- 1.0 $_24910)) 1.0e-9) |||||
(- 1.0 $_24910)) 1.0e-9) |||||
(- 1.0 $_24910)) 1.0e-9) |||||
(- 1.0 $_24910)) 1.0e-9) |||||
(- 1.0 $_24910)) 1.0e-9) |||||
(- 1.0 $_24910)) 1.0e-9) |||||
(- 1.0 $_24910))) 1) 1.0))))))) |||||
(- 1.0 $_24910))) 1) 1.0))))))) |||||
(- 1.0 $_24910))) 1) 1.0)))))))) |||||
(- 1.0 $_32782)) |||||
(- 1.0 $_32782)) |||||
(- 1.0 $_32782)) |||||
(- 1.0 $_32782)) |||||
(- 1.0 $_32782)) |||||
(- 1.0 $_32782)) |||||
(- 1.0 $_32782)) |||||
(- 1.0 $_32782)) |||||
(- 1.0 $_32782)))) |||||
(- 1.0 $_32782)))) |||||
(- 1.0 $_32782) 0) |||||
(- 1.0 $_32782) 0) |||||
(- 1.0 $_32782) 0) |||||
(- 1.0 $_32782) 0) |||||
(- 1.0 $_32782) 0) |||||
(- 1.0 $_32782) 0) |||||
(- 1.0 $_32782) 0) |||||
(- 1.0 $_32782) 0) |||||
(- 1.0 $_32782))) 1) |||||
(- 1.0 $_32782))) 1) |||||
(- 1.0 $_32782))) 1)) |||||
(- 1.0 $_32782))) 1)) |||||
(- 1.0 $_32782)) 1.0e-9) |||||
(- 1.0 $_32782)) 1.0e-9) |||||
(- 1.0 $_32782)) 1.0e-9) |||||
(- 1.0 $_32782)) 1.0e-9) |||||
(- 1.0 $_32782)) 1.0e-9) |||||
(- 1.0 $_32782)) 1.0e-9) |||||
(- 1.0 $_32782)) 1.0e-9) |||||
(- 1.0 $_32782)) 1.0e-9) |||||
(- 1.0 $_32782))) 1) 1.0))))))) |||||
(- 1.0 $_32782))) 1) 1.0))))))) |||||
(- 1.0 $_37066)) |||||
(- 1.0 $_37066)) |||||
(- 1.0 $_37066)) |||||
(- 1.0 $_37066)) |||||
(- 1.0 $_37066) 0) |||||
(- 1.0 $_37066) 0) |||||
(- 1.0 $_37066) 0) |||||
(- 1.0 $_37066) 0) |||||
(- 1.0 $_37066)))) 1) |||||
(- 1.0 $_37066))) 1) |||||
(- 1.0 $_37066))) 1)) |||||
(- 1.0 $_37066)) 1.0e-9) |||||
(- 1.0 $_37066)) 1.0e-9) |||||
(- 1.0 $_37066)) 1.0e-9) |||||
(- 1.0 $_37066)) 1.0e-9) |||||
(- 1.0 $_37066))) 1) 1.0)))))))) |||||
(1.0 0.0))) | ||||
( ( (1.0 0.37946790052053214) |||||
(- 1.0 0.5)) |||||
(- 1.0 0.5)) |||||
(- 1.0 0.5)) |||||
(- 1.0 0.5)) |||||
(- 1.0 0.5)) |||||
(- 1.0 0.5)) |||||
(- 1.0 0.5)) |||||
(- 1.0 0.5)) |||||
(- 1.0 0.5)) |||||
(- 1.0 0.5)) |||||
(- 1.0 0.5)) |||||
(- 1.0 0.5)) |||||
(- 1.0 0.5)))) |||||
(- 1.0 0.5)))) |||||
(- 1.0 0.5)))) |||||
(- 1.0 0.5) 0) |||||
(- 1.0 0.5) 0) |||||
(- 1.0 0.5) 0) |||||
(- 1.0 0.5) 0) |||||
(- 1.0 0.5) 0) |||||
(- 1.0 0.5) 0) |||||
(- 1.0 0.5) 0) |||||
(- 1.0 0.5) 0) |||||
(- 1.0 0.5) 0) |||||
(- 1.0 0.5) 0) |||||
(- 1.0 0.5) 0) |||||
(- 1.0 0.5) 0) |||||
(- 1.0 0.5))) 1) |||||
(- 1.0 0.5))) 1) |||||
(- 1.0 0.5))) 1) |||||
(- 1.0 0.5))) 1)) |||||
(- 1.0 0.5))) 1)) |||||
(- 1.0 0.5))) 1)) |||||
(- 1.0 0.5)) 1.0e-9) |||||
(- 1.0 0.5)) 1.0e-9) |||||
(- 1.0 0.5)) 1.0e-9) |||||
(- 1.0 0.5)) 1.0e-9) |||||
(- 1.0 0.5)) 1.0e-9) |||||
(- 1.0 0.5)) 1.0e-9) |||||
(- 1.0 0.5)) 1.0e-9) |||||
(- 1.0 0.5)) 1.0e-9) |||||
(- 1.0 0.5)) 1.0e-9) |||||
(- 1.0 0.5)) 1.0e-9) |||||
(- 1.0 0.5)) 1.0e-9) |||||
(- 1.0 0.5)) 1.0e-9) |||||
(- 1.0 0.5))) 1) 1.0))))))) |||||
(- 1.0 0.5))) 1) 1.0))))))) |||||
(- 1.0 0.5))) 1) 1.0))))))) |||||
(1.0 0.618320610687023))) |||||
(- 1.0 0.6666666666666666)) |||||
(- 1.0 0.6666666666666666)) |||||
(- 1.0 0.6666666666666666)) |||||
(- 1.0 0.6666666666666666)) |||||
(- 1.0 0.6666666666666666)) |||||
(- 1.0 0.6666666666666666)) |||||
(- 1.0 0.6666666666666666)) |||||
(- 1.0 0.6666666666666666)) |||||
(- 1.0 0.6666666666666666)))) |||||
(- 1.0 0.6666666666666666)))) |||||
(- 1.0 0.6666666666666666) 0) |||||
(- 1.0 0.6666666666666666) 0) |||||
(- 1.0 0.6666666666666666) 0) |||||
(- 1.0 0.6666666666666666) 0) |||||
(- 1.0 0.6666666666666666) 0) |||||
(- 1.0 0.6666666666666666) 0) |||||
(- 1.0 0.6666666666666666) 0) |||||
(- 1.0 0.6666666666666666) 0) |||||
(- 1.0 0.6666666666666666))) 1) |||||
(- 1.0 0.6666666666666666))) 1) |||||
(- 1.0 0.6666666666666666))) 1)) |||||
(- 1.0 0.6666666666666666))) 1)) |||||
(- 1.0 0.6666666666666666)) 1.0e-9) |||||
(- 1.0 0.6666666666666666)) 1.0e-9) |||||
(- 1.0 0.6666666666666666)) 1.0e-9) |||||
(- 1.0 0.6666666666666666)) 1.0e-9) |||||
(- 1.0 0.6666666666666666)) 1.0e-9) |||||
(- 1.0 0.6666666666666666)) 1.0e-9) |||||
(- 1.0 0.6666666666666666)) 1.0e-9) |||||
(- 1.0 0.6666666666666666)) 1.0e-9) |||||
(- 1.0 0.6666666666666666))) 1) 1.0))))))) |||||
(- 1.0 0.6666666666666666))) 1) 1.0))))))) |||||
( (1.0 0.81)) |||||
(1.0 0.9)) |||||
(1.0 0.9) |||||
(1.0 0.9) |||||
( (1.0 0.9)) |||||
(10 11 12 13 14 15) |||||
(102) |||||
(102) |||||
(102) |||||
(103) |||||
(103) |||||
(103) |||||
( (10 4) |||||
( (10 4) |||||
(- 1 0.5)))) |||||
(10 5)) |||||
(10 5)) |||||
(10 5)) | ||||
(10 5)) | ||||
(- 1 0.7)))) |||||
(- 1 0.8)))) |||||
(- 1 0.9)))) |||||
(- 1 0.99))) |||||
(- 1 0.99))) |||||
(- 1 0.99))) |||||
(- 1 0.99))) |||||
(- 1 0.99))) |||||
(- 1 0.99))) |||||
(- 1 0.99))) |||||
(- 1 0.99))) |||||
(+ 1 1) |||||
(> 1 2) |||||
( (1 2)) |||||
(1 2) |||||
(1 2) |||||
(120) |||||
(120) |||||
(12 102) |||||
(12 102) |||||
(1 2 3))) |||||
(1 2 3))) |||||
( ( (1 2 3))) |||||
(1 2 3)))) |   ( (1) ||||
(1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3)) |||||
( (1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 4 5 6 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9 7 8 9)) |||||
( (1 2 3 4 5 6 7 8 9)) |||||
(+ 1 5) |||||
(+ 1 5) |||||
(16) |||||
(16 17 18 19 20 21) |||||
(1764) |||||
(18.5) |||||
( (:: 1 â)) |||||
(:: 1 nil)))) |||||
(:: 1 nil)))) | ||||
(+ 2 |||||
(:: 2 |||||
(:: 2 |||||
(:: 2 |||||
(:: 2 |||||
(+ 2 |||||
(2) |||||
(2) |||||
(2) |||||
(2) |||||
(2) |||||
(2) |||||
( (* 2 $_208684)) |||||
(2 1 3 4))) |||||
(+ 2 3) |||||
(2 3) |||||
(2 3 4) |||||
(2 3 4) |||||
(2 3 4) |||||
( (2 3 4 5)) |||||
(25) |||||
(28) |||||
(:: 2 â))) |||||
(:: 2 â))) | ||||
(:: 3 |||||
(3)) |||||
(3)) | ||||
(3) |||||
(3) |||||
(3) |||||
(3) |||||
(3) |||||
(3) |||||
(3) |||||
(3 4) |||||
(3 4))) |   ( (4 3) ||||
(3 4 5) |||||
(3628800) |||||
(:: 3 â)))) |||||
(:: 3 â)))) |||||
(:: 3 â)))) | ||||
(:: 3 â)))) | ||||
( (3 OK-3) |||||
(< 4 |||||
(== 4 |||||
(== 4 |||||
(> 4 |||||
(> 4 |||||
( (> 4 |||||
( (> 4 |||||
(4) |||||
(4) |||||
(> 4 2) |||||
(42) |||||
(42) |||||
(42) |||||
(42) |||||
(∉ 42 Empty)) |||||
(∉ 42 Empty)) |||||
( (4 3) |||||
(4 4)) |||||
(4 4)) | ||||
(45) |||||
(4 5 6) |||||
(5) |||||
(5) |||||
( (5 6)) |||||
( (5 Error) |||||
(:: 5 nil))) $T) 8) $T |||||
(6) |||||
(6 OK) |||||
(:: 7 |||||
(7) |||||
(7.375) |||||
(7 8 9) |||||
(- 8 |||||
(9) |||||
(9.000000000000002) |||||
(9.000000000000002) |||||
(9.000000000000002) |||||
(a) |||||
(A |||||
( (⊢ A)) |||||
(A) |||||
(A) |||||
(A) |||||
(A) |||||
(A) |||||
(A) |||||
(â |||||
(â |||||
(â§ |||||
(â§ |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
(â |||||
... |   ( (â ||||
(â¢ |||||
(â¢ |||||
(â¢ |||||
(â¢ |||||
(â¢ |||||
(â¢ |||||
(â¢ |||||
(â¢ |||||
(â¢ |||||
(â¢ |||||
(â¢ |||||
(â¢ |||||
(â¢ |||||
(â¢ |||||
(â¢ |||||
( (â¢ A) |||||
(â¢ A) kb_entail rb_entail |||||
(â¢ A) kb_entail rb_entail |||||
(â¢ B) |||||
( (â¢ B) |||||
( (â¢ B) |||||
(â¢ C) |||||
(â¢ C) |||||
(â¢ C)) |||||
(â $P $Ptv) |||||
(â $P $Q) |||||
(â $Q $Qtv) |||||
(â $Q $R) |||||
(â $R $Rtv) |||||
(â $X $Y) |||||
(â $X $Y) |||||
(â $X $Y)) |||||
(â $X $Y)) |||||
(â $X $Y)) |||||
(â $X $Y)) |||||
(â $X $Y) |||||
(â $X $Y) |||||
(â $X $Y) |||||
(â $X $Y) |||||
(â $X $Y) |||||
(â $X $Y) |||||
(â $X $Y) kb_bare rb_bare |||||
(â $X $Y) kb_bare rb_bare |||||
(â $X $Y)) kb_dtl rb_dtl |||||
(â $X $Y)) kb_dtl rb_dtl |||||
(â $X $Y)) kb_entail rb_entail |||||
(â $X $Y)) kb_entail rb_entail |||||
(â $X $Y) kb_eq |||||
(â $X $Y) kb_eq |||||
( ( (-> A $Y) |||||
(-> A $Y) |||||
(â¹ |||||
( (: a A) |||||
( (: a A)) |||||
( (: a A)) |||||
( (A A) |||||
(â A B)) |||||
(â A B) |||||
(â A B) |||||
(â A B) |||||
(â A B) |||||
(â A B)) |||||
(â A B)) |||||
(â A B)) |||||
(â A B)) |||||
(â A B)) |||||
(â A B)) |||||
(â A B)) |||||
(â A B))) |||||
(â A B))) |||||
(â A B))) |||||
(â A B))) | ||||
(â A B))) | ||||
(â A B))) | ||||
(â A B))) | ||||
(â A B))) | ||||
(â A B))) | ||||
(â A B) |||||
(â A B) |||||
(â A B) |||||
(â A B) |||||
(â A B)) |||||
(â A B)) |||||
(â A B)) |||||
(â A B)) |||||
(â A B)) | ||||
(â A B)) | ||||
( (â A B)) |||||
( (â A B)) |||||
( (â A B)) |||||
(â A B) kb_bare rb_bare |||||
(â A B) kb_bare rb_bare |||||
(â A B)) kb_dtl rb_dtl |||||
(â A B)) kb_dtl rb_dtl |||||
(â A B)) kb_entail rb_entail |||||
(â A B)) kb_entail rb_entail |||||
(â A B) kb_eq |||||
(â A B) kb_eq |||||
(â A B) kb_eq |||||
(â A B)) Z)) |   ( (: ab ||||
(â A C)) |||||
(â A C) |||||
(â A C) |||||
(â A C))) |||||
( (â A C)) |||||
( (â A C)) |||||
( (â A C)) |||||
(â A C) kb_eq |||||
(: a A) kb_dtl rb_dtl |||||
(: a A) kb_dtl rb_dtl |||||
(: ab |||||
(: ab |||||
(: ab |||||
( (: ab |||||
( (: ab |||||
( (: ab |||||
( (: ab |||||
( (: ab |||||
( (: ab |||||
(→ A B)) |||||
(→ A B)) |||||
(→ A B))) |||||
(→ A B))) |||||
(A B) |||||
(A B) |||||
(A B) |||||
(A B) |||||
( (-> A B)) |||||
( (-> A B)) |||||
( (→ A B) |||||
( (→ A B) |||||
( (→ A B)) |||||
( (→ A B)) |||||
( (A B)) |||||
(A B) $_11052)) |||||
(A B) $_11052)) | ||||
(a b c)) |||||
(a b c) |||||
( (a b c)) |||||
(a b c) |||||
(a b c) |||||
(A B C) |||||
(A B C) |||||
(A B C) |||||
(A B C) |||||
(â B C)) |||||
(â B C) |||||
(â B C) |||||
(â B C)) |||||
(â B C))) |||||
(â B C))) |||||
(â B C))) | ||||
(â B C))) | ||||
(â B C))) | ||||
(â B C))) | ||||
(â B C))) | ||||
(â B C)) |||||
(â B C)) |||||
(â B C)) |||||
(â B C)) |||||
(â B C)) | ||||
(â B C)) | ||||
(â B C)) | ||||
(â B C)) | ||||
( (â B C)) |||||
( (â B C)) |||||
( (â B C)) |||||
( (a b c e f g)) |||||
(â B C) kb_eq |||||
(a b c x y z) |||||
(a b c x y z) |||||
(active) |||||
(Add |||||
(Add |||||
(Add |||||
(Add |||||
(Add |||||
(Add |||||
(Add |||||
(Add |||||
(Add |||||
( (Add |||||
(Add $R1 |||||
(Add $R2 |||||
(add-atom &kb |||||
(add-atom &kb_bem |||||
(add-atom &kb_bem |||||
(add-atom &kb_bem |||||
(add-atom &kb_bem |||||
(add-atom &kb_dem |||||
(add-atom &kb_dem |||||
(add-atom &kb_dem |||||
(add-atom &kb_em |||||
(add-atom &kb_em |||||
(add-atom &kb_em |||||
(add-atom &kb_em |||||
(add-atom &labelled-kb |||||
(add-atom &labelled-kb |||||
(add-atom &labelled-kb |||||
(add-atom &rb_bem |||||
(add-atom &rb_bem |||||
(add-atom &rb_bem |||||
( (add-atom &self |||||
(Add Z |||||
( (Add Z Ten)) |||||
(Add Z Z)) |||||
(Add Z Z) |||||
(Add Z Z) |||||
(Add Z Z))) |||||
(agent $_5060 John) |||||
(agent $_5060 John) |||||
(agent $_5060 John) |||||
(agent $C John) |||||
(agent JohnsCarry John)) |||||
(agent JohnsCarry John) |||||
(air dry))) |   ( (start humidifier) ||||
(air wet))) |   ( (start ventilation) ||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
(and |||||
( (and |||||
( (and |||||
(And |||||
(And |||||
(And |||||
(â P |||||
(â P |||||
(app $Xs Nil) $Xs)) kb rb |||||
(â P Q) |||||
(â P Q) |||||
(â P Q) |||||
(â P Q) |||||
(â P Q) |||||
(â P Q) $Etv)) kb rb |||||
(â P Q) $Etv)) kb rb |||||
(â P Q) $Tv)) $Tv)) |   ( (ETV Empty ||||
(â P Q) $Tv)) kb rb Z)) |   ( (: PQm ||||
(â P R) |||||
(â P R) |||||
(â P R) $Tv)) kb rb |||||
(â Q |||||
(â Q |||||
(â Q R) |||||
(â Q R) |||||
(â Q R) $Tv)) kb rb Z)) |   ( (: QRm ||||
(â R |||||
(â R |||||
(â Z |||||
(â Z |||||
(â Z |||||
(â©» Z |||||
(â Z â))) |||||
(â Z â))) | ||||
(â Z â)) kb rb Z)) |   ( (: NotInEmpty ||||
(b) |||||
(B... | () ||||
(B) |||||
(B) |||||
(B) |||||
(B) |||||
(B A) |||||
(B A) |||||
( (B A) |||||
(Ball) |||||
("=== Bare entail ===") |||||
("=== Bare Entail ===") |||||
("=== Bare Entail ===") |||||
("=== Bare Entail Match ===") |||||
("=== Bare Entail Match ===") |||||
( (: Base_plus |||||
( (base_prf)) |||||
(B B)) |||||
(B B)) | ||||
(: bc |||||
(: bc |||||
(: bc |||||
(: bc |||||
(: bc |||||
( (: bc |||||
(→ B C))) |||||
(→ B C))) |||||
(→ B C)) |||||
(→ B C)) |||||
(B C |||||
(B C |||||
(B C |||||
(B C |||||
(B C |||||
(B C |||||
(B C |||||
(B C |||||
(bc_bare B kb_bare rb_bare |||||
(bc_bare C kb_bare rb_bare |||||
(bc_bare D kb_bare rb_bare |||||
(bc_bem |||||
(bc_bem |||||
(bc_bem |||||
(bc_bem B |||||
(bc_bem C |||||
(B C D)))) |   ( (B A) ||||
(bc_dem |||||
(bc_dem |||||
(bc_dem |||||
(bc_dem |||||
(bc_dem |||||
(bc_dem |||||
(bc_dem |||||
(bc_em |||||
(bc_em |||||
(bc_em |||||
(bc_em B |||||
(bc_em C |||||
(bc_eq |||||
(bc_eq |||||
(bc_eq |||||
(bc_eq B kb_eq |||||
(bc_eq C kb_eq |||||
( (belief1 yes) |||||
(big $_12096) |||||
(big $_12096) |||||
(big cow) |||||
(big cow) |||||
(big cow) |||||
(big rabbit) |||||
(big rabbit) |||||
(bin) |||||
(bin))) |   ( (A A) ||||
(BinaryConjunctionIntroduction |||||
(BinaryConjunctionIntroduction |||||
(BinaryConjunctionIntroduction |||||
(BinaryConjunctionIntroduction |||||
(BinaryConjunctionIntroduction |||||
(BinaryConjunctionIntroduction |||||
(bind! &attentional_focus |||||
(bind! &belief_events |||||
(bind! &concepts |||||
(bind! &FIFO |||||
(bind! &goal_events |||||
(bind! &kb |||||
(bind! &kb_bem |||||
(bind! &kb_bem |||||
(bind! &kb_dem |||||
(bind! &kb_em |||||
(bind! &kb_em |||||
(bind! &labelled-kb |||||
(bind! &labelled-kb |||||
(bind! &labelled-kb |||||
(bind! &rb_bem |||||
(bind! &rb_bem |||||
(bind! &state-active |||||
(bind! &state-token |||||
(bind! &var |||||
(bind! &WU |||||
(Bl False))) |||||
(Bl False)) |||||
(Bl False)) |||||
(Bl False)) |||||
(Bl False) |||||
(Bl False) |||||
(Bl False) |||||
(Bl True))) |||||
(Bl True)) |||||
(Bl True) |||||
(Bl True) |||||
(Bl True) |||||
(blue green red) |||||
(Bool) |||||
(-> Bool Bool))) |||||
(-> Bool Number))) |||||
(-> Bool String)) |||||
(-> Bool String))) |||||
(-> Bool String))) |||||
(C) |||||
(C) |||||
(C) |||||
(C) |||||
(C A) |||||
(C A) |||||
(car-atom $X))) |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case |||||
(case 5 |||||
(Cat) |||||
(Cat) |||||
( ( (cat x sky) --> like) |||||
( (C D)) |||||
(change-state! |||||
(change-state! |||||
(change-state! $X |||||
(change-state! &state-token |||||
( (change-state! &var |||||
(chase $_12096 dog)) |||||
(chase $_12096 dog)) |||||
(chase cow dog) |||||
(chase cow dog) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog)) |||||
(chase cow dog) |||||
(chase cow dog) |||||
(chase cow dog) |||||
(chase cow dog) |||||
(chase cow dog) |||||
(chase cow dog) |||||
(chase cow dog) |||||
(chase cow dog) |||||
(chase cow dog) |||||
(chase cow dog) |||||
(chase rabbit cow) |||||
(chase rabbit cow) |||||
(chase rabbit dog) |||||
(chase rabbit dog) |||||
(childlion) |||||
(choiceQuery |||||
(collapse |||||
(collapse |||||
(collapse |||||
(collapse |||||
(collapse |||||
(collapse |||||
(collapse |||||
(color) |||||
( (Color of Planet Mars is Red)) |||||
( (Color of Planet Mars is Red)) |||||
(ConceptNode flies))) $X)) |   ( (ConceptNode Sam) ||||
(ConceptNode Fritz)) | ||||
( (ConceptNode Fritz) |||||
(ConceptNode Sam)) |||||
(confidence |||||
(confidence |||||
(Cons |||||
(Cons |||||
(Cons |||||
(Cons |||||
(Cons |||||
(Cons |||||
(Cons |||||
(Cons |||||
(Cons |||||
(Cons |||||
(Cons |||||
( (Cons |||||
( (Cons |||||
( (Cons |||||
( (Cons |||||
( (Cons |||||
(Cons 0 |||||
(Cons 1 |||||
(Cons 1 |||||
(Cons 1 |||||
(Cons 1 |||||
(Cons 1 |||||
(Cons 1 |||||
(Cons 1 |||||
( (Cons 1 |||||
( (Cons 1 |||||
( (Cons 1 |||||
( (Cons 1 |||||
( (Cons 1 |||||
( (Cons 1 |||||
( (Cons 1 |||||
( (Cons 1 |||||
( (Cons 1 |||||
( (Cons 1 |||||
( (Cons 1 |||||
( (Cons 1 |||||
( (Cons 1 |||||
(Cons 1 Nil)))) |||||
(Cons 1 Nil)))) | ||||
(Cons 1 Nil) |||||
(Cons 1 Nil) |||||
( (Cons 1 Nil)) |||||
( (Cons 1 Nil)) |||||
( (Cons 1 Nil)) |||||
( (Cons 1 Nil)) |||||
( (Cons 1 Nil)) |||||
(Cons 1 Nil)))) |   ( (Cons 1 ||||
(Cons 1 Nil))))) |   ( (Cons 3 ||||
(Cons 1 Nil)))) |   ( (Vec Number ||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
(Cons 2 |||||
( (Cons 2 |||||
( (Cons 2 |||||
(Cons 2 Nil)) |||||
(Cons 2 Nil)) |||||
(Cons 2 Nil)))) |||||
(Cons 2 Nil)))) | ||||
(Cons 2 Nil))) |||||
(Cons 2 Nil))) |||||
(Cons 2 Nil))) |||||
(Cons 2 Nil))) |||||
(Cons 2 Nil))) |||||
(Cons 2 Nil))) | ||||
(Cons 2 Nil))) | ||||
(Cons 2 Nil))) | ||||
(Cons 2 Nil))) | ||||
(Cons 2 Nil))) | ||||
( (Cons 2 Nil)) |||||
( (Cons 2 Nil)) |||||
(Cons 2 Nil))))) |   ( (Cons 1 ||||
(Cons 2 Nil))))) |   ( (Cons 1 ||||
(Cons 2 Nil)))))) |   ( (Cons 2 ||||
(Cons 2 Nil)))))) |   ( (Cons 2 ||||
(Cons 3 |||||
(Cons 3 |||||
(Cons 3 |||||
(Cons 3 |||||
(Cons 3 |||||
(Cons 3 |||||
(Cons 3 |||||
(Cons 3 |||||
(Cons 3 |||||
(Cons 3 |||||
(Cons 3 |||||
(Cons 3 |||||
(Cons 3 |||||
( (Cons 3 |||||
( (Cons 3 |||||
(Cons 3 Nil)))) |||||
(Cons 3 Nil)))) |||||
(Cons 3 Nil)))) |||||
(Cons 3 Nil)))) |||||
(Cons 3 Nil)))) |||||
(Cons 3 Nil)))) |||||
(Cons 3 Nil)))) |||||
(Cons 3 Nil)))) | ||||
(Cons 3 Nil)))) | ||||
(Cons 3 Nil)))) | ||||
(Cons 3 Nil)))) | ||||
(Cons 3 Nil)))) | ||||
(Cons 3 Nil)))) | ||||
(Cons 3 Nil)))) | ||||
(Cons 3 Nil))) |||||
(Cons 3 Nil))) | ||||
(Cons 4 |||||
(Cons 4 |||||
(Cons 4 |||||
(Cons 4 |||||
(Cons 4 Nil)))) |   ( (Cons 3 ||||
(Cons 4 Nil)))) |   ( (Cons 6 ||||
(Cons 5 |||||
(Cons 5 |||||
(Cons 5 |||||
(Cons 6 |||||
(Cons 6 |||||
( (Cons 6 |||||
(Cons 8 Nil))))) |||||
(Cons 8 Nil))))) | ||||
(Cons 8 Nil))) |||||
(Cons 8 Nil))) | ||||
(Cons a |||||
(Cons a |||||
(Cons a |||||
(Cons b Nil))))) |||||
(Cons b Nil))))) | ||||
(Cons b Nil)))) |   ( (Cons 1 ||||
(Cons f |||||
(Cons f |||||
(Cons f Nil) |||||
(Cons f Nil))) |   ( (Cons ||||
(Cons g Nil)) |||||
(Cons g Nil) |||||
(Cons g Nil)))) |   ( (Cons ||||
(Cons g Nil))) |   ( (Cons ||||
(ConsN 1 |||||
(Cons Z Nil))) |||||
(Cons Z Nil))) | ||||
(Cons Z Nil))) |   ( (Cons ||||
(count |||||
(count |||||
( (: cow_is_big |||||
(croaks eat_flies) |||||
( ( (curry +) 2)) |||||
(curry-a + 1) |||||
(curry-a + 2) |||||
(curry-a + 2) |||||
(curry-a + 2) |||||
(curry-a * 2) |||||
(curry-a + 2) |||||
(curry-a + 2) |||||
(curry-a + 2) |||||
(curry-a + 2) |||||
(curry-a + 2) |||||
(curry-a + 2) |||||
(curry-a + 2) |||||
(curry-a - 7) |||||
( (curry-a is Socrates)) |||||
(curry +))) |   ( (-> Number ||||
(D A)) |||||
(D A)) | ||||
(deduce |||||
(deduction |||||
( (deduction |||||
(Deduction ab bc) |||||
(Deduction ab bc) a) C)) |||||
(deduction-formula |||||
( (deduction_match GroundingSpace-0x5601b8f47dd8)) |||||
(Deduction Pm Pm Rm $_12600 $_12828) |||||
(Deduction Pm PQm Rm $_12600 $_12828) |||||
(Deduction Pm Qm Rm PQm QRm) |||||
(Deduction Pm Qm Rm PQm QRm) |||||
(Deduction Pm QRm Rm $_12600 $_12828) |||||
(Deduction Pm Rm Rm $_12600 $_12828) |||||
(do |||||
(drop |||||
(drop |||||
(dropN |||||
( (dropN NilN)) |||||
("=== DTL ===") |||||
("=== DTL ===") |||||
("=== DTL Equality Match ===") |||||
(Eats-flies $X))) |||||
(Eats-flies Sam)) | ||||
( (Eats-flies Sam) |||||
( (Eats-flies Sam) |||||
( (e f g)) |||||
(Either) |||||
( (Either Number)) |||||
( (EitherP Number)) |||||
(EitherP Number) String)) |||||
(EitherP Number) String)) | ||||
(elem 1 |||||
(elem 1 |||||
(elem 1 |||||
(elem 1 |||||
(elem 1 |||||
(elem 2 |||||
(elem 5 |||||
("=== Entail ===") |||||
("=== Entail ===") |||||
(eq |||||
(eq |||||
(eq |||||
(eq $R |||||
(eqa |||||
(eqa Z |||||
( (eqa Z |||||
( (eq Green Blue)) |||||
("=== Equality ===") |||||
("=== Equality ===") |||||
("=== Equality ===") |||||
("=== Equality Match ===") |||||
("=== Equality Match ===") |||||
(eq Z |||||
(eq Z |||||
( (eq Z |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(ETV |||||
(Evaluation |||||
(Evaluation |||||
(EvaluationLink |||||
(explain |||||
( (expression without known equalities)) |||||
( ( (ExtSet garfield) --> cat) |||||
( (ExtSet sam) --> dog))) $S)) |   ( (x ||||
( ( (ExtSet sam) --> duck) |||||
( ( ( (ExtSet sam) --> duck) |||||
( (ExtSet sam) --> swan) |||||
(: f |||||
( (: f |||||
( (: f |||||
( (: f |||||
(F) |||||
(f $X) |||||
(f $X) |||||
(f $X) |||||
(False) |||||
(False) |||||
(False) |||||
(False) |||||
(False) |||||
(False) |||||
(False) |||||
(False) |||||
(False) |||||
(False) |||||
(False) |||||
(False) |||||
(False) |||||
( (: fC |||||
(fc_bare |||||
(fc_bare |||||
(fc_bare |||||
(fc_bare |||||
(fc_bare A kb_bare rb_bare |||||
(fc_bare A kb_bare rb_bare |||||
(fc_bem |||||
(fc_bem |||||
(fc_bem A |||||
(fc_dtl |||||
(fc_dtl |||||
(fc_dtl |||||
(fc_dtl |||||
(fc_dtl |||||
(fc_dtl |||||
(fc_em |||||
(fc_em |||||
(fc_em A |||||
(fc_entail |||||
(fc_entail |||||
(fc_entail |||||
(fc_entail |||||
(fc_entail |||||
(fc_entail |||||
(fc_eq |||||
(fc_eq |||||
(fc_eq |||||
(fc_eq |||||
(fc_eq A kb_eq |||||
(fc_eq A kb_eq |||||
(: felix Cat))) |||||
(: felix Cat))) | ||||
(: felix Cat)) kb rb Z)) |   ( (: fC ||||
(. f f) |||||
(. f f) |||||
(. f f) |||||
(. f f) |||||
( (. f f) |||||
(f g)) |||||
(. f g) |||||
(. f g) |||||
(. f g) |||||
(. f g) |||||
(f g)) |||||
(. f g) |||||
(. f g) Nil)) |||||
(. f g) Nil)) | ||||
(. f h) |||||
(. f h) |||||
(. f h) |||||
(filter even |||||
(find-equal |||||
(fmap |||||
(fmap |||||
(fmap |||||
(fmap |||||
(fmap |||||
(fmap |||||
(fmap |||||
(fmap |||||
(fmap-i |||||
(fmap-i |||||
(fmap-i |||||
( (fmap-i |||||
(foo |||||
(Fritz) |||||
(Fritz Sam) |||||
(Frog $X) |||||
( (Frog Sam)) |||||
(Frog Sam) $What) $What)) |   ( (Green Sam) ||||
(fromNat |||||
(fromNumber 0))) |   ( (: ab ||||
(fromNumber 0))) |   ( (: bc ||||
(fromNumber 0))) |   ( (: cow_is_big ||||
(fromNumber 1) |||||
(fromNumber 2) |||||
(fromNumber 2) |||||
(fromNumber 2) |||||
(fromNumber 2)))) |   ( (â¢ ||||
(fromNumber 2)))) |   ( (â¢ ||||
(fromNumber 2))) |   ( (â¢ ||||
(fromNumber 2))) |   ( (â¢ ||||
(fromNumber 2)))) |   ( (â A B) ||||
(fromNumber 2)))) |   ( (â A B) ||||
(fromNumber 2)))) |   ( (â A B) ||||
(fromNumber 2)))) |   ( (â A B) ||||
(fromNumber 2)))) |   ( (: ab ||||
(fromNumber 2)))) |   ( (: ab ||||
(fromNumber 2))) |   ( (: ab ||||
(fromNumber 2))) |   ( (: ab ||||
(fromNumber 2)))) |   ( (â B C) ||||
(fromNumber 2)))) |   ( (â B C) ||||
(fromNumber 2)))) |   ( (â· synthesize ||||
(fromNumber 2))) |   ( (Cons ||||
(fromNumber 3) |||||
(fromNumber 3)))) |   ( (â· synthesize ||||
(fromNumber 3)))) |   ( (â· synthesize ||||
(fromNumber 3)))) |   ( (â· synthesize ||||
(fromNumber 3))) kb rb |||||
(fromNumber 3))) kb rb |||||
(fromNumber 7))) kb rb |||||
(fromNumber 7))) kb rb |||||
(fromNumber 7))) kb rb |||||
(functions) |||||
(: g |||||
( (: g |||||
(. g $_180388) |||||
(. g $F) |||||
(g $Y)) |||||
(g $Y)) |||||
( ( (g $Y) |||||
(g $Y) |||||
(g $Y) |||||
( (g 3)) |||||
(g 42 |||||
(gen 3) |||||
(get-atoms &m))) |||||
(get-atoms &self) |||||
(get-state |||||
(get-state |||||
(get-state |||||
(get-state |||||
(get-state |||||
(get-token)) |   ( (State  ||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type |||||
(get-type $X) Number) |||||
(get-type $Y)) |||||
(get-type $Y) Number)) |||||
(get-type base_prf)) |   ( (â ||||
(. g f) |||||
(. g f) |||||
(. g f) |||||
(. g f) |||||
(. g f) |||||
(. g f) |||||
(. g f) |||||
(. g f) |||||
(. g f) |||||
(. g f) |||||
(. g f) $_89536) |||||
(. g f) $Type) |||||
(. g f) h) |||||
(. g f) h) |||||
(. g f)) h) |||||
(. g f) h) |||||
(. g f) Nil)) |||||
(. g f) Nil)) | ||||
(. g g)) |||||
(. g g) Nil))))) |||||
(. g g) Nil))))) |||||
(Goal $Goal))) active) $Goal |||||
( (goal1 yes) |||||
( (goal1 yes) |||||
(GreaterThan $X $Y) |||||
(Green $Who) |||||
(Green $Who) T) |||||
(green $X) |||||
(Green $X)) |||||
(Green Sam)) |||||
(Green Sam)) |||||
(Green Sam)) |||||
(green yellow red) |||||
(: h |||||
( (human Plato) proven by |||||
( (human Plato) proven by |||||
(HumansAreMortal |||||
( (hyperon::space::DynSpace)) |||||
(hyperon::space::DynSpace) |||||
(idi_axiom) |||||
(idi_axiom) |||||
(IDIBase P2 $_16978) |||||
(IDIBase P2 $_22240) |||||
(IDIBase P2 Q2) |||||
(IDIBase P2 Q2) |||||
(IDIBase P2 Q2) |||||
(IDIBase P2 Q2) |||||
(IDIBase P2 Q2) |||||
(IDIBase P2 Q2) |||||
(IDIBase P2 Q2) |||||
(IDIBase P2 Q2) $_24190) |||||
(IDIBase P3 $_17884) |||||
(IDIBase P3 $_23182) |||||
(IDIBase P3 Q3) |||||
(IDIBase P3 Q3) |||||
(IDIBase P3 Q3) |||||
(IDIBase P3 Q3) $_24190) |||||
(IDIBase P7 $_17884) |||||
(IDIBase P7 $_23182) |||||
(IDIBase P7 Q7) |||||
(IDIBase P7 Q7) |||||
(IDIBase P7 Q7) $_24190) |||||
(idi_formula |||||
(idi_formula |||||
( (idi_formula |||||
(idi_induction |||||
(idi_induction |||||
( (idi_induction_match GroundingSpace-0x556b30951348)) |||||
(IDIRecursive P2 $_24574 $_24766 $_25090) |||||
(IDIRecursive P2 $_36694 $_36922 $_37282) |||||
(IDIRecursive P2 Q2 |||||
(IDIRecursive P2 Q2 |||||
(IDIRecursive P2 Q2 |||||
(IDIRecursive P2 Q2 |||||
(IDIRecursive P2 Q2 |||||
(IDIRecursive P2 Q2 $_18820 $_19144) |||||
(IDIRecursive P3 $_20542 $_18820 $_19144) |||||
(IDIRecursive P3 $_32386 $_32638 $_24190) |||||
(IDIRecursive P3 Q3 |||||
(IDIRecursive P3 Q3 |||||
(IDIRecursive P3 Q3 |||||
(IDIRecursive P3 Q3 $_24766 $_25090) |||||
(IDIRecursive P7 $_20542 $_18820 $_19144) |||||
(IDIRecursive P7 $_32386 $_32638 $_24190) |||||
(IDIRecursive P7 Q7 |||||
(IDIRecursive P7 Q7 |||||
(IDIRecursive P7 Q7 |||||
(IDIRecursive P7 Q7 |||||
(IDIRecursive P7 Q7 $_24766 $_25090) |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(if |||||
(If |||||
(If |||||
(If |||||
(ift |||||
(ift |||||
(ift |||||
(implies |||||
(implies |||||
(implies |||||
(implies |||||
(implies |||||
(inactive) |||||
(inc-neg-count |||||
(inc-pos-count |||||
(increment) |||||
(increment))) |||||
( (increment) |||||
(increment) |||||
(increment) |||||
(increment) |||||
(increment))) |||||
(increment))) |||||
( (increment) |||||
( (increment) |||||
( (increment) |||||
( (increment) |||||
(increment) |||||
(increment) |||||
(increment) |||||
(increment) |||||
( (increment) |||||
( (increment) |||||
(insert |||||
(insert |||||
(insert |||||
(insert 1 |||||
(insert 1 |||||
(insert 1 |||||
(insert 1 â))))) |   ( (:: 1 ||||
(insert 1 â)))) |   ( (:: 1 ||||
(insert 1 â))) |   ( (:: 1 ||||
(insert 1 Nil)))) |   ( (Cons 1 ||||
(insert 1 Nil)))) |   ( (Cons 1 ||||
(insert 1 Nil)))) |   ( (Cons 1 ||||
(insert 1 Nil))) |   ( (Cons 1 ||||
(insert 1 Nil))) |   ( (Cons 1 ||||
(insert 2 |||||
(insert 2 |||||
(insert 2 |||||
(insert 2 |||||
(insert 2 |||||
(insert 2 |||||
(insert 2 |||||
(insert 2 |||||
(insert 2 |||||
(insert 2 |||||
(insert 2 |||||
(insert 2 Nil))) |   ( (Cons 1 ||||
(insert 3 |||||
(insert 3 |||||
(insert 3 |||||
(insert 3 |||||
(insert 3 |||||
(insert 42 Empty) |||||
(insert_uniq 1 Nil))))) |   ( (Cons 1 ||||
(insert_uniq 1 Nil)))) |   ( (Cons 1 ||||
(insert_uniq 1 Nil))) |   ( (Cons 1 ||||
(insert_uniq 2 |||||
(insert_uniq 2 |||||
(insert_uniq 2 |||||
(insert_uniq 2 |||||
(insert_uniq 3 |||||
(insert_uniq 3 |||||
(insert Z â))))) |   ( (:: Z ||||
(instance $_5060 Carrying) |||||
(instance $_5060 Carrying) |||||
(instance $_5060 Carrying) |||||
(instance $_5120 Flower) |||||
(instance $_5120 Flower) |||||
(instance $_5120 Flower) |||||
(instance $C Carrying) |||||
(instance $F Flower) |||||
(instance JohnsCarry Carrying)) |||||
(instance JohnsCarry Carrying)) |||||
(instance JohnsCarry Carrying)))) |||||
(instance JohnsCarry Carrying)) |||||
(instance JohnsCarry Carrying)))) |||||
(instance JohnsCarry Carrying)) |||||
(instance JohnsCarry Carrying)))) |||||
(instance JohnsCarry Carrying)))) |||||
(instance JohnsCarry Carrying)) |||||
(instance JohnsCarry Carrying) |||||
(instance JohnsCarry Transfer) |||||
(instance JohnsCarry Transfer))) |||||
(instance JohnsCarry Transfer) |||||
(instance JohnsCarry Transfer) |||||
(instance JohnsCarry Transfer))) |||||
(instance JohnsCarry Transfer) |||||
(instance JohnsCarry Transfer))) |||||
(instance JohnsCarry Transfer))) |||||
(instance JohnsCarry Transfer) |||||
(instance JohnsCarry Transfer) |||||
(instance JohnsCarry Transfer) |||||
(instance JohnsCarry Transfer))) |||||
(instance JohnsCarry Transfer)) kb rb |||||
(instance JohnsFlower Flower)) |||||
(instance JohnsFlower Flower) |||||
(interleave |||||
(is |||||
(is |||||
(isLeft |||||
("It's" $Tv that $Who is $Color))) |   ( ("It's" T that Sam is Green) ||||
("It's" F that Tom is Green)... | ||||
( ("It's" F that Tom is Green) |||||
("It's" T that Sam is Green) |||||
("It's" T that Tom is White) |||||
("It's" T that Tom is White)) |||||
(Just 10) |||||
( (Just 3)) |||||
(kb) |||||
(kb) |||||
(kb) |||||
(kb) |||||
(kb) |||||
(kb) |||||
(kb_bare) |||||
(kb_bare) |||||
(kb_dtl) |||||
(kb_dtl) |||||
(kb_entail) |||||
(kb_entail) |||||
(kb_eq) |||||
(kb_eq) |||||
(K x |||||
(K x))) |||||
(K x))) | ||||
( (K x |||||
( (lambda |||||
( (lambda $X |||||
(leaf0 leaf1)) |||||
(leaf0 leaf1)) | ||||
(leaf1 |||||
(LeftP 5) String))) |   ( (Pair ||||
(let* |||||
(let* |||||
(let |||||
(let |||||
(let |||||
(let |||||
(let |||||
(let |||||
(let |||||
(let |||||
(let |||||
(let |||||
(let |||||
(let |||||
(let |||||
(let |||||
(let |||||
(let |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let* |||||
(let $PR |||||
(let $R |||||
(let $T |||||
(let $T |||||
(let $Tnso |||||
(let $V |||||
( (let $X |||||
(let $X |||||
(let $X |||||
(let $Z |||||
(likes-to-wrestle Plato))))) |||||
(Link $_167434 C)) | ||||
(Link $X $Y))))) |   ( (Link $_167458 B) ||||
(Link $X $Y))) |   ( (Link A B) ||||
(Link $X B))) |||||
( (Link $X B) |||||
( (Link $X B) |||||
(Link $X B) |||||
(Link $X B) |||||
(Link $X B) |||||
(Link $X B) |||||
(Link $X B) |||||
( ( (Link $X B $Z) |||||
(Link $X C))) |||||
(Link $X C))) |||||
( ( (Link A $Y) |||||
( ( (Link A $Y) |||||
( ( (Link A $Y) |||||
(Link A $Y) |||||
(Link A $Y) |||||
(Link A $Y) |||||
(Link A $Y) |||||
(Link A $Y $Z)) |||||
( (Link A B) |||||
( (Link A B) |||||
( (Link A B)) |||||
( (Link A B)) |||||
( (Link A B)) |||||
( (Link A B)) |||||
( (Link A B)) |||||
( (Link A B)) |||||
( (Link A B)) |||||
( (Link A B)) |||||
( (Link A B C)) |||||
(Link A C)) |||||
(Link A C)) |||||
(Link A C)) | ||||
(Lion) |||||
( (-> Lion Lion Lion)) |||||
(List $T) |||||
(ListLink $X |||||
( (List Number)) |||||
(ln |||||
(+ ln 2))) |||||
(+ ln 2))) | ||||
(+ ln 2))) |   ( (> 4 ||||
( (ln 4)) |||||
(located $_3590 JohnsHouse)) |||||
(located $_3590 JohnsHouse))) |||||
(located $_3590 JohnsHouse))) kb rb Z))) |||||
(located John $_3590) |||||
(located John $_3590) |||||
(located John $_3590) |||||
(located John JohnsHouse))) |||||
(located John JohnsHouse) |||||
(located John JohnsHouse))) |||||
(located John JohnsHouse)))) |||||
(located John JohnsHouse)) |||||
(located John JohnsHouse))) $_3542) |||||
(located John JohnsHouse)) kb rb |||||
(located John SanJose))) |||||
(located John SanJose)))) |||||
(located John SanJose)) |||||
(located John SanJose))) $_3956) |||||
(located John SanJose)) kb rb |||||
(located JohnsHouse SanJose)) |||||
(located JohnsHouse SanJose)))) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lookahead)) |||||
(lunch-order) |||||
(man mortal)) |||||
(map inc |||||
(Mars orbit $Y au)) |||||
(match |||||
(match |||||
(match |||||
(match |||||
(match |||||
(match |||||
(match |||||
(match &belief_events $Num1 $Num1) |||||
(match &belief_events $Num1 $Num1) |||||
(match &goal_events $Num1 $Num1) |||||
(match &goal_events $Num1 $Num1) |||||
(match &goal_events $Num1 $Num1) |||||
(match &goal_events $Num1 $Num1) |||||
(match &kb |||||
(match &kb |||||
(match &kb |||||
(match &kb |||||
(match &kb $X |||||
(match &kb $X |||||
(match &kb $X |||||
(match &kb_bem |||||
(match &kb_em |||||
(match &m |||||
(match &s... |   ( (â ||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(match &self |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(max-count) |||||
(Maybe< |||||
(Maybe< |||||
(maybe-inc |||||
(Maybe< Nothing |||||
(mean |||||
(mean |||||
(meditation) |||||
(min $_12684 $_12912))))) |||||
(min $_12684 $_12912))))) |||||
(min $_12684 $_12912))))) |||||
(min $_12684 $_12912))))) |||||
(min 0.1 |||||
(min 0.1 |||||
(min 0.1 |||||
(min 0.1 |||||
(min 0.1 |||||
(min 0.3 |||||
(min 0.3 |||||
(min 0.3 |||||
(min 0.3 |||||
(min 0.3 |||||
(min 0.4 |||||
(min 0.5 |||||
(mode |||||
(mode |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens |||||
(ModusPonens $_4710 $_5046) |||||
(ModusPonens $_5240 $_5636) |||||
(ModusPonens ab a) B) |||||
(ModusPonens ab a) B) |||||
(ModusPonens ab a) B) |||||
(ModusPonens ab a) B)) |||||
(ModusPonens ab a)) C) |||||
(ModusPonens ab a)) C)) |||||
(ModusPonens ab a)) C)) |||||
(ModusPonens ab a)) C)) |||||
(ModusPonens bc |||||
(ModusPonens bc |||||
(ModusPonens bc |||||
(ModusPonens bc |||||
(ModusPonens cow_chases_dog_sees_rabbit $_7914) |||||
(ModusPonens cow_is_big x_is_big_chases_dog) |||||
(ModusPonens cow_is_big x_is_big_chases_dog) cow_chases_dog_sees_rabbit) |||||
(ModusPonens cow_needs_dog $_7914) |||||
(ModusPonens dog_sees_rabbit $_7914) |||||
(ModusPonens rabbit_chases_cow $_7914) |||||
(ModusPonens rabbit_chases_dog $_7914) |||||
(ModusPonens rabbit_is_big $_7914) |||||
(ModusPonens rabbit_sees_dog $_7914) |||||
(ModusPonens x_is_big_chases_dog $_7914) |||||
( (mortal man)) |||||
( (Mortal Plato)) |||||
(mortal Plato)))) |   ( ( (mortal Plato) proven by ||||
( ( (mortal Plato) proven by |||||
(Mortal Socrates) |||||
( (Mortal Socrates)) |||||
(need cow dog) |||||
(need cow dog) |||||
(new-state |||||
(new-state 1) |||||
(new-state 1) |||||
(Nil) |||||
(Nil) |||||
(Nil) |||||
(Node A) |||||
(Node A) |||||
(no-match) |||||
(no-match) |||||
(no-match) |||||
(nop |||||
(nop |||||
(nop |||||
( (Nothing)) |||||
(Nothing) |||||
( (: NotInEmpty |||||
(Null)))) |||||
(Null)))) | ||||
(Null))))) |   ( (UntypedC 7 ||||
( (-> Number |||||
(Number) |||||
(Number) |||||
(Number) |||||
(Number) |||||
(-> Number $_500874)) |||||
(-> Number $Out)) |||||
(-> Number Bool)) |||||
(-> Number Bool)) |||||
(-> Number Bool)) |||||
(-> Number Bool)) |||||
(-> Number Bool))) |||||
(-> Number Bool))) |||||
(-> Number Bool))) |||||
(-> Number Bool))) |||||
(-> Number Number))) |||||
(-> Number Number))) | ||||
( (-> Number Number)) |||||
( (-> Number Number)) |||||
( (-> Number Number Number)) |||||
(-> Number Numer))) |||||
(-> Number String)) |||||
(-> Number String)) |||||
(-> Number String))) |||||
(-> Number String))) |||||
(-> Number String)) Z) |||||
(-> Number String)) Z))) |   ( (â· synthesize ||||
(objectTransferred $_5060 $_5120)))) |||||
(objectTransferred $_5060 $_5120))))) |||||
(objectTransferred $_5060 $_5120)))) kb rb |||||
(objectTransferred JohnsCarry JohnsFlower))) |||||
(objectTransferred JohnsCarry JohnsFlower))) |||||
(objectTransferred JohnsCarry JohnsFlower))) |||||
(objectTransferred JohnsCarry JohnsFlower))) |||||
(objectTransferred JohnsCarry JohnsFlower)) kb rb |||||
(objectTransferred JohnsCarry JohnsVase) |||||
(objectTransferred JohnsCarry JohnsVase) |||||
(objectTransferred JohnsCarry JohnsVase) |||||
(objectTransferred JohnsCarry JohnsVase) |||||
(objectTransferred JohnsCarry JohnsVase)) |||||
(objectTransferred JohnsCarry JohnsVase)) |||||
(objectTransferred JohnsCarry JohnsVase) |||||
(objectTransferred JohnsCarry JohnsVase) |||||
(objectTransferred JohnsCarry JohnsVase)) |||||
(objectTransferred JohnsCarry JohnsVase) |||||
(OK) |||||
(OK-3 OK-4) |||||
(or |||||
(orientation A B Right) |||||
(orientation A B Right)) |||||
(orientation A B Right)) |||||
(orientation A B Right)) |||||
(orientation A B Right))) |||||
(orientation A B Right))) | ||||
(orientation A B Right)) kb rb Z)) |   ( (: ||||
(orientation A C Right))) |||||
(orientation A C Right))) |||||
(orientation A C Right)) kb rb |||||
(orientation C B Left)) |||||
(orientation C B Left)))) |||||
(orientation John JohnsH... | ||||
(orientation John JohnsHouse Inside) |||||
(orientation John JohnsHouse Inside))) |||||
(orientation John JohnsHouse Inside) |||||
(orientation John JohnsHouse Inside))) |||||
(orientation John SanJose Inside) |||||
(orientation John SanJose Inside)) |||||
(orientation John SanJose Inside)) kb rb |||||
(orientation JohnsFlower JohnsVase Inside)) |||||
(orientation JohnsFlower JohnsVase Inside)))) |||||
(orientation JohnsFlower JohnsVase Inside)) |||||
(orientation JohnsFlower JohnsVase Inside))))) |||||
(orientation JohnsFlower JohnsVase Inside)))) |||||
(orientation JohnsFlower JohnsVase Inside))) |||||
(orientation JohnsFlower JohnsVase Inside))))) |||||
(orientation JohnsFlower JohnsVase Inside))) |||||
(orientation JohnsFlower JohnsVase Inside)))) kb rb |||||
(→ P |||||
(→ P |||||
(→ P |||||
(→ P |||||
(P)) |||||
(≞ P |||||
(≞ P |||||
(≞ P |||||
(≞ P |||||
(P $Y)) |||||
(P 42) |||||
(P 42) |||||
(PA) |||||
(pair |||||
(pair |||||
( (Pair |||||
( (P B) |||||
( (P B) |||||
(P_Each $Y)) |||||
( (P_Each B_Each) |||||
(philosophe... | ||||
(philosopher Plato) |||||
(Plato Socrates) |||||
(P_List $Y)) |||||
( (P_List B_List) |||||
(plus Z $_2350) $_2350))) |||||
(plus Z $_2350) $_2350))) | ||||
(plus Z $Y) $Y)) kb rb Z)) |   ( (: Base_plus ||||
(→ P P) |||||
(→ P P) |||||
(→ P Q)) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q)) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(PQ)) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) |||||
(→ P Q) $_64922)) |||||
( (: PQm |||||
(→ P Q) R) |||||
(→ P Q) R) |||||
(→ P R) |||||
(→ P R) |||||
(→ P R) |||||
(→ P R) |||||
(→ P R) |||||
(→ P R) |||||
(→ P R) |||||
(→ P R) |||||
(→ P R) |||||
(PredicateNode eats) |||||
(prodWith * |||||
(prodWith * |||||
(prodWith * |||||
(prodWith . |||||
(prodWith . |||||
(prodWith . |||||
(prodWith * Nil |||||
("===== Prove P→Q using base , recursive and order rules (synthesizer) =====") |||||
("===== Prove P→Q using base rule (synthesizer) =====") |||||
("===== Prove that 2 < 3 (synthesizer) =====") |||||
("===== Prove that 2 < 7 (synthesizer) =====") |||||
("===== Prove that 5 < 7 (synthesizer) =====") |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(⊷ Q |||||
(Q)) |||||
(≞ Q |||||
(≞ Q |||||
(≞ Q |||||
(≞ Q |||||
(≞ Q |||||
(Q $Y)) |||||
(Q 42) |||||
(Q 42) |||||
(Q 42) |||||
(Q 42) |||||
(Q C)) |||||
(Q C)) | ||||
(Q C)))) |   ( (P B) ||||
(Q_Each C_Each)) | () ||||
(Q_Each C_Each)))) |   ( (P_Each B_Each) ||||
(Q_List C_List)) | () ||||
(Q_List C_List)))) |   ( (P_List B_List) ||||
(→ Q R)) |||||
(→ Q R)) |||||
(→ Q R) |||||
(QR))) |||||
(→ Q R) |||||
(→ Q R) |||||
(→ Q R) |||||
( (: QRm |||||
(→ Q R) R) |||||
(→ Q R) R) |||||
(QuaternaryConjunctionIntroduction |||||
(Question |||||
(R)) |||||
(≞ R |||||
(≞ R |||||
(≞ R |||||
(≞ R |||||
(≞ R |||||
(record synthesize |||||
(record synthesize |||||
(record synthesize |||||
(record synthesize |||||
(record synthesize |||||
(record synthesize |||||
(record synthesize |||||
(record synthesize |||||
(record synthesize |||||
(record synthesize |||||
(record synthesize |||||
( (recursive_prf)) |||||
(red) |||||
(red yellow green) |||||
(red yellow green) |||||
( ( (Rel-P $Y) |||||
( (Rel-P A B) |||||
( (Rel-P B) |||||
( (Rel-P B) |||||
( (Rel-P B) |||||
( (Rel-Q $Y) |||||
(Rel-Q A C)) |||||
(Rel-Q A C)) | ||||
(Rel-Q C)) |||||
(Rel-Q C)) |||||
(Rel-Q C)) | ||||
(Rel-Q C)) | ||||
(Rel-Q C)))) |   ( (Rel-P B) ||||
(rev A |||||
( (Right 4)) |||||
(→ R R) |||||
(→ R R) |||||
(→ R S) |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S... | ||||
(≞ S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
(S |||||
( (S |||||
( (S |||||
( (S |||||
(S) |||||
(S) |||||
(S) |||||
(S) |||||
(S $R)) |||||
(Sam) |||||
( (Sam is really green)) |||||
( (Sam is really Green) |||||
( (Sam might be Frog)) |||||
( (Sam the frog) |||||
(see cow rabbit)) |||||
(see cow rabbit)) |||||
(see cow rabbit) |||||
(see cow rabbit) |||||
(see dog rabbit) |||||
(see dog rabbit) |||||
(see rabbit dog) |||||
(see rabbit dog) |||||
(Sentence |||||
( (Sentence |||||
( (sequential |||||
(sequential |||||
( (sequential |||||
( (sequential |||||
( (sequential |||||
(sequential |||||
(sequential |||||
(sequential |||||
(sequential |||||
(sequential |||||
(sequential |||||
(sequential |||||
(sequential |||||
( ( (shape))) |||||
( (shape)) |||||
(Singleton 42) |||||
(Singleton 42) |||||
(Singleton 42) |||||
(Singleton 42) |||||
(S K K x) $R) |||||
(S K K x) $R) $R)) |   ( (K x ||||
(= SocratesIsMortal |||||
(= SocratesIsMortal |||||
(= SocratesIsMortal |||||
(Something? |||||
( (Something? |||||
(Something) |||||
( (Something 7)) |||||
(Sophia the robot) |||||
(Sophia the robot)) | ||||
(sort |||||
(sort |||||
(sort |||||
(sort |||||
( ( (SS-P_Each $Y) |||||
( (SS-P_Each A_Each B_Each) |||||
( (SS-P_Each B_Each) |||||
( ( (SS-P_List $Y) |||||
( (SS-P_List A_List B_List) |||||
( (SS-P_List B_List) |||||
( (SS-Q_Each $Y) |||||
(SS-Q_Each A_Each C_Each)) |||||
(SS-Q_Each C_Each)) |||||
( (SS-Q_List $Y) |||||
(SS-Q_List A_List C_List)) |||||
(SS-Q_List C_List)) |||||
(start humidifier)) |||||
(start kettle) |||||
(start kettle) |||||
(start ventilation)) |||||
( (State  |||||
( (State  1 $_371388)) |||||
( (State  2 $_263826)) |||||
( (State 28)) |||||
( (State 45)) |||||
( (StateMonad Expression)) |||||
( (StateMonad Number)) |||||
( (StateMonad Number)) |||||
( (StateMonad String)) |||||
(status |||||
(status |||||
(status |||||
(status |||||
(status |||||
(stop humidifier) |||||
(stop humidifier) |||||
(stop kettle)) | ||||
( (stop kettle) |||||
(stop ventilation)) | ||||
( (stop ventilation) |||||
(-> String Bool)) |||||
(-> String Number Number)) kb rb |||||
(-> String Number Number)) kb rb |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV |||||
(STV $_12666 $_12684))) |||||
(STV $_12666 $_12684))) |||||
(STV $_12666 $_12684))) |||||
(STV $_12666 $_12684))) |||||
(STV $_12666 $_12684))) kb rb Z)) |||||
(STV $_12666 $_12684))) kb rb Z)) |||||
(STV $_12666 $_12684))) kb rb Z)) |||||
(STV $_12666 $_12684))) kb rb Z)) |||||
(STV $_12894 $_12912))) |||||
(STV $_12894 $_12912))) |||||
(STV $_12894 $_12912))) |||||
(STV $_12894 $_12912))) |||||
(STV $_12894 $_12912))) kb rb Z))) |||||
(STV $_12894 $_12912))) kb rb Z))) |||||
(STV $_12894 $_12912))) kb rb Z))) |||||
(STV $_12894 $_12912))) kb rb Z))) |||||
(STV $_18946 $_18964)))) |||||
(STV $_18946 $_18964)))) |||||
(STV $_18946 $_18964)))) |||||
(STV $_18946 $_18964)))) kb rb Z)) |||||
(STV $_18946 $_18964)))) kb rb Z)) |||||
(STV $_18946 $_18964)))) kb rb Z)) |||||
(STV $_24892 $_24910)))) |||||
(STV $_24892 $_24910)))) |||||
(STV $_24892 $_24910)))) |||||
(STV $_24892 $_24910)))) kb rb Z)) |||||
(STV $_24892 $_24910)))) kb rb Z)) |||||
(STV $_24892 $_24910)))) kb rb Z)) |||||
(STV $_32764 $_32782)))) |||||
(STV $_32764 $_32782)))) |||||
(STV $_32764 $_32782)))) kb rb |||||
(STV $_32764 $_32782)))) kb rb |||||
(STV $_37048 $_37066)))) |||||
(STV $_37048 $_37066)))) kb rb |||||
(STV $_8016 $_8034))) |||||
(STV $_8016 $_8034))) |||||
(STV $_8016 $_8034))) |||||
(STV $_8016 $_8034))) |||||
(STV $_8016 $_8034))) |||||
(STV $_8016 $_8034))) |||||
(STV $_8016 $_8034))) |||||
(STV $_8016 $_8034))) |||||
(STV $_8016 $_8034))) kb rb Z))) |||||
(STV $_8016 $_8034))) kb rb Z))) |||||
(STV $_8016 $_8034))) kb rb Z))) |||||
(STV $_8016 $_8034))) kb rb Z))) |||||
(STV $_8016 $_8034))) kb rb Z))) |||||
(STV $_8016 $_8034))) kb rb Z))) |||||
(STV $_8016 $_8034))) kb rb Z))) |||||
(STV $_8016 $_8034))) kb rb Z))) |||||
(STV $S $C))) kb rb |||||
(STV $S $C))) kb rb |||||
(STV $S $C))) kb rb |||||
(STV 0 0.5))))) |||||
(STV 0 0.5))))) |||||
(STV 0 0.5))))) |||||
(STV 0 0.5))))) |||||
(STV 0 0.5)))) |||||
(STV 0 0.5)))) |||||
(STV 0 0.5)))) |||||
( (STV 0 0.5)) |||||
(STV 0.2 0.3) |||||
(STV 0.3 0.2) |||||
( (stv 0.3 0.8)) |||||
(STV 0.4 0.1) |||||
( (stv 0.4 0.8)) |||||
(STV 0.5 0.6666666666666666)))) |||||
(STV 0.5 0.6666666666666666)))) |||||
(STV 0.6666666666666666 0.75)))) |||||
(STV 0.7 0.1)))) | ||||
( (stv 0.7047 0.68)) |||||
( (stv 0.783 0.68)) |||||
(STV 0.8 0.1))) |||||
(STV 0.8 0.4)))) |||||
(STV 0.8 0.4)))) | ||||
( (STV 0.9 0.1)) |||||
(STV 0.9 0.5)))) |||||
(STV 0.9 0.5)))) | ||||
( (stv 0.95 0.85)) |||||
(STV 0.975859 0.99)))) |||||
(STV 0.9821 0.99))) |||||
(STV 0.99 0.99)))) |||||
(STV 0.99 0.99)))) | ||||
(STV 1 0))))) |||||
(STV 1 0))))) |||||
(STV 1 0))))) |||||
(STV 1 0)))))) |||||
(STV 1 0))) |||||
(STV 1 0))) | ||||
(STV 1 0))) | () ||||
(STV 1.0 0.6666666666666666)))) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1)) |||||
(STV 1 0.1))) | () ||||
(STV 1 0.5))))) |||||
(STV 1 0.5))))) |||||
(STV 1 0.5)) |||||
(STV 1 0.5))) |||||
(STV 1 0.5)))) |||||
(STV 1 0.5)))) |||||
(STV 1 0.5)))) |||||
(STV 1 0.5)))) |||||
(STV 1 0.5)) |||||
(STV 1 0.5)) |||||
(STV 1 0.5)) |||||
(STV 1 0.5)) |||||
(STV 1 0.5)) |||||
(STV 1 0.5))) |||||
(STV 1 0.5)))) |||||
(STV 1 0.5)))) |||||
(STV 1 0.5)))) |||||
(STV 1 0.5) |||||
( (STV 1 0.5)) |||||
(STV 1 0))) |   ( (idi_formula ||||
(subclass Carrying Transfer) |||||
(subclass Carrying Transfer) |||||
(subclass Carrying Transfer)) |||||
(subclass Carrying Transfer) |||||
(subclass Carrying Transfer)) |||||
(subclass Carrying Transfer) |||||
(subclass Carrying Transfer)) |||||
(subclass Carrying Transfer)) |||||
(subsum |||||
(SuccMonotonicity |||||
(SuccMonotonicity |||||
(SuccMonotonicity |||||
(SuccMonotonicity |||||
(SuccMonotonicity |||||
(SuccMonotonicity |||||
(SuccMonotonicity |||||
(SuccMonotonicity |||||
(SuccMonotonicity |||||
(SuccMonotonicity |||||
(SuccMonotonicity |||||
(SuccMonotonicity |||||
(SuccMonotonicity |||||
(SuccMonotonicity |||||
(SuccMonotonicity ZeroLTSucc))) |||||
(SuccMonotonicity ZeroLTSucc)))) |||||
(SuccMonotonicity ZeroLTSucc)))) |||||
(SuccMonotonicity ZeroLTSucc))) |||||
(SuccMonotonicity ZeroLTSucc))) |||||
(SuccMonotonicity ZeroLTSucc))) |||||
(SuccMonotonicity ZeroLTSucc)) |||||
(SuccMonotonicity ZeroLTSucc)) |||||
(SuccMonotonicity ZeroLTSucc)) |||||
(SuccMonotonicity ZeroLTSucc) |||||
(SuccMonotonicity ZeroLTSucc) |||||
(SuccMonotonicity ZeroLTSucc))) $_24190) |||||
(SuccMonotonicity ZeroLTSucc))) $_24190) |||||
(superpose |||||
( (superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
( (superpose |||||
( (superpose |||||
( (superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
( (superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose |||||
(superpose ())))) |   ( (:: 1 ||||
(synthe... | ||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(synthesize |||||
(S Z))))))) |||||
(S Z))))))) |||||
(S Z))))))) |||||
(S Z))))))) ∅)) |||||
(S Z))))))) |||||
(S Z))))))) |||||
(S Z))))))) |||||
(S Z))))))) |||||
(S Z))))))) |||||
(S Z))))))) ∅) |||||
(S Z))))))) ∅) |||||
(S Z))))))))) |||||
(S Z))))))))) |||||
(S Z))))))))) |||||
(S Z))))))) |||||
(S Z))))))) |||||
(S Z))))))) |||||
(S Z))))))) ∅) |||||
(S Z))))))) ∅) |||||
(S Z)) ∅))) |||||
(S Z)) ∅))) |||||
(S Z))) |||||
(S Z))) |||||
(S Z))) |||||
(S Z))) ∅)) |||||
(S Z)))))))))) |||||
(S Z)))))))))) |||||
(S Z)))))))))) |||||
(S Z)) |||||
(S Z)) ∅)) |||||
(S Z)) ∅))) |||||
(S Z))) |||||
(S Z))) |||||
(S Z))) |||||
(S Z))) |||||
(S Z))) |||||
(S Z))) |||||
(S Z))) ∅) |||||
(S Z))) ∅) |||||
(S Z))) ∅)) |||||
(S Z))))) |||||
(S Z))))) |||||
(S Z))))) |||||
(S Z)))))) |||||
(S Z))))))) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)) ∅) |||||
(S Z)) ∅) |||||
(S Z)) ∅)) |||||
(S Z)) ∅)) |||||
(S Z))) |||||
(S Z))) ∅) |||||
(S Z))) ∅) |||||
(S Z)))) |||||
(S Z)))) |||||
(S Z)))) |||||
(S Z)))) |||||
(S Z)))) |||||
(S Z)))) |||||
(S Z)))) |||||
(S Z)))) |||||
(S Z))))) |||||
(S Z))))) |||||
(S Z))))) |||||
(S Z))))) |||||
(S Z))))) |||||
(S Z))))) |||||
(S Z)))))) |||||
(S Z)))))) |||||
(S Z)))))) |||||
(S Z)))))) |||||
(S Z)))))) |||||
(S Z)))))) |||||
(S Z)))))) |||||
(S Z)))))) |||||
(S Z)))))) |||||
(S Z)))))) |||||
(S Z)))))) |||||
(S Z)) ∅) |||||
(S Z)) ∅) |||||
(S Z)))) |||||
(S Z))))) |||||
(S Z))))) |||||
(S Z)) ∅) |||||
(S Z))) |||||
(S Z))) |||||
(S Z)))) |||||
(S Z)))))) |||||
(S Z)))))) |||||
(S Z)))))) |||||
(S Z)))))) | ||||
(S Z) |||||
(S Z) |||||
(S Z) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)) |||||
(S Z) |||||
(S Z) |||||
(S Z) |||||
(S Z) |||||
(S Z) |||||
(S Z) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)) |||||
(S Z)))) |||||
(S Z)))) |||||
(S Z)))) |||||
(S Z)))) | ||||
(S Z)))) | ||||
(S Z)))) | ||||
(S Z))... | ||||
(S Z) |||||
(S Z) |||||
(S Z) |||||
(S Z) |||||
(S Z) |||||
(S Z))) |||||
(S Z))) |||||
(S Z))) |||||
(S Z))) | ||||
(S Z))) | ||||
(S Z))) | ||||
(S Z))) | ||||
(S Z))) |   ( (: ||||
(S Z))) |   ( (: ||||
(S Z))) |   ( (: ||||
( (S Z)) |||||
( (S Z)) |||||
( (S Z)) |||||
(S Z)) $R) |||||
(S Z)) $R) $R)) |   ( (Add ||||
(S Z)) â) |||||
(S Z)) â))) |||||
(S Z)) â)))) |||||
(S Z)))) |   ( (â· synthesize ||||
(S Z)))) |   ( (â· synthesize ||||
(S Z)))) |   ( (â· synthesize ||||
(S Z)))) |   ( (â· synthesize ||||
(S Z)))) |   ( (â· synthesize ||||
(S Z))) |   ( (eq Z ||||
(S Z))))))) False)) |||||
(S Z))))))) False)) |||||
(S Z))))))) False)) |||||
(S Z))))))) False)) |||||
(S Z))) False)) |||||
(S Z))) False)) |||||
(S Z))) False)) |||||
(S Z))) False)) |||||
(S Z))))))) False)) kb rb |||||
(S Z))))))) False)) kb rb |||||
(S Z))) False)) kb rb |||||
(S Z))) False)) kb rb |||||
(S Z))))))) False)) kb rb Z)) |||||
(S Z))))))) False)) kb rb Z))) |||||
(S Z))) False)) kb rb Z)) |||||
(S Z))) False)) kb rb Z))) |||||
(S Z))))))))) kb rb |||||
(S Z))))) kb rb |||||
(S Z)))) kb rb |||||
(S Z)))) kb rb |||||
(S Z)))) kb rb |||||
(S Z)))) kb rb |||||
(S Z)))) kb rb |||||
(S Z)))) kb rb |||||
(S Z))))))))) kb rb Z))) |||||
(S Z))))))))) kb rb Z))) |||||
(S Z))))) kb rb Z))) |||||
(S Z))))) kb rb Z))) |||||
(S Z)))) kb rb Z))) |||||
(S Z)))) kb rb Z))) |||||
(S Z))) kb rb Z)) |   ( (: ZeroLTSucc ||||
(S Z))))) |   ( (S ||||
(S Z))) |   ( (S ||||
(S Z)))) |   ( (Something? ||||
(S Z)) True)) |||||
(S Z)) True)) |||||
(S Z)) True)) |||||
(S Z)) True)) |||||
(S Z))) |   (True ||||
(S Z)) True)) kb rb |||||
(S Z)) True)) kb rb |||||
(S Z)) True)) kb rb Z)) |||||
(S Z)) True)) kb rb Z))) |||||
(S Z) Z) |||||
(S Z) Z) |||||
(S Z)) Z)) |||||
(S Z)) Z)) | ||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
(T) |||||
( ("========== Test axiom ==========")) |||||
("===== Test base rule (built-in type checker) =====") |||||
( ("============ Test elem ============")) |||||
( ("========== Test formula ==========")) |||||
( ("========== Test inductive rule ==========")) |||||
( ("============ Test insert ============")) |||||
( ("============ Test insert_uniq ============")) |||||
("===== Test recursive rule (built-in type checker) =====") |||||
( ("============ Test sort ============")) |||||
("===== Test synthesizer ====") |||||
("===== Test synthesizer ====") |||||
( ("============ Test uniq ============")) |||||
( (Then it is definitely Frog)) |||||
(Tom is really White)) |||||
(Tom is really White)) | ||||
(Tom the cat) |||||
(Tom the cat)) |||||
(TrinaryConjunctionIntroduction |||||
(TrinaryConjunctionIntroduction |||||
(TrinaryConjunctionIntroduction |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(True) |||||
(Truth_Deduction |||||
(TupleConcat |||||
(TupleConcat |||||
(TupleConcat () |||||
(TV |||||
(TV |||||
(TV |||||
(TV |||||
(TV |||||
(Type) |||||
(Type) |||||
(Type) |||||
(Type) |||||
(unify |||||
(unify* |||||
(unify* |||||
(uniq |||||
(uniq |||||
( ("Unit Tests")) |||||
(Untyped 5))) |||||
(Untyped 5))) | ||||
(Untyped 5))) |   ( (fmap-i ||||
(UntypedC |||||
(UntypedC 10 |||||
(UntypedC 10 |||||
(UntypedC 5 |||||
( (UntypedC 7 |||||
( (UntypedC 7)) |||||
(UntypedC 8 |||||
( (VecN String 0)) |||||
( (VecN String 2)) |||||
( (Vec Number |||||
( (Vec Number Z)) |||||
(Venus orbit $X au) |||||
(well-typed |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(WitnessOf |||||
(wuza 5)) |   ( (10 4) ||||
(wuza 5)) |   ( (10 4) ||||
(wuzaL 2 |||||
(x) |||||
(x) |||||
(x) |||||
(yay) |||||
(yes) |||||
(yes) |||||
( (z)) |||||
(< Z |||||
( (:: Z |||||
(Z) |||||
( (: ZeroLTSucc |||||
... | () | |||
(-> $A $C))) ... | () | |||
($F1 $C1)))) |   ( (1.0 0.9)) | |||
($Obj is $Prop) $Obj))) |   (Ball) | |||
($P Fritz) T) $P)) |   (croaks eat_flies) | |||
(: $Prf A) Z)) |   ( (: a A)) | |||
($Q $A) $Qatv... | () | |||
(:= $R $R2) $R2))) |   (x) | |||
($Rel $X))) | () | |||
($Rel $X))) | () | |||
($SS A_Each $X))) | () | |||
($SS A_List $X))) | () | |||
($Who is really green))) |   ( (Sam is really green)) | |||
(* $X $X))) |   (25) | |||
(= $X $X) T)) | () | |||
(-> $X $Y))))) |   ( (-> $_91244 B)) | |||
(-> $X $Y))) |   ( (-> A B)) | |||
(+ $X 1)) 2)) |   (3) | |||
($X might be $P))) |   ( (Sam might be Frog)) | |||
(- $Y $X))) | () | |||
( ($Z $Z))))))) |   ( (Link A B)) | |||
(+ 1 $X))))) |   (3 4 5) | |||
(+ 1 $X))))) |   (7) | |||
(1.0 0.9))) |   ( (1.0 0.81)) | |||
(> 1 2) 1 2)) |   (2) | |||
(> 1 2) 1 2)) |   (2) | |||
(1 2))) |   (1764) | |||
(+ 1 2)) |   (3) | |||
(+ 1 2)) |   (3) | |||
(+ 1 2)) |   (3) | |||
(1 2 3))) |   ( ( (1 2 3))) | |||
(1 2 3 1 2 3 1 2 3 1 2 ... |   ( (1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3... | |||
(1 2 3)) 1)) |   (2 3 4) | |||
(1 2 3)))) |   (2 3 4) | |||
(1 2 3)))) |   (2 3 4) | |||
(% 21 17)) |   (4) | |||
(+ 2 2))) |   ( (ln 4)) | |||
(+ 2 2))) |   (True) | |||
(== 2 3)) |   (False) | |||
(2 7))) |   (9) | |||
(- 3 1))) |   (T T) | |||
(* 3 5.5))) |   (18.5) | |||
(* 3 5)))) |   (True) | |||
(< 4 3))) |   (False) | |||
(/ 4 6.4))) |   (7.375) | |||
(4 OK-4)))) |   (OK-3 OK-4) | |||
(<= 5 4)) |   (False) | |||
(5 6))) |   ( (5 6)) | |||
(+ 5 7))) |   (Number) | |||
(6 Error)))) |   (OK) | |||
(â $P $Q) $P $Q))) | () | |||
(â $P $Q) $P $Q))) | () | |||
(â $P $R)))) | () | |||
(: a A))) | () | |||
(â A B)))) | () | |||
(â A B))) | () | |||
(â A B))) | () | |||
(â A B))) | () | |||
(â A B))) | () | |||
(A B)))) | () | |||
(â B C)))) | () | |||
(â B C))) | () | |||
(â B C))) | () | |||
(â B C))) | () | |||
(â B C))) | () | |||
(a b c))))) |   (a b c) | |||
(a b c) ())) |   ( (a b c)) | |||
(a b c))) |   (a b c) | |||
(a b c)) x y z))) |   (a b c x y z) | |||
(abs -10)) |   (10) | |||
(A B))) |   (True) | |||
(add-atom &attentional_focus 1)) | () | |||
(add-atom &belief_events belief1)) | () | |||
(add-atom &concepts 2)) | () | |||
(add-atom &goal_events goal1)) | () | |||
(add-atom &kb_bem A)) | () | |||
(add-atom &kb_bem A)) | () | |||
(add-atom &kb_em A)) | () | |||
(add-atom &kb_em A)) | () | |||
(add-atom &WU a)) | () | |||
(add-atom &WU b)) | () | |||
(Add Something Z)) |   (Something) | |||
(Add S Z)) |   (S) | |||
(Add Z Ten)) |   ( (Add Z Ten)) | |||
(Add Z Z))) |   (T) | |||
(Add Z Z))) |   (T) | |||
(Add Z Z))) |   (T) | |||
(Add Z Z) Z)) |   (T) | |||
(and True False) True) 1 2)) |   (1) | |||
(and True True)) |   (True) | |||
(approxEq 10 10.0001 0.001)) |   (True) | |||
(approxEq 10 10.0001 1.0e-9)) |   (False) | |||
(â P... |   (True) | |||
(&attentional_focus &concepts)) $Num1 $Num1)) |   (1 2) | |||
(base_prf)) |   ( (base_prf)) | |||
(bc_bare A kb_bare rb_bare Z)) |   (A) | |||
(bc_bem A Z)) |   (A) | |||
(bc_em A Z)) |   (A) | |||
(bc_eq A kb_eq Z)) |   (A) | |||
(B C)))) |   (False) | |||
(bin)) |   (0 1) | |||
(bin))) |   (1 2) | |||
(C D)))) | () | |||
(ceil 2.4)) |   (3) | |||
(change-state! &FIFO 45)) |   ( (State  45 $_397126)) | |||
(change-state! &state-active inactive))) | () | |||
(clamp 2 0 1)) |   (1) | |||
(color) $X) $X)) |   (green yellow red) | |||
(color)) |   (green yellow red) | |||
(color)) |   (green yellow red) | |||
(Color of Planet $Obj is $Prop))) | () | |||
(Color of Planet $Obj is $Prop))) | () | |||
(conditional-probability-consistency 0.2 0.3 1)) |   (True) | |||
(conditional-probability-consistency 0.3 0.4 0.9)) |   (True) | |||
(conditional-probability-consistency 0.9 0.6 0.5)) |   (False) | |||
(confidence->count 0.9)) |   (9.000000000000002) | |||
(Cons 1 Nil)))) |   ( (Cons 1 Nil)) | |||
(Cons 1 Nil))) |   ( (Cons 1 Nil)) | |||
(Cons 1 Nil)) |   ( (Cons 1 Nil)) | |||
(Cons 1 Nil))))) |   ( (Cons 2 Nil)) | |||
(Cons 1 Nil) Nil)) |   (Nil) | |||
(Cons 1 Nil))) |   (True) | |||
(Cons 1 Nil)))) |   ( (Vec Number Z)) | |||
(Cons 2 Nil))) |   ( (Cons 2 Nil)) | |||
(Cons 2 Nil))))) |   (False) | |||
(Cons 2 Nil))) |   (Nil) | |||
(Cons 2 Nil))))) |   (True) | |||
(Cons 6 Nil))) $T)) |   (Number) | |||
(Cons 6 Nil)))) |   ( (List Number)) | |||
(ConsN 1 NilN)))) |   ( (VecN String 0)) | |||
(ConsN 2 NilN)))) |   ( (VecN String 2)) | |||
(count->confidence 10)) |   (0.9090909090909091) | |||
(count->confidence 1)) |   (0.5) | |||
(croaks Fritz))) |   ( (stv 0.95 0.85)) | |||
( ( (curry +) 2) 3)) |   (5) | |||
( (curry +) 2)) |   ( ( (curry +) 2)) | |||
( (curry +) 2))) |   ( (-> Number Number)) | |||
( (curry-a + 2) 3)) |   (5) | |||
( (curry-a + 2) 3))) |   (Number) | |||
(curry-a + 2))) |   ( (-> Number Number)) | |||
( (curry-a is Socrates) Human)) |   (True) | |||
(deduction_match &self)) | () | |||
(dropN NilN)) |   ( (dropN NilN)) | |||
(dup 2)) |   (102 12) | |||
(dup 2)) |   (102 12) | |||
(e f g))) |   ( (a b c e f g)) | |||
(e f g))) |   ( (e f g)) | |||
(elem 1 â)) |   (False) | |||
(eqa Z $Z))) |   (T) | |||
(eq Green Blue)) |   ( (eq Green Blue)) | |||
(expression without known equalities)) |   ( (expression without known equalities)) | |||
(f $X) $Y) $Y)) | () | |||
(f $X))) $Z)) |   ( (Link A B)) | |||
(f 1)) |   (1) | |||
(f 2) $X) $X)) |   ( (g 3)) | |||
(f 2)) |   (103) | |||
(f 2)) |   (103) | |||
(f 2)) |   (103) | |||
(f)) |   (42) | |||
(f 42)) |   (42) | |||
(FA))) | () | |||
(facF 10)) |   (3628800) | |||
(fact 5)) |   (120) | |||
(fact 5)) |   (120) | |||
(f g)))) |   ( (. Empty Empty)) | |||
(f g))))) |   (True) | |||
(foo))) | () | |||
(Frog $X) $Y)) $Y)) | () | |||
(frog Fritz))) |   ( (stv 0.783 0.68)) | |||
(Frog Sam)) |   ( (Frog Sam)) | |||
(frog Sam)) |   (T) | |||
(fromNumber 0))) |   ( (â A B)) | |||
(fromNumber 0))) |   ( (â A B)) | |||
(fromNumber 0))) |   ( (â A B)) | |||
(fromNumber 0))) |   ( (â B C)) | |||
(fromNumber 0))) |   ( (â B C)) | |||
(fromNumber 0))) |   ( (â B C)) | |||
(fromNumber 1))) | () | |||
(fromNumber 1))) | () | |||
(fromNumber 1))) | () | |||
(fromNumber 1))) | () | |||
(fromNumber 1))) | () | |||
(fromNumber 1))) | () | |||
(fromNumber 1))) | () | |||
(fromNumber 1)) |   ( (S Z)) | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) | () | |||
(fromNumber 2))) |   (A) | |||
(fromNumber 2))) |   (A) | |||
(fromNumber 2))) |   (A) | |||
(fromNumber 2))) |   (A) | |||
(fromNumber 2))) |   (A) | |||
(fromNumber 2))) |   (A) | |||
(fromNumber 2))) |   ( (â¢ A)) | |||
(fromNumber 2))) |   ( (â¢ A)) | |||
(fromNumber 2))) |   ( (: a A)) | |||
(fromNumber 2))) |   ( (: a A)) | |||
(fromNumber 2))) |   ( (â A B)) | |||
(fromNumber 2))) |   ( (â A B)) | |||
(fromNumber 2))) |   ( (â A B)) | |||
(fromNumber 2))) |   ( (â A B)) | |||
(fromNumber 2))) |   ( (â A B)) | |||
(fromNumber 2))) |   ( (â A B)) | |||
(fromNumber 3))) | () | |||
(fromNumber 3))) | () | |||
(fromNumber 4))) | () | |||
(fromNumber 4))) | () | |||
(fromNumber 5))) | () | |||
(g 2)) |   (102) | |||
(g 2)) |   (102) | |||
(g 2)) |   (102) | |||
(g 42)) |   (True) | |||
(get-state $X) 1)))) |   ( (State  2 $_263826)) | |||
(get-state &FIFO)) |   (45) | |||
(get-state &var)) |   (28) | |||
(get-state &var)))))) |   ( (State  28 $_310716)) | |||
(get-token))) |   ( (A B)) | |||
(get-token))) |   ( (C D)) | |||
(get-type $V))) |   ( (StateMonad Number)) | |||
(get-type $X)))) | () | |||
(get-type 5)) |   (Number) | |||
(get-type Either)) |   (Type) | |||
(get-type lion1)) |   (Lion) | |||
(get-type Lion)) |   (Cat) | |||
(get-type +)) |   ( (-> Number Number Number)) | |||
(get-type recursive_prf)) | () | |||
(get-type &self))) |   (False) | |||
(get-type &self)) |   (hyperon::space::DynSpace) | |||
(get-type &state-token)) |   ( (StateMonad Expression)) | |||
( (. g f) 42)) |   (True) | |||
(Goal $Goal)) &state-active) $Goal)) | () | |||
(Goal lunch-order)) active))) | () | |||
(Goal lunch-order)))) |   (inactive) | |||
(Goal lunch-order)))) |   (inactive) | |||
(Green $Who) $Who)) |   (Sam) | |||
(Green $Who))) |   (T) | |||
(Green $Who)) |   (T) | |||
(Green $X)))) | () | |||
(green $X) $X)) |   (Fritz) | |||
(Green $X) $X)) |   (Sam Fritz) | |||
(green Fritz))) |   ( (stv 0.7047 0.68)) | |||
(green Fritz)) |   (T T) | |||
(Green Tom) $Tv) $Tv)) |   (F) | |||
(HumansAreMortal SocratesIsHuman))) |   ( (Mortal Socrates)) | |||
(HumansAreMortal SocratesIsHuman))) |   (T) | |||
(HumansAreMortal SocratesIsHuman)))) |   (Type) | |||
(idi_induction_match &self)) | () | |||
(if True S F)) | () | |||
(if True S F)) |   (S) | |||
(if True S F)) |   (S) | |||
(if True S F)) |   (S) | |||
(import! &kb c2_spaces_kb.metta)) | () | |||
(import! &kb john-carry-flower.kif.metta)) | () | |||
(import! &kb located.kif.metta)) | () | |||
(import! &kb orientation.kif.metta)) | () | |||
(import! &rb "../rule-base.metta")) | () | |||
(import! &rb "../rule-base.metta")) | () | |||
(import! &rb "../rule-base.metta")) | () | |||
(import! &self c2_spaces_kb.metta)) | () | |||
(import! &self "../../common/Num.metta")) | () | |||
(import! &self "../../common/Record.metta")) | () | |||
(import! &self "../../common/Record.metta")) | () | |||
(import! &self "../common/Record.metta")) | () | |||
(import! &self EqualityType.metta)) | () | |||
(import! &self f1_moduleC.metta)) | () | |||
(import! &self f1_moduleC.metta)) | () | |||
(import! &self f1_moduleC.metta)) | () | |||
(import! &self List.metta)) | () | |||
(import! &self Maybe.metta)) | () | |||
(import! &self Num.metta)) | () | |||
(import! &self Unify.metta)) | () | |||
(in... |   (10 11 12 13 14 15) | |||
( (inc) 2)) |   ( ( (plus 1) 2)) | |||
( (inc) 5)) | () | |||
(increment)... |   (16 17 18 19 20 21) | |||
(increment)))) |   (2 3) | |||
(increment)))) |   (4 5 6) | |||
(increment)))))) |   (7 8 9) | |||
(insert 1 â)) |   ( (:: 1 â)) | |||
(insert 1 â))) |   (True) | |||
(insert 1 Nil)) |   ( (Cons 1 Nil)) | |||
(insert 1 Nil)) |   ( (Cons 1 Nil)) | |||
(insert 2 â))) |   (False) | |||
(insert 2 â)))) |   (True) | |||
(insert 3 â)))) |   (False) | |||
(insert 3 â))))) |   (True) | |||
(interleave Nil Nil)) |   (Nil) | |||
(isa $Color color) $Color)) |   (red green blue) | |||
(is-socrates)) |   ( (curry-a is Socrates)) | |||
( (is-socrates) Human)) |   ( ( (curry-a is Socrates) Human)) | |||
(Just 10) Nothing)) |   (False) | |||
(Just 10))) |   (True) | |||
(Just 20))) |   (True) | |||
(Just 2))) |   ( (Just 3)) | |||
(K x)) $R) $R)) |   (x) | |||
(Left 5))) |   (Either) | |||
(Left 5)))) |   ( (Either Number)) | |||
(LeftP 5))) |   ( (EitherP Number)) | |||
(Link $X $Y $Z))) |   ( (Link $_302928 $_302934 $_302940)) | |||
(Link $X $Y))))) |   ( (Link $_304440 B)) | |||
(Link $X $Y))))) |   ( (Link $_378636 B)) | |||
(Link $X $Y))) |   ( (Link A $_518482)) | |||
(Link $X $Y))) |   ( (Link A B)) | |||
(Link $X $Y))) |   ( (Link A B)) | |||
(Link $X $Y))) |   ( (Link A B)) | |||
(: Lion $Num1) $Num1)) |   (Cat) | |||
(+ ln 2))) |   (False) | |||
(match &attentional_focus $Num1 $Num1)) |   (1) | |||
(match &concepts $Num1 $Num1)) |   (2) | |||
(match &WU $Num1 $Num1)) |   (a) | |||
(match &WU $Num1 $Num1)) |   (b) | |||
(max 3 4)) |   (4) | |||
(maybe-inc Nothing)) |   (Nothing) | |||
(min 3 4)) |   (3) | |||
(mortal $A))))) |   ( (mortal man)) | |||
(Mortal $X) $X)) |   (Socrates Plato) | |||
(Mortal Plato)) |   ( (Mortal Plato)) | |||
(mortal Plato)))) |   (T) | |||
(Mortal Plato)) |   (T) | |||
(Mortal Plato) T)) |   (T) | |||
(Mortal Plato)))) |   (Type) | |||
(Mortal Plato))) |   (Type) | |||
(Mortal Socrates) T)) |   (T) | |||
(new-goal-status! lunch-order inactive)) | () | |||
(new-goal-status! meditation inactive)) | () | |||
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
(new-state 1))) | () | |||
(new-state 1) $Tnso)) |   ( (State  1 $_371388)) | |||
(new-state 2))) |   ( (StateMonad Number)) | |||
(new-state 42))) | () | |||
(new-state active))) | () | |||
(new-state S) V))) |   ( (StateMonad String)) | |||
( (nop 1))))) | () | |||
(Nothing))) |   ( (Nothing)) | |||
(objectTransferred $C $F)... | () | |||
(of-same-type Color Shape)) |   (T) | |||
(of-same-type Green Red)) |   (T) | |||
(orientation JohnsFlower... | () | |||
(or True False)) |   (True) | |||
(PB)))) | () | |||
(pragma! type-check auto)) | () | |||
(Q_Each $Y)) ... |   (no-match) | |||
(Q_List $Y)) ... |   (no-match) | |||
(range 1 1)) | () | |||
(range 1 10)) |   ( (1 2 3 4 5 6 7 8 9)) | |||
(range 1 3)) |   ( (1 2)) | |||
(range 2 6)) |   ( (2 3 4 5)) | |||
(recursive_prf)) |   ( (recursive_prf)) | |||
(Refl T42))) |   (True) | |||
(remove-atom &WU a)) | () | |||
(: reproduce $Num1) $Num1)) |   ( (-> Lion Lion Lion)) | |||
(reproduce lion1 lion2)) |   (childlion) | |||
(Right 3))) |   ( (Right 4)) | |||
(Right 5)))) |   (Bool) | |||
(shape))) |   ( ( (shape))) | |||
(shape)) |   ( (shape)) | |||
(simple-deduction-strength-formula 0.9 0.6 0.5 0.3 0.4)) |   (0) | |||
(S K K x)) |   (x) | |||
(S K K x) x)) |   (T) | |||
(smallest-intersection-probability 0.9 0.6)) |   (0.5555555555555556) | |||
(Something 5))) |   ( (Something 7)) | |||
(sqr 4)) |   (16) | |||
(STV 0.1 0.2)))) |   (0.1) | |||
(STV 0.1 0.2))) |   (0.1) | |||
(STV 0.1 0.2)))) |   (0.2) | |||
(STV 0.1 0.2))) |   (0.2) | |||
(STV 0.1 0.9)))) |   (0.14) | |||
(STV 0.1 0.9))) |   (0.14) | |||
(STV 0.1 0.9)))) |   (9.000000000000002) | |||
(STV 0.1 0.9))) |   (9.000000000000002) | |||
(STV 0.9 0.7))) |   ( (STV 0.9 0.1)) | |||
(STV 1 0))) |   ( (STV 0.0 0.5)) | |||
(STV 1 0))) |   ( (STV 1.0 0.5)) | |||
(superpose ()))) | () | |||
(superpose ()))) | () | |||
(S Z)) $R)) |   (Z) | |||
(S Z)) $Tv) $Tv))) |   (T) | |||
(S Z)))) |   (2) | |||
(S Z))) |   ( (S Z)) | |||
(S Z) Z)) |   ( (S Z)) | |||
... |   (T) | |||
("========== Test axiom ==========")) |   ( ("========== Test axiom ==========")) | |||
("============ Test elem ============")) |   ( ("============ Test elem ============")) | |||
("========== Test formula ==========")) |   ( ("========== Test formula ==========")) | |||
("========== Test inductive rule ==========")) |   ( ("========== Test inductive rule ==========")) | |||
("============ Test insert ============")) |   ( ("============ Test insert ============")) | |||
("============ Test insert_uniq ============")) |   ( ("============ Test insert_uniq ============")) | |||
("============ Test sort ============")) |   ( ("============ Test sort ============")) | |||
("============ Test uniq ============")) |   ( ("============ Test uniq ============")) | |||
(Then it is de... | () | |||
... |   (True) | |||
("Unit Tests")) |   ( ("Unit Tests")) | |||
(UntypedC 5))) |   ( (UntypedC 7)) | |||
(%void% 42)))) |   (42) | |||
( (%void% 42)))) |   (42) | |||
(%void% 42)))) |   (yes) | |||
(%void% 42)))) |   (yes) | |||
(%void% no-match)))) |   (no-match) | |||
(WitnessOf $X) $X)))) | () | |||
(WitnessOf $X) $X)))) | () | |||
(WitnessOf $X) $X)))) | () | |||
(x y z))))) |   (a b c x y z) | |||
... |   (yay) | |||
(z)) |   ( (z)) | |||
($P is-a Color) $P)) | () | () |||
(+ 5 4))) |   (Number) | () |||
( (6 OK)))) | () | () |||
(Cons 6 Nil)))) | () | () |||
( (curry-a + 2) S))) |   (Number) | () |||
(drop Nil))) | () | () |||
(frog Fritz)) | () | () |||
(fromNumber 3))) | () | () |||
(fromNumber 4))) | () | () |||
(Human Sam) T)) | () | () |||
(HumansAreMortal PlatoIsHuman)))) |   (Type) | () |||
(Human Socrates)))) | () | () |||
(incremen... | () | () |||
(isLeft 5))) |   (Bool) | () |||
(Left 5)))) | () | () |||
(Link $X $Y))) | () | () |||
(Link $X $Y))))) |   ( (Link $_234612 B)) | () |||
(Mortal Plato) T)) | () | () |||
( (nop 1)))) | () | () |||
(Null) 5)))) | () | () |||
(+ -))) |   (Number) | () |||
(shape) $X) $X))) | () | () |||
(= SocratesIsHuman PlatoIsHuman))) |   (Type) | () |||
(= SocratesIsHuman SocratesIsMortal))) |   (Type) | () |||
(superpose ())) | () | () |||
(S Z)) $Tv) $Tv)) | () | () |||
(UntypedC 5)))) | () | () |||
( (%void% 42)))) |   (42) | () |||
( (%void% 42)))) |   (42) | () |||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.01) |   (assertEqualToResult "=== Bare Entail ===") |   ("=== Bare Entail ===") | 
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.02) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.03) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.04) |   (assertEqual ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.05) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.06) |   (assertEqualToResult "=== Equality ===") |   ("=== Equality ===") | 
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.07) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.08) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.09) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.10) |   (assertEqual ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.11) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.12) |   (assertEqual ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.13) |   (assertEqualToResult "=== Bare Entail Match ===") |   ("=== Bare Entail Match ===") | 
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.14) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.15) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.16) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.17) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.18) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.19) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.20) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.21) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.22) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.23) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.24](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.24) |   (assertEqual ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.25](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.25) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.26](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.26) |   (assertEqual ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.27](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.27) |   (assertEqualToResult "=== Equality Match ===") |   ("=== Equality Match ===") | 
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.28](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.28) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.29](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.29) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.30](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.30) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.31](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.31) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.32](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.32) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.33](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.33) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.34](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.34) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.35](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.35) |   (assertEqual ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.36](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.36) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.37](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.37) |   (assertEqual ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.38](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.38) |   (assertEqualToResult "=== DTL Equality Match ===") |   ("=== DTL Equality Match ===") | 
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.39](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.39) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.40](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.40) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.41](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.41) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.42](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.42) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.43](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.43) |   (assertEqual ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.44](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.44) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.45](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.45) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.46](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.46) |   (assertEqualToResult ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.47](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.47) |   (assertEqual ||
| PASS | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.48](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.48) |   (assertEqual ||
| FAIL | [BACKWARD-CHAINER.BACKWARD-CHAINER-XP.49](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/backward-chainer/backward-chainer-xp.metta.html#BACKWARD-CHAINER.BACKWARD-CHAINER-XP.49) |   (assertEqual ||
| PASS | [COMMON.EQUALITYTYPETEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/EqualityTypeTest.metta.html#COMMON.EQUALITYTYPETEST.01) |   (assertEqualToResult ||
| PASS | [COMMON.EQUALITYTYPETEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/EqualityTypeTest.metta.html#COMMON.EQUALITYTYPETEST.02) |   (assertEqualToResult ||
| PASS | [COMMON.INTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/InTest.metta.html#COMMON.INTEST.01) |   (assertEqual ||
| PASS | [COMMON.LISTTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.01) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.02) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.03) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.04) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.05) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.06) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.07) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.08) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.09) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.10) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.11) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.12) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.13) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.14) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.15) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.16) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.17) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.18) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.19) |   (assertEqualToResult ||
| PASS | [COMMON.LISTTEST.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/ListTest.metta.html#COMMON.LISTTEST.20) |   (assertEqualToResult ||
| PASS | [COMMON.MAYBETEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/MaybeTest.metta.html#COMMON.MAYBETEST.01) |   (assertEqualToResult ||
| PASS | [COMMON.MAYBETEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/MaybeTest.metta.html#COMMON.MAYBETEST.02) |   (assertEqualToResult ||
| PASS | [COMMON.MAYBETEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/MaybeTest.metta.html#COMMON.MAYBETEST.03) |   (assertEqualToResult ||
| PASS | [COMMON.MAYBETEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/MaybeTest.metta.html#COMMON.MAYBETEST.04) |   (assertEqualToResult ||
| PASS | [COMMON.NUMTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html#COMMON.NUMTEST.01) |   (assertEqualToResult ||
| PASS | [COMMON.NUMTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html#COMMON.NUMTEST.02) |   (import! &self) | () | 
| PASS | [COMMON.NUMTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html#COMMON.NUMTEST.03) |   (assertEqual ||
| PASS | [COMMON.NUMTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html#COMMON.NUMTEST.04) |   (assertEqual ||
| PASS | [COMMON.NUMTEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html#COMMON.NUMTEST.05) |   (assertEqual ||
| PASS | [COMMON.NUMTEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html#COMMON.NUMTEST.06) |   (assertEqual ||
| PASS | [COMMON.NUMTEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html#COMMON.NUMTEST.07) |   (assertEqual ||
| PASS | [COMMON.NUMTEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html#COMMON.NUMTEST.08) |   (assertEqual ||
| FAIL | [COMMON.NUMTEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html#COMMON.NUMTEST.09) |   (assertEqual ||
| PASS | [COMMON.NUMTEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html#COMMON.NUMTEST.10) |   (assertEqual ||
| PASS | [COMMON.NUMTEST.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html#COMMON.NUMTEST.11) |   (assertEqual ||
| FAIL | [COMMON.NUMTEST.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/NumTest.metta.html#COMMON.NUMTEST.12) |   (assertEqual ||
| PASS | [COMMON.ORDEREDSETTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html#COMMON.ORDEREDSETTEST.01) |   (import! &self) | () | 
| PASS | [COMMON.ORDEREDSETTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html#COMMON.ORDEREDSETTEST.02) |   (assertEqual ||
| PASS | [COMMON.ORDEREDSETTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html#COMMON.ORDEREDSETTEST.03) |   (assertEqual ||
| PASS | [COMMON.ORDEREDSETTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html#COMMON.ORDEREDSETTEST.04) |   (assertEqual ||
| PASS | [COMMON.ORDEREDSETTEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html#COMMON.ORDEREDSETTEST.05) |   (assertEqual ||
| PASS | [COMMON.ORDEREDSETTEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html#COMMON.ORDEREDSETTEST.06) |   (assertEqual ||
| PASS | [COMMON.ORDEREDSETTEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html#COMMON.ORDEREDSETTEST.07) |   (assertEqual ||
| PASS | [COMMON.ORDEREDSETTEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html#COMMON.ORDEREDSETTEST.08) |   (assertEqual ||
| PASS | [COMMON.ORDEREDSETTEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html#COMMON.ORDEREDSETTEST.09) |   (assertEqual ||
| PASS | [COMMON.ORDEREDSETTEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html#COMMON.ORDEREDSETTEST.10) |   (assertEqual ||
| PASS | [COMMON.ORDEREDSETTEST.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html#COMMON.ORDEREDSETTEST.11) |   (assertEqual ||
| FAIL | [COMMON.ORDEREDSETTEST.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/OrderedSetTest.metta.html#COMMON.ORDEREDSETTEST.12) |   (assertEqual ||
| PASS | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.01) |   (import! &self) | () | 
| PASS | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.02) |   (import! &self) | () | 
| PASS | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.03) |   (assertEqualToResult ||
| PASS | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.04) |   (assertEqualToResult "===== Test synthesizer ====") |   ("===== Test synthesizer ====") | 
| PASS | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.05) |   (assertEqual ||
| PASS | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.06) |   (assertEqual ||
| PASS | [DEPENDENT-TYPES.DEDUCTIONDTLTEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta.html#DEPENDENT-TYPES.DEDUCTIONDTLTEST.07) |   (assertEqualToResult ||
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.01) |   (import! &self) | () | 
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.02) |   (import! &self) | () | 
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.03) |   (assertEqualToResult "===== Test base rule (built-in type checker) =====") |   ("===== Test base rule (built-in type checker) =====") | 
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.04) |   (assertEqualToResult ||
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.05) |   (assertEqualToResult ||
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.06) |   (assertEqualToResult "===== Test recursive rule (built-in type checker) =====") |   ("===== Test recursive rule (built-in type checker) =====") | 
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.07) |   (assertEqualToResult ||
| FAIL | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.08) |   (assertEqualToResult ||
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.09) |   (assertEqualToResult "===== Prove that 2 < 7 (synthesizer) =====") |   ("===== Prove that 2 < 7 (synthesizer) =====") | 
| FAIL | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.10) |   (assertEqualToResult ||
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.11) |   (assertEqualToResult "===== Prove that 2 < 3 (synthesizer) =====") |   ("===== Prove that 2 < 3 (synthesizer) =====") | 
| FAIL | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.12) |   (assertEqualToResult ||
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.13) |   (assertEqualToResult "===== Prove that 5 < 7 (synthesizer) =====") |   ("===== Prove that 5 < 7 (synthesizer) =====") | 
| FAIL | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.14) |   (assertEqualToResult ||
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.15) |   (assertEqualToResult "===== Prove Pâ\x86\\x92\Q using base rule (synthesizer) =====") |   ("===== Prove Pâ\x86\\x92\Q using base rule (synthesizer) =====") | 
| FAIL | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.16) |   (assertEqualToResult ||
| PASS | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.17) |   (assertEqualToResult "===== Prove Pâ\x86\\x92\Q using base, recursive and order rules (synthesizer) =====") |   ("===== Prove Pâ\x86\\x92\Q using base, recursive and order rules (synthesizer) =====") | 
| FAIL | [DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta.html#DEPENDENT-TYPES.IMPLICATIONDIRECTINTRODUCTIONDTLTEST.18) |   (assertEqualToResult ||
| PASS | [DEPENDENT-TYPES.MODUSPONENSDTLTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html#DEPENDENT-TYPES.MODUSPONENSDTLTEST.01) |   (import! &self) | () | 
| PASS | [DEPENDENT-TYPES.MODUSPONENSDTLTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html#DEPENDENT-TYPES.MODUSPONENSDTLTEST.02) |   (import! &self) | () | 
| PASS | [DEPENDENT-TYPES.MODUSPONENSDTLTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html#DEPENDENT-TYPES.MODUSPONENSDTLTEST.03) |   (assertEqualToResult "===== Test synthesizer ====") |   ("===== Test synthesizer ====") | 
| PASS | [DEPENDENT-TYPES.MODUSPONENSDTLTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html#DEPENDENT-TYPES.MODUSPONENSDTLTEST.04) |   (assertEqualToResult ||
| FAIL | [DEPENDENT-TYPES.MODUSPONENSDTLTEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html#DEPENDENT-TYPES.MODUSPONENSDTLTEST.05) |   (assertEqualToResult ||
| FAIL | [DEPENDENT-TYPES.MODUSPONENSDTLTEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta.html#DEPENDENT-TYPES.MODUSPONENSDTLTEST.06) |   (assertEqualToResult ||
| PASS | [ENTAIL.DEDUCTIONENTAILTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/entail/DeductionEntailTest.metta.html#ENTAIL.DEDUCTIONENTAILTEST.01) |   (import! &self) | () | 
| FAIL | [ENTAIL.DEDUCTIONENTAILTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/entail/DeductionEntailTest.metta.html#ENTAIL.DEDUCTIONENTAILTEST.02) |   (assertEqualToResult ||
| PASS | [ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html#ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.01) |   (import! &self) | () | 
| PASS | [ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html#ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.02) |   (assertEqualToResult ||
| PASS | [ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html#ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.03) |   (assertEqualToResult ||
| PASS | [ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html#ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.04) |   (assertEqualToResult ||
| FAIL | [ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html#ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.05) |   (assertEqualToResult ||
| PASS | [ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html#ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.06) |   (assertEqualToResult ||
| FAIL | [ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta.html#ENTAIL.IMPLICATIONDIRECTINTRODUCTIONENTAILTEST.07) |   (assertEqualToResult ||
| PASS | [EQUAL.DEDUCTIONEQUALTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/equal/DeductionEqualTest.metta.html#EQUAL.DEDUCTIONEQUALTEST.01) |   (import! &self) | () | 
| FAIL | [EQUAL.DEDUCTIONEQUALTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/equal/DeductionEqualTest.metta.html#EQUAL.DEDUCTIONEQUALTEST.02) |   (assertEqualToResult ||
| FAIL | [EQUAL.DEDUCTIONEQUALTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/equal/DeductionEqualTest.metta.html#EQUAL.DEDUCTIONEQUALTEST.03) |   (assertEqualToResult ||
| PASS | [EQUAL.IMPLICATIONDIRECTINTRODUCTIONEQUALTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/equal/ImplicationDirectIntroductionEqualTest.metta.html#EQUAL.IMPLICATIONDIRECTINTRODUCTIONEQUALTEST.01) |   (import! &self) | () | 
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-SUPERPOSE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-SUPERPOSE.01) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-SUPERPOSE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-SUPERPOSE.02) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-SUPERPOSE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-SUPERPOSE.03) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-SUPERPOSE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-SUPERPOSE.04) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.01) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.02) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.03) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.04) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.05) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.06) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.07) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.08) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.09) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.10) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.11) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.12) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.13) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-TYPE-CHECKING.14) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.01) |   (import! &self) | () | 
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.02) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.03) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.04) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.05) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.06) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.07) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.08) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.09) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.10) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.11) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.12) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST.13) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST-LONGER.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST-LONGER.01) |   (import! &self) | () | 
| PASS | [EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST-LONGER.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta.html#EXPERIMENTS.SYNTHESIZE-VIA-UNIFY-TEST-LONGER.02) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html#EXPERIMENTS.UNIFY-VIA-CASE.01) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html#EXPERIMENTS.UNIFY-VIA-CASE.02) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html#EXPERIMENTS.UNIFY-VIA-CASE.03) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html#EXPERIMENTS.UNIFY-VIA-CASE.04) |   (assertEqualToResult ||
| FAIL | [EXPERIMENTS.UNIFY-VIA-CASE.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html#EXPERIMENTS.UNIFY-VIA-CASE.05) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.UNIFY-VIA-CASE.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta.html#EXPERIMENTS.UNIFY-VIA-CASE.06) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html#EXPERIMENTS.UNIFY-VIA-LET.01) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html#EXPERIMENTS.UNIFY-VIA-LET.02) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html#EXPERIMENTS.UNIFY-VIA-LET.03) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html#EXPERIMENTS.UNIFY-VIA-LET.04) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html#EXPERIMENTS.UNIFY-VIA-LET.05) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html#EXPERIMENTS.UNIFY-VIA-LET.06) |   (assertEqualToResult ||
| PASS | [EXPERIMENTS.UNIFY-VIA-LET.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta.html#EXPERIMENTS.UNIFY-VIA-LET.07) |   (assertEqualToResult ||
| PASS | [FORMULA.DEDUCTIONFORMULATEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html#FORMULA.DEDUCTIONFORMULATEST.01) |   (import! &self) | () | 
| PASS | [FORMULA.DEDUCTIONFORMULATEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html#FORMULA.DEDUCTIONFORMULATEST.02) |   (assertEqualToResult ||
| PASS | [FORMULA.DEDUCTIONFORMULATEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html#FORMULA.DEDUCTIONFORMULATEST.03) |   (assertEqualToResult ||
| PASS | [FORMULA.DEDUCTIONFORMULATEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html#FORMULA.DEDUCTIONFORMULATEST.04) |   (assertEqualToResult ||
| PASS | [FORMULA.DEDUCTIONFORMULATEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html#FORMULA.DEDUCTIONFORMULATEST.05) |   (assertEqualToResult ||
| PASS | [FORMULA.DEDUCTIONFORMULATEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html#FORMULA.DEDUCTIONFORMULATEST.06) |   (assertEqualToResult ||
| PASS | [FORMULA.DEDUCTIONFORMULATEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html#FORMULA.DEDUCTIONFORMULATEST.07) |   (assertEqualToResult ||
| PASS | [FORMULA.DEDUCTIONFORMULATEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html#FORMULA.DEDUCTIONFORMULATEST.08) |   (assertEqualToResult ||
| PASS | [FORMULA.DEDUCTIONFORMULATEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html#FORMULA.DEDUCTIONFORMULATEST.09) |   (assertEqualToResult ||
| PASS | [FORMULA.DEDUCTIONFORMULATEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html#FORMULA.DEDUCTIONFORMULATEST.10) |   (assertEqualToResult ||
| PASS | [FORMULA.DEDUCTIONFORMULATEST.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html#FORMULA.DEDUCTIONFORMULATEST.11) |   (assertEqualToResult ||
| PASS | [FORMULA.DEDUCTIONFORMULATEST.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html#FORMULA.DEDUCTIONFORMULATEST.12) |   (assertEqualToResult ||
| PASS | [FORMULA.DEDUCTIONFORMULATEST.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta.html#FORMULA.DEDUCTIONFORMULATEST.13) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.01) |   (assertEqualToResult "=== Entail ===") |   ("=== Entail ===") | 
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.02) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.03) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.04) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.05) |   (assertEqualToResult "=== Bare entail ===") |   ("=== Bare entail ===") | 
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.06) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.07) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.08) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.09) |   (assertEqualToResult "=== Equality ===") |   ("=== Equality ===") | 
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.10) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.11) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.12) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.13) |   (assertEqualToResult "=== DTL ===") |   ("=== DTL ===") | 
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.14) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.15) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-TEST.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-TEST.16) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.01) |   (assertEqualToResult "=== Entail ===") |   ("=== Entail ===") | 
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.02) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.03) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.04) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.05) |   (assertEqualToResult "=== Bare Entail ===") |   ("=== Bare Entail ===") | 
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.06) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.07) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.08) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.09) |   (assertEqualToResult "=== Equality ===") |   ("=== Equality ===") | 
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.10) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.11) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.12) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.13) |   (assertEqualToResult "=== Bare Entail Match ===") |   ("=== Bare Entail Match ===") | 
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.14) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.15) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.16) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.17) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.18) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.19) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.20) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.21) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.22) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.23) |   (assertEqualToResult "=== Equality Match ===") |   ("=== Equality Match ===") | 
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.24](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.24) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.25](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.25) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.26](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.26) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.27](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.27) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.28](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.28) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.29](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.29) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.30](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.30) |   (assertEqualToResult ||
| PASS | [FORWARD-CHAINER.FORWARD-CHAINER-XP.31](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.31) |   (assertEqualToResult "=== DTL ===") |   ("=== DTL ===") | 
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.32](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.32) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.33](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.33) |   (assertEqualToResult ||
| FAIL | [FORWARD-CHAINER.FORWARD-CHAINER-XP.34](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta.html#FORWARD-CHAINER.FORWARD-CHAINER-XP.34) |   (assertEqualToResult ||
| PASS | [HOL.LISTTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/hol/ListTest.metta.html#HOL.LISTTEST.01) |   (import! &self) | () | () |
| PASS | [HOL.LISTTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/hol/ListTest.metta.html#HOL.LISTTEST.02) |   (assertEqualToResult ||
| PASS | [HOL.NATTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/hol/NatTest.metta.html#HOL.NATTEST.01) |   (import! &self) | () | () |
| PASS | [HOL.NATTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/hol/NatTest.metta.html#HOL.NATTEST.02) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a1_symbols.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.01) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a1_symbols.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.02) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a1_symbols.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.03) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a1_symbols.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.04) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a1_symbols.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.05) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a1_symbols.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.06) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a1_symbols.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.A1-SYMBOLS.07) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.A2-OPENCOGGY.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a2_opencoggy.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.A2-OPENCOGGY.01) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.A3-TWOSIDE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a3_twoside.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.A3-TWOSIDE.01) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.A3-TWOSIDE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a3_twoside.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.A3-TWOSIDE.02) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.A3-TWOSIDE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a3_twoside.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.A3-TWOSIDE.03) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.A3-TWOSIDE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/a3_twoside.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.A3-TWOSIDE.04) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B0-CHAINING-PRELIM.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b0_chaining_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B0-CHAINING-PRELIM.01) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B0-CHAINING-PRELIM.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b0_chaining_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B0-CHAINING-PRELIM.02) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B0-CHAINING-PRELIM.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b0_chaining_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B0-CHAINING-PRELIM.03) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B0-CHAINING-PRELIM.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b0_chaining_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B0-CHAINING-PRELIM.04) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B0-CHAINING-PRELIM.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b0_chaining_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B0-CHAINING-PRELIM.05) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B1-EQUAL-CHAIN.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b1_equal_chain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B1-EQUAL-CHAIN.01) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B1-EQUAL-CHAIN.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b1_equal_chain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B1-EQUAL-CHAIN.02) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B1-EQUAL-CHAIN.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b1_equal_chain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B1-EQUAL-CHAIN.03) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B1-EQUAL-CHAIN.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b1_equal_chain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B1-EQUAL-CHAIN.04) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B1-EQUAL-CHAIN.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b1_equal_chain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B1-EQUAL-CHAIN.05) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B1-EQUAL-CHAIN.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b1_equal_chain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B1-EQUAL-CHAIN.06) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b2_backchain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.01) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b2_backchain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.02) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b2_backchain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.03) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b2_backchain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.04) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b2_backchain.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B2-BACKCHAIN.05) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B3-DIRECT.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b3_direct.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B3-DIRECT.01) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B3-DIRECT.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b3_direct.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B3-DIRECT.02) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B3-DIRECT.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b3_direct.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B3-DIRECT.03) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.01) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.02) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.03) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.04) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.05) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.06) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.07) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.08) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.09) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.10) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b4_nondeterm.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B4-NONDETERM.11) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.01) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.03) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.04) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.05) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.06) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.07) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.09) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.10) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.12) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.13) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.16) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.17) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.18) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.19) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.20) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.21) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.22) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.23) |   (assertEqual ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.24](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.24) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.25](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.25) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.26](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/b5_types_prelim.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.B5-TYPES-PRELIM.26) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.01) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.02) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.03) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.04) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.05) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.06) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.07) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.08) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.09) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.10) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.11) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.12) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.13) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.16) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.17) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.18) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.19) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.20) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.21) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.22) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c1_grounded_basic.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C1-GROUNDED-BASIC.23) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c2_spaces.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.01) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c2_spaces.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.02) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c2_spaces.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.03) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c2_spaces.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.04) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c2_spaces.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.05) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c2_spaces.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.06) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c2_spaces.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C2-SPACES.07) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c3_pln_stv.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.01) |   (assertEqual ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c3_pln_stv.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.02) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c3_pln_stv.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.03) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c3_pln_stv.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.04) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/c3_pln_stv.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.C3-PLN-STV.05) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.01) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.02) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.03) |   (assertEqual ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.04) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.05) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.06) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.07) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.08) |   (assertEqual ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.09) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.10) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.11) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.12) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.13) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d1_gadt.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D1-GADT.14) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.01) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.02) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.03) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.04) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.05) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.06) |   (assertEqual ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.07) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.08) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.09) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.10) |   (assertEqual ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.11) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.12) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.13) |   (assertEqual ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.14) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.15) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.16) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.17) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.18) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.19) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.20) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.21) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.22) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.23](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.23) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.24](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.24) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.25](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.25) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.26](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.26) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.27](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d2_higherfunc.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D2-HIGHERFUNC.27) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d3_deptypes.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.01) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d3_deptypes.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.02) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d3_deptypes.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.03) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d3_deptypes.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.04) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d3_deptypes.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.05) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d3_deptypes.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.06) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d3_deptypes.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D3-DEPTYPES.07) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.01) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.02) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.03) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.04) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.05) |   (assertEqual ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.06) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.07) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.08) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.09) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.10) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.11) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.12) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.13) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.14) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.15) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.16) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.17) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d4_type_prop.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D4-TYPE-PROP.18) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.D5-AUTO-TYPES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/d5_auto_types.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.D5-AUTO-TYPES.01) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E1-KB-WRITE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e1_kb_write.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E1-KB-WRITE.01) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E1-KB-WRITE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e1_kb_write.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E1-KB-WRITE.02) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E1-KB-WRITE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e1_kb_write.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E1-KB-WRITE.03) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e2_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.01) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e2_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.02) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e2_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.03) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e2_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.04) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e2_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.05) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e2_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.06) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e2_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.07) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e2_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.10) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e2_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.11) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e2_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.12) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e2_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E2-STATES.13) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.01) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.02) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.03) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.04) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.05) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.06) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.07) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.08) |   (assertEqual ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/e3_match_states.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.E3-MATCH-STATES.09) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.01) |   (assertEqualToResult ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.02) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.03) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.07) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.08) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.12) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.13) |   (assertEqual ||
| FAIL | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.14) |   (assertEqual &m) |   (&m) | 
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.15) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.16) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.17) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.18](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.18) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.19](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.19) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.20](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.20) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.21](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.21) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.22](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_imports.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-IMPORTS.22) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.01) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.02) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.03) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.05) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.06) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.07) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.09) |   (assertEqualToResult ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.10) |   (assertEqual ||
| PASS | [HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-experimental_scripts/f1_moduleA.metta.html#HYPERON-EXPERIMENTAL-SCRIPTS.F1-MODULEA.11) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.01) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.02) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.03) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.04) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.05) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.06) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.07) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.08) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.09) |   (assertEqualToResult ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.10) |   (assertEqualToResult ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.11](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.11) |   (assertEqualToResult ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.12](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.12) |   (assertEqualToResult ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.13](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.13) |   (assertEqualToResult ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.14](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.14) |   (assertEqualToResult ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.15](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.15) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.16](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.16) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.00-LANG-CASE.17](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/00_lang_case.metta.html#HYPERON-METTALOG-SANITY.00-LANG-CASE.17) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.01-LANG-INC.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/01_lang_inc.metta.html#HYPERON-METTALOG-SANITY.01-LANG-INC.01) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.01-LANG-INC.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/01_lang_inc.metta.html#HYPERON-METTALOG-SANITY.01-LANG-INC.02) |   (assertEqual ||
| FAIL | [HYPERON-METTALOG-SANITY.02-CURRIED-PLUS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/02-curried-plus.metta.html#HYPERON-METTALOG-SANITY.02-CURRIED-PLUS.01) |   (assertEqualToResult ||
| PASS | [HYPERON-METTALOG-SANITY.03-SORING-VIA-INSERT.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/03-soring-via-insert.metta.html#HYPERON-METTALOG-SANITY.03-SORING-VIA-INSERT.01) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.03-SORING-VIA-INSERT.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/03-soring-via-insert.metta.html#HYPERON-METTALOG-SANITY.03-SORING-VIA-INSERT.02) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.03-SORING-VIA-INSERT.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/03-soring-via-insert.metta.html#HYPERON-METTALOG-SANITY.03-SORING-VIA-INSERT.03) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.03-SORING-VIA-INSERT.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/03-soring-via-insert.metta.html#HYPERON-METTALOG-SANITY.03-SORING-VIA-INSERT.04) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.03-SORING-VIA-INSERT.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/03-soring-via-insert.metta.html#HYPERON-METTALOG-SANITY.03-SORING-VIA-INSERT.05) |   (assertEqual ||
| FAIL | [HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/04_match_list_like_space.metta.html#HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.01) |   (assertEqualToResult ||
| FAIL | [HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/04_match_list_like_space.metta.html#HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.02) |   (assertEqual ||
| FAIL | [HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/04_match_list_like_space.metta.html#HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.03) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/04_match_list_like_space.metta.html#HYPERON-METTALOG-SANITY.04-MATCH-LIST-LIKE-SPACE.04) |   (assertEqual ||
| FAIL | [HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html#HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.01) |   (assertEqualToResult ||
| FAIL | [HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html#HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.02) |   (assertEqual ||
| FAIL | [HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html#HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.03) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta.html#HYPERON-METTALOG-SANITY.05-MATCH-SUPERPOSE-ELEMENT-LIKE-SPACE.04) |   (assertEqual ||
| PASS | [HYPERON-METTALOG-SANITY.STRUCTURE-TESTS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-mettalog_sanity/structure-tests.metta.html#HYPERON-METTALOG-SANITY.STRUCTURE-TESTS.01) |   (assertEqualToResult ||
| PASS | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.01) |   (import! &self) | () | 
| PASS | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.02) |   (assertEqualToResult ||
| PASS | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.03) |   (assertEqualToResult ||
| PASS | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.04) |   (assertEqualToResult ||
| PASS | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.05) |   (assertEqualToResult ||
| FAIL | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.06) |   (assertEqualToResult ||
| FAIL | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.07) |   (assertEqualToResult ||
| FAIL | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.08) |   (assertEqualToResult ||
| FAIL | [JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta.html#JOHN-CARRY-FLOWER.JOHN-CARRY-FLOWER-TEST.09) |   (assertEqualToResult ||
| PASS | [LOCATED.LOCATED-TEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/located/located-test.metta.html#LOCATED.LOCATED-TEST.01) |   (import! &self) | () | 
| PASS | [LOCATED.LOCATED-TEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/located/located-test.metta.html#LOCATED.LOCATED-TEST.02) |   (assertEqualToResult ||
| PASS | [LOCATED.LOCATED-TEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/located/located-test.metta.html#LOCATED.LOCATED-TEST.03) |   (assertEqualToResult ||
| PASS | [LOCATED.LOCATED-TEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/located/located-test.metta.html#LOCATED.LOCATED-TEST.04) |   (assertEqualToResult ||
| PASS | [LOCATED.LOCATED-TEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/located/located-test.metta.html#LOCATED.LOCATED-TEST.05) |   (assertEqualToResult ||
| PASS | [LOCATED.LOCATED-TEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/located/located-test.metta.html#LOCATED.LOCATED-TEST.06) |   (assertEqualToResult ||
| FAIL | [LOCATED.LOCATED-TEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/located/located-test.metta.html#LOCATED.LOCATED-TEST.07) |   (assertEqualToResult ||
| PASS | [MATCH.DEDUCTIONIMPLICATIONDIRECTINTRODUCTIONMATCHTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html#MATCH.DEDUCTIONIMPLICATIONDIRECTINTRODUCTIONMATCHTEST.01) |   (import! &self) | () | 
| PASS | [MATCH.DEDUCTIONIMPLICATIONDIRECTINTRODUCTIONMATCHTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html#MATCH.DEDUCTIONIMPLICATIONDIRECTINTRODUCTIONMATCHTEST.02) |   (import! &self) | () | 
| FAIL | [MATCH.DEDUCTIONIMPLICATIONDIRECTINTRODUCTIONMATCHTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta.html#MATCH.DEDUCTIONIMPLICATIONDIRECTINTRODUCTIONMATCHTEST.03) |   (assertEqualToResult ||
| PASS | [MATCH.DEDUCTIONMATCHTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/match/DeductionMatchTest.metta.html#MATCH.DEDUCTIONMATCHTEST.01) |   (import! &self) | () | 
| FAIL | [MATCH.DEDUCTIONMATCHTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/match/DeductionMatchTest.metta.html#MATCH.DEDUCTIONMATCHTEST.02) |   (assertEqualToResult ||
| PASS | [MATCH.IMPLICATIONDIRECTINTRODUCTIONMATCHTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta.html#MATCH.IMPLICATIONDIRECTINTRODUCTIONMATCHTEST.01) |   (import! &self) | () | 
| FAIL | [MATCH.IMPLICATIONDIRECTINTRODUCTIONMATCHTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta.html#MATCH.IMPLICATIONDIRECTINTRODUCTIONMATCHTEST.02) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.ADD-ATOM-MATCH.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/add_atom_match.metta.html#METTA-MORPH-TESTS.ADD-ATOM-MATCH.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.AND-OR.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/and_or.metta.html#METTA-MORPH-TESTS.AND-OR.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.COLLAPSE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/collapse.metta.html#METTA-MORPH-TESTS.COLLAPSE.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.FACTORIAL.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/factorial.metta.html#METTA-MORPH-TESTS.FACTORIAL.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.IDENTITY.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/identity.metta.html#METTA-MORPH-TESTS.IDENTITY.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.IF.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/if.metta.html#METTA-MORPH-TESTS.IF.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.LETLET.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/letlet.metta.html#METTA-MORPH-TESTS.LETLET.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.LET-SUPERPOSE-LIST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/let_superpose_list.metta.html#METTA-MORPH-TESTS.LET-SUPERPOSE-LIST.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.LET-SUPERPOSE-LIST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/let_superpose_list.metta.html#METTA-MORPH-TESTS.LET-SUPERPOSE-LIST.02) |   (assertEqual ||
| PASS | [METTA-MORPH-TESTS.LET-SUPERPOSE-LIST2.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/let_superpose_list2.metta.html#METTA-MORPH-TESTS.LET-SUPERPOSE-LIST2.01) |   (assertEqual ||
| FAIL | [METTA-MORPH-TESTS.MATCH-FEVAL.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_feval.metta.html#METTA-MORPH-TESTS.MATCH-FEVAL.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_superposed_spaces.metta.html#METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_superposed_spaces.metta.html#METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.02) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_superposed_spaces.metta.html#METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.03) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_superposed_spaces.metta.html#METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.04) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_superposed_spaces.metta.html#METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.05) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_superposed_spaces.metta.html#METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.06) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_superposed_spaces.metta.html#METTA-MORPH-TESTS.MATCH-SUPERPOSED-SPACES.07) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-VOID.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_void.metta.html#METTA-MORPH-TESTS.MATCH-VOID.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-VOID.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_void.metta.html#METTA-MORPH-TESTS.MATCH-VOID.02) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-VOID.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_void.metta.html#METTA-MORPH-TESTS.MATCH-VOID.03) |   (assertEqualToResult ||
| FAIL | [METTA-MORPH-TESTS.MATCH-VOID.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_void.metta.html#METTA-MORPH-TESTS.MATCH-VOID.04) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-VOID.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_void.metta.html#METTA-MORPH-TESTS.MATCH-VOID.05) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-VOID.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_void.metta.html#METTA-MORPH-TESTS.MATCH-VOID.06) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-VOID.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_void.metta.html#METTA-MORPH-TESTS.MATCH-VOID.07) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-VOID.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_void.metta.html#METTA-MORPH-TESTS.MATCH-VOID.08) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MATCH-VOID.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_void.metta.html#METTA-MORPH-TESTS.MATCH-VOID.09) |   (assertEqualToResult ||
| FAIL | [METTA-MORPH-TESTS.MATCH-VOID.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/match_void.metta.html#METTA-MORPH-TESTS.MATCH-VOID.10) |   (assertEqualToResult ||
| FAIL | [METTA-MORPH-TESTS.MINNARS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/minnars.metta.html#METTA-MORPH-TESTS.MINNARS.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.MULTIFUNCTION.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/multifunction.metta.html#METTA-MORPH-TESTS.MULTIFUNCTION.01) |   (assertEqualToResult ||
| FAIL | [METTA-MORPH-TESTS.NALIFIER.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/nalifier.metta.html#METTA-MORPH-TESTS.NALIFIER.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.NESTED-PARAMETERS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/nested_parameters.metta.html#METTA-MORPH-TESTS.NESTED-PARAMETERS.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.PEANO.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/peano.metta.html#METTA-MORPH-TESTS.PEANO.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SEQUENTIAL-NESTED.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/sequential_nested.metta.html#METTA-MORPH-TESTS.SEQUENTIAL-NESTED.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SEQUENTIAL-NESTED.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/sequential_nested.metta.html#METTA-MORPH-TESTS.SEQUENTIAL-NESTED.02) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SEQUENTIAL-NESTED.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/sequential_nested.metta.html#METTA-MORPH-TESTS.SEQUENTIAL-NESTED.03) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SEQUENTIAL-NESTED.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/sequential_nested.metta.html#METTA-MORPH-TESTS.SEQUENTIAL-NESTED.04) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SEQUENTIAL-NESTED.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/sequential_nested.metta.html#METTA-MORPH-TESTS.SEQUENTIAL-NESTED.05) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SEQUENTIAL-NESTED.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/sequential_nested.metta.html#METTA-MORPH-TESTS.SEQUENTIAL-NESTED.06) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SEQUENTIAL-NESTED.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/sequential_nested.metta.html#METTA-MORPH-TESTS.SEQUENTIAL-NESTED.07) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SEQUENTIAL-NESTED.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/sequential_nested.metta.html#METTA-MORPH-TESTS.SEQUENTIAL-NESTED.08) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SEQUENTIAL-NESTED.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/sequential_nested.metta.html#METTA-MORPH-TESTS.SEQUENTIAL-NESTED.09) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.STATES-SPACES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/states_spaces.metta.html#METTA-MORPH-TESTS.STATES-SPACES.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.STATES-SPACES.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/states_spaces.metta.html#METTA-MORPH-TESTS.STATES-SPACES.02) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.STATES-SPACES.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/states_spaces.metta.html#METTA-MORPH-TESTS.STATES-SPACES.03) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.STATES-SPACES.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/states_spaces.metta.html#METTA-MORPH-TESTS.STATES-SPACES.04) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.STATES-SPACES.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/states_spaces.metta.html#METTA-MORPH-TESTS.STATES-SPACES.05) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.STATES-SPACES.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/states_spaces.metta.html#METTA-MORPH-TESTS.STATES-SPACES.06) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.STATES-SPACES.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/states_spaces.metta.html#METTA-MORPH-TESTS.STATES-SPACES.07) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.STATES-SPACES.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/states_spaces.metta.html#METTA-MORPH-TESTS.STATES-SPACES.08) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.STATES-SPACES.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/states_spaces.metta.html#METTA-MORPH-TESTS.STATES-SPACES.09) |   (assertEqual ||
| PASS | [METTA-MORPH-TESTS.SUPERCOLLAPSE.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/supercollapse.metta.html#METTA-MORPH-TESTS.SUPERCOLLAPSE.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SUPERCOLLAPSE.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/supercollapse.metta.html#METTA-MORPH-TESTS.SUPERCOLLAPSE.02) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SUPERCOLLAPSE.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/supercollapse.metta.html#METTA-MORPH-TESTS.SUPERCOLLAPSE.03) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SUPERCOLLAPSE.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/supercollapse.metta.html#METTA-MORPH-TESTS.SUPERCOLLAPSE.04) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SUPERCOLLAPSE.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/supercollapse.metta.html#METTA-MORPH-TESTS.SUPERCOLLAPSE.05) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SUPERCOLLAPSE.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/supercollapse.metta.html#METTA-MORPH-TESTS.SUPERCOLLAPSE.06) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SUPERCOLLAPSE.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/supercollapse.metta.html#METTA-MORPH-TESTS.SUPERCOLLAPSE.07) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SUPERPOSE-NESTED.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/superpose_nested.metta.html#METTA-MORPH-TESTS.SUPERPOSE-NESTED.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SUPERPOSE-NESTED.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/superpose_nested.metta.html#METTA-MORPH-TESTS.SUPERPOSE-NESTED.02) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SUPERPOSE-NESTED.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/superpose_nested.metta.html#METTA-MORPH-TESTS.SUPERPOSE-NESTED.03) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.SUPERPOSE-NESTED.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/superpose_nested.metta.html#METTA-MORPH-TESTS.SUPERPOSE-NESTED.04) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.TYPES.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/types.metta.html#METTA-MORPH-TESTS.TYPES.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.TYPES2.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/types2.metta.html#METTA-MORPH-TESTS.TYPES2.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.TYPES2.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/types2.metta.html#METTA-MORPH-TESTS.TYPES2.02) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.TYPES2.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/types2.metta.html#METTA-MORPH-TESTS.TYPES2.03) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.TYPES2.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/types2.metta.html#METTA-MORPH-TESTS.TYPES2.04) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.TYPES2.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/types2.metta.html#METTA-MORPH-TESTS.TYPES2.05) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.TYPES3.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/types3.metta.html#METTA-MORPH-TESTS.TYPES3.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.ZEROARGS.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/zeroargs.metta.html#METTA-MORPH-TESTS.ZEROARGS.01) |   (assertEqualToResult ||
| PASS | [METTA-MORPH-TESTS.ZEROARGS.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/metta-morph_tests/zeroargs.metta.html#METTA-MORPH-TESTS.ZEROARGS.02) |   (assertEqualToResult ||
| PASS | [ORIENTATION.ORIENTATION-TEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html#ORIENTATION.ORIENTATION-TEST.01) |   (import! &self) | () | 
| PASS | [ORIENTATION.ORIENTATION-TEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html#ORIENTATION.ORIENTATION-TEST.02) |   (assertEqualToResult ||
| PASS | [ORIENTATION.ORIENTATION-TEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html#ORIENTATION.ORIENTATION-TEST.03) |   (assertEqualToResult ||
| PASS | [ORIENTATION.ORIENTATION-TEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html#ORIENTATION.ORIENTATION-TEST.04) |   (assertEqualToResult ||
| PASS | [ORIENTATION.ORIENTATION-TEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html#ORIENTATION.ORIENTATION-TEST.05) |   (assertEqualToResult ||
| PASS | [ORIENTATION.ORIENTATION-TEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html#ORIENTATION.ORIENTATION-TEST.06) |   (assertEqualToResult ||
| FAIL | [ORIENTATION.ORIENTATION-TEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/sumo/orientation/orientation-test.metta.html#ORIENTATION.ORIENTATION-TEST.07) |   (assertEqualToResult ||
| PASS | [SUBTYPING.SUBTYPING-TEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/subtyping/subtyping-test.metta.html#SUBTYPING.SUBTYPING-TEST.01) |   (assertEqual ||
| PASS | [SYNTHESIS.UNIFYTEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/UnifyTest.metta.html#SYNTHESIS.UNIFYTEST.01) |   (assertEqualToResult ||
| FAIL | [SYNTHESIS.UNIFYTEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/UnifyTest.metta.html#SYNTHESIS.UNIFYTEST.02) |   (assertEqualToResult ||
| FAIL | [SYNTHESIS.UNIFYTEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/UnifyTest.metta.html#SYNTHESIS.UNIFYTEST.03) |   (assertEqualToResult ||
| FAIL | [SYNTHESIS.UNIFYTEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/synthesis/UnifyTest.metta.html#SYNTHESIS.UNIFYTEST.04) |   (assertEqualToResult ||
| PASS | [TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html#TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.01) |   (import! &self) | () | 
| PASS | [TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html#TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.02) |   (assertEqualToResult ||
| PASS | [TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html#TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.03) |   (assertEqualToResult ||
| PASS | [TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html#TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.04) |   (assertEqualToResult ||
| PASS | [TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta.html#TRUTHVALUE.EVIDENTIALTRUTHVALUETEST.05) |   (assertEqualToResult ||
| PASS | [TRUTHVALUE.TRUTHVALUETEST.01](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html#TRUTHVALUE.TRUTHVALUETEST.01) |   (import! &self) | () | 
| PASS | [TRUTHVALUE.TRUTHVALUETEST.02](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html#TRUTHVALUE.TRUTHVALUETEST.02) |   (assertEqual ||
| PASS | [TRUTHVALUE.TRUTHVALUETEST.03](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html#TRUTHVALUE.TRUTHVALUETEST.03) |   (assertEqual ||
| PASS | [TRUTHVALUE.TRUTHVALUETEST.04](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html#TRUTHVALUE.TRUTHVALUETEST.04) |   (assertEqual ||
| PASS | [TRUTHVALUE.TRUTHVALUETEST.05](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html#TRUTHVALUE.TRUTHVALUETEST.05) |   (assertEqual ||
| PASS | [TRUTHVALUE.TRUTHVALUETEST.06](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html#TRUTHVALUE.TRUTHVALUETEST.06) |   (assertEqual ||
| PASS | [TRUTHVALUE.TRUTHVALUETEST.07](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html#TRUTHVALUE.TRUTHVALUETEST.07) |   (assertEqual ||
| PASS | [TRUTHVALUE.TRUTHVALUETEST.08](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html#TRUTHVALUE.TRUTHVALUETEST.08) |   (assertEqual ||
| PASS | [TRUTHVALUE.TRUTHVALUETEST.09](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html#TRUTHVALUE.TRUTHVALUETEST.09) |   (assertEqual ||
| PASS | [TRUTHVALUE.TRUTHVALUETEST.10](https://htmlpreview.github.io/?https://raw.githubusercontent.com/logicmoo/vspace-metta/main/reports/cuRRent/interp_00/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta.html#TRUTHVALUE.TRUTHVALUETEST.10) |   (assertEqual ||




Test Results:
510 Passed,
113 Failed,
623 Total,
81.86% Passed
 
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


