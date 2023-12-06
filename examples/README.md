# Examples README

The `examples` directory houses a variety of sub-directories, each focusing on specific functionalities, tests, or demonstrations. These sub-directories serve as a comprehensive resource for understanding the system.

---

## Main Directory Structure

- **[`flybase`](./flybase)**: Focused on the Flybase module, the examples here are designed to provide insights into how this specific component works and can be used.
   - [`flybase-vspace.metta`](flybase/flybase-vspace.metta): Virtual space configuration for Flybase.
   - [`flybase-loader-size-estimates.metta`](flybase/flybase-loader-size-estimates.metta): Size estimates and optimizations for the Flybase loader.
   - [`flybase-mined-flat.metta`](flybase/flybase-mined-flat.metta): Flat structure representation of mined data in Flybase.
   - [`flybase-deduced-queries.metta`](flybase/flybase-deduced-queries.metta): Contains queries deduced from Flybase data analysis.
   - [`flybase-deduced.metta`](flybase/flybase-deduced.metta): Deduced results and insights from Flybase data.
   - [`flybase-mined.metta`](flybase/flybase-mined.metta): Original mined data from Flybase.
   - [`flybase-loader.metta`](flybase/flybase-loader.metta): Loader script for Flybase datasets.
   - [`flybase-deduced-connections.metta`](flybase/flybase-deduced-connections.metta): Mapping and connections deduced in Flybase.
   - [`flybase-deduced-types.metta`](flybase/flybase-deduced-types.metta): Type definitions and structures deduced in Flybase.

## Hyperon Miner Examples

- **[`extended_compat/hyperon-miner/`](extended_compat/hyperon-miner/):** Hyperon miner directory
    - [`data/sample.metta`](extended_compat/hyperon-miner/data/sample.metta): Sample data for Hyperon miner testing.
    - [`utils/MinerUtils.metta`](extended_compat/hyperon-miner/utils/MinerUtils.metta): Utility functions for Hyperon mining operations.
   - [`match/MinerMatchTest.metta`](extended_compat/hyperon-miner/match/MinerMatchTest.metta): Test cases for Hyperon miner matching algorithms.
   - [`match/MinerMatch.metta`](extended_compat/hyperon-miner/match/MinerMatch.metta): Implementation of matching algorithms for Hyperon miner.



## Extended Compatibility Examples

### Combinator Logic Experiments
- **[`extended_compat/metta-combinator_logic_experiments/`](extended_compat/metta-combinator_logic_experiments/):** Combinator Logic Experiments Directory
   - [`y_comb_examples.metta`](extended_compat/metta-combinator_logic_experiments/y_comb_examples.metta): Examples and experiments with Y combinators.

### Logic
- **[`extended_compat/metta-logic/`](extended_compat/metta-logic/):** Metta Logic Directory
   - [`puzzle.metta`](extended_compat/metta-logic/puzzle.metta): Logic puzzles and solutions in Metta.
   - [`all_any.metta`](extended_compat/metta-logic/all_any.metta): Implementations of universal and existential quantifiers.
   - [`memb.metta`](extended_compat/metta-logic/memb.metta): Member checking functions in logical expressions.

### SICP Book Examples
- **[`extended_compat/metta-SICP_book/`](extended_compat/metta-SICP_book/):** SICP Book Examples in Metta
  - [Chapter 1.1](./extended_compat/metta-SICP_book/chapter_1_1.metta)
  - [Chapter 1.2](./extended_compat/metta-SICP_book/chapter_1_2.metta)
  - [Chapter 1.3](./extended_compat/metta-SICP_book/chapter_1_3.metta)

### Recursion Schemes
- **[`extended_compat/metta-recursion-schemes/src/`](extended_compat/metta-recursion-schemes/src/):** Recursion Schemes in Metta
   - [`schemes.metta`](extended_compat/metta-recursion-schemes/src/schemes.metta): Various recursion schemes implemented in Metta.
   - [`base.metta`](extended_compat/metta-recursion-schemes/src/base.metta): Base functions and utilities for recursion schemes.
   - [`expression.metta`](extended_compat/metta-recursion-schemes/src/expression.metta): Expression handling in recursion schemes.
   - [`benchmark.metta`](extended_compat/metta-recursion-schemes/src/benchmark.metta): Benchmark tests for recursion scheme implementations.

### Probabilistic Dependent Types
- **[`extended_compat/metta-prob-dep-types/`](extended_compat/metta-prob-dep-types/):** Probabilistic Dependent Types in Metta
   - [`prob_dep_types.metta`](extended_compat/metta-prob-dep-types/prob_dep_types.metta): Definitions and examples of probabilistic dependent types.
   - [`inf_order_probs.metta`](extended_compat/metta-prob-dep-types/inf_order_probs.metta): Infinite order probabilities and their applications.

## Extended Compat - NARS Extras

- **[`nars`](./extended_compat/nars)**: Dedicated to NARS (Non-Axiomatic Reasoning System) examples.
    - [`nars_v0`](./extended_compat/nars/nars_v0): Original version tests.
    - [`current`](./extended_compat/nars/current): Houses the current iteration tests.
    - [`prev`](./extended_compat/nars/prev): Includes tests from previous versions.
    - [`new`](./extended_compat/nars/new): Houses the newest set of examples.
    - [`extra_tests`](./extended_compat/nars/extra_tests): Additional, perhaps experimental, tests.
        - [`RUN_minnars_trimmed.metta`](extended_compat/nars/nars_extras/RUN_minnars_trimmed.metta): Trimmed version of MinNARS execution script.
        - [`NARS_BuildTupleCounts.metta`](extended_compat/nars/nars_extras/NARS_BuildTupleCounts.metta): Script for building tuple counts in NARS.
        - [`TestNARS_listing.metta`](extended_compat/nars/nars_extras/TestNARS_listing.metta): Test listings and scripts for NARS.
        - [`RUN_minnars.metta`](extended_compat/nars/nars_extras/RUN_minnars.metta): Execution script for MinNARS.

## Python Compatibility - Hyperon Experimental Python

- **[`python_compat/hyperon-experimental_python/sandbox/`](python_compat/hyperon-experimental_python/sandbox/):** Hyperon Experimental Python Sandbox
   - [`resolve/r.metta`](python_compat/hyperon-experimental_python/sandbox/resolve/r.metta): Resolution algorithms in Hyperon Python sandbox.
   - [`sql_space/sql_space_test.metta`](python_compat/hyperon-experimental_python/sandbox/sql_space/sql_space_test.metta): Test scripts for SQL space integration in Hyperon.
   - [`neurospace/test_assist.metta`](python_compat/hyperon-experimental_python/sandbox/neurospace/test_assist.metta): Assistant scripts for neurospace simulations.
   - [`neurospace/test_nspace.metta`](python_compat/hyperon-experimental_python/sandbox/neurospace/test_nspace.metta): Neurospace testing and simulation scripts.
   - [`numpy/nm_test.metta`](python_compat/hyperon-experimental_python/sandbox/numpy/nm_test.metta): Numpy integration tests in Hyperon Python environment.
   - [`das_gate/test_das.metta`](python_compat/hyperon-experimental_python/sandbox/das_gate/test_das.metta): Test scripts for DAS gate functionality in Hyperon.

- **[`python_compat/extend/`](python_compat/extend/):** Extensions in Python Compatibility Layer for NARS
	   - [`example6.metta`](python_compat/extend/example6.metta): Example script 6 for Python compatibility layer.
	   - [`compileme.metta`](python_compat/extend/compileme.metta): Compilation scripts for Python compatibility extensions.
	   - [`example2.metta`](python_compat/extend/example2.metta): Example script 2 for extended functionalities.
	   - [`example5.metta`](python_compat/extend/example5.metta): Example script 5 showcasing extended features.
	   - [`example4.metta`](python_compat/extend/example4.metta): Example script 4 demonstrating extended capabilities.
	   - [`example1.metta`](python_compat/extend/example1.metta): Example script 1 for Python compatibility tests.
	   - [`example3.metta`](python_compat/extend/example3.metta): Example script 3 in Python compatibility layer.
	   - [`timing.metta`](python_compat/timing/timing.metta): Timing and performance testing scripts.
	   - [`mettamorph.metta`](python_compat/mettamorph.metta): Mettamorphosis scripts for Python compatibility.

#### **Synthesis and Logic Group**

This group of directories explores various representational methods for porting PLN to MeTTa.
- **[`baseline_compat/hyperon-pln_metta/`](baseline_compat/hyperon-pln_metta/):** Hyperon PLN Metta Base Compatibility

- **[`entail`](./baseline_compat/hyperon-pln_metta/entail)**: Here, rules are expressed with the symbol `?`.
   - [`DeductionEntailTest.metta`](baseline_compat/hyperon-pln_metta/entail/DeductionEntailTest.metta): Tests for deduction entailment in MeTTa.
   - [`ImplicationDirectIntroductionEntail.metta`](baseline_compat/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntail.metta): Direct implication introduction entailment logic.
   - [`ImplicationDirectIntroductionEntailTest.metta`](baseline_compat/hyperon-pln_metta/entail/ImplicationDirectIntroductionEntailTest.metta): Tests for direct implication introduction entailment.
   - [`DeductionEntail.metta`](baseline_compat/hyperon-pln_metta/entail/DeductionEntail.metta): Logic for deduction entailment in MeTTa.

- **[`common`](./baseline_compat/hyperon-pln_metta/common)**: Contains common definitions for PLN in MeTTa.
   - [`Num.metta`](baseline_compat/hyperon-pln_metta/common/Num.metta): Numerical utilities and definitions.
   - [`Record.metta`](baseline_compat/hyperon-pln_metta/common/Record.metta): Record structures and related logic.
   - [`DeductionFormula.metta`](baseline_compat/hyperon-pln_metta/common/formula/DeductionFormula.metta): Formulae for logical deduction.
   - [`ImplicationDirectIntroductionFormula.metta`](baseline_compat/hyperon-pln_metta/common/formula/ImplicationDirectIntroductionFormula.metta): Formulae for direct implication introduction.
   - [`ModusPonensFormula.metta`](baseline_compat/hyperon-pln_metta/common/formula/ModusPonensFormula.metta): Formulae for modus ponens logic.
   - [`DeductionFormulaTest.metta`](baseline_compat/hyperon-pln_metta/common/formula/DeductionFormulaTest.metta): Test cases for logical deduction formulae.
   - [`OrderedSet.metta`](baseline_compat/hyperon-pln_metta/common/OrderedSet.metta): Implementation of ordered sets.
   - [`EqualityType.metta`](baseline_compat/hyperon-pln_metta/common/EqualityType.metta): Equality types and related logic.
   - [`ListTest.metta`](baseline_compat/hyperon-pln_metta/common/ListTest.metta): Tests for list operations.
   - [`NumTest.metta`](baseline_compat/hyperon-pln_metta/common/NumTest.metta): Tests for numerical utilities.
   - [`OrderedSetTest.metta`](baseline_compat/hyperon-pln_metta/common/OrderedSetTest.metta): Tests for ordered set implementation.
   - [`Num8.metta`](baseline_compat/hyperon-pln_metta/common/Num8.metta): Extended numerical operations.
   - [`Maybe.metta`](baseline_compat/hyperon-pln_metta/common/Maybe.metta): Implementation of 'Maybe' monad.
   - [`MaybeTest.metta`](baseline_compat/hyperon-pln_metta/common/MaybeTest.metta): Tests for 'Maybe' monad.
   - [`EqualityTypeTest.metta`](baseline_compat/hyperon-pln_metta/common/EqualityTypeTest.metta): Tests for equality type logic.
   - [`In.metta`](baseline_compat/hyperon-pln_metta/common/In.metta): Logic for element inclusion.
   - [`List.metta`](baseline_compat/hyperon-pln_metta/common/List.metta): List operations and utilities.
   - [`TruthValue.metta`](baseline_compat/hyperon-pln_metta/common/truthvalue/TruthValue.metta): Base structure for truth values.
   - [`EvidentialTruthValue.metta`](baseline_compat/hyperon-pln_metta/common/truthvalue/EvidentialTruthValue.metta): Evidential truth value implementation.
   - [`EvidentialTruthValueTest.metta`](baseline_compat/hyperon-pln_metta/common/truthvalue/EvidentialTruthValueTest.metta): Tests for evidential truth values.
   - [`TruthValueTest.metta`](baseline_compat/hyperon-pln_metta/common/truthvalue/TruthValueTest.metta): General tests for truth values.
   - [`TemporalTruthValue.metta`](baseline_compat/hyperon-pln_metta/common/truthvalue/TemporalTruthValue.metta): Temporal aspect of truth values.
   - [`MeasEq.metta`](baseline_compat/hyperon-pln_metta/common/truthvalue/MeasEq.metta): Measurement equality logic.
   - [`InTest.metta`](baseline_compat/hyperon-pln_metta/common/InTest.metta): Tests for element inclusion logic.
   - [`BelieveMe.metta`](baseline_compat/hyperon-pln_metta/common/BelieveMe.metta): Logic for belief representation.

- **[`HOL`](./baseline_compat/hyperon-pln_metta/hol)**: Showcases HOL (Higher-Order Logic) operations.
   - [`ListTest.metta`](baseline_compat/hyperon-pln_metta/hol/ListTest.metta): Test cases for list operations in HOL.
   - [`NatTest.metta`](baseline_compat/hyperon-pln_metta/hol/NatTest.metta): Test cases for natural number operations in HOL.
   - [`NatSimpleTest.metta`](baseline_compat/hyperon-pln_metta/hol/NatSimpleTest.metta): Simplified tests for natural numbers in HOL.

- **[`dependent-types`](./baseline_compat/hyperon-pln_metta/dependent-types)**: Concentrates on representing rules as type constructors.
   - [`ModusPonensDTLTest.metta`](baseline_compat/hyperon-pln_metta/dependent-types/ModusPonensDTLTest.metta): Test cases for modus ponens in dependent type logic.
   - [`ImplicationDirectIntroductionDTL.metta`](baseline_compat/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTL.metta): Direct implication introduction in dependent type logic.
   - [`DeductionImplicationDirectIntroductionDTLTest.metta`](baseline_compat/hyperon-pln_metta/dependent-types/DeductionImplicationDirectIntroductionDTLTest.metta): Tests for deduction and direct implication introduction.
   - [`ImplicationDirectIntroductionDTLTest.metta`](baseline_compat/hyperon-pln_metta/dependent-types/ImplicationDirectIntroductionDTLTest.metta): More tests for direct implication introduction.
   - [`DeductionDTL.metta`](baseline_compat/hyperon-pln_metta/dependent-types/DeductionDTL.metta): Deduction logic in dependent type language.
   - [`DeductionDTLTest.metta`](baseline_compat/hyperon-pln_metta/dependent-types/DeductionDTLTest.metta): Tests for deduction in dependent type language.
   - [`ModusPonensDTL.metta`](baseline_compat/hyperon-pln_metta/dependent-types/ModusPonensDTL.metta): Modus ponens implementation in dependent type language.

- **[`forward-chainer`](./baseline_compat/hyperon-pln_metta/forward-chainer)**: Focuses on forward-chaining logic.
   - [`forward-chainer-test.metta`](baseline_compat/hyperon-pln_metta/forward-chainer/forward-chainer-test.metta): Test cases for forward-chaining logic.
   - [`forward-chainer-xp.metta`](baseline_compat/hyperon-pln_metta/forward-chainer/forward-chainer-xp.metta): Experimental forward-chaining implementations.

- **[`subtyping`](./baseline_compat/hyperon-pln_metta/subtyping)**: Showcases subtyping operations.
   - [`rule-base.metta`](baseline_compat/hyperon-pln_metta/subtyping/rule-base.metta): Base rules for subtyping operations.
   - [`subtyping-test.metta`](baseline_compat/hyperon-pln_metta/subtyping/subtyping-test.metta): Test cases for subtyping.

- **[`sumo`](./baseline_compat/hyperon-pln_metta/sumo)**: Houses SUMO (Suggested Upper Merged Ontology) examples.
    - [`load-suo-kif.metta`](baseline_compat/hyperon-pln_metta/sumo/load-suo-kif.metta): Logic for loading SUMO KIF files.
    - [`rule-base.metta`](baseline_compat/hyperon-pln_metta/sumo/rule-base.metta): Base rules for SUMO logic.
    - **[`sumo/john-carry-flower`](./baseline_compat/hyperon-pln_metta/sumo/john-carry-flower)**: Narrative logic examples.
      - [`john-carry-flower-test.metta`](baseline_compat/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower-test.metta): Test cases for the John carrying a flower narrative.
      - [`john-carry-flower.kif.metta`](baseline_compat/hyperon-pln_metta/sumo/john-carry-flower/john-carry-flower.kif.metta): KIF narrative for John carrying a flower.
    - **[`sumo/orientation`](./baseline_compat/hyperon-pln_metta/sumo/orientation)**: Related to spatial orientation.
      - [`orientation-test.metta`](baseline_compat/hyperon-pln_metta/sumo/orientation/orientation-test.metta): Tests for orientation logic in SUMO.
      - [`orientation.kif.metta`](baseline_compat/hyperon-pln_metta/sumo/orientation/orientation.kif.metta): Knowledge Interchange Format files for orientation.
    - **[`sumo/located`](./baseline_compat/hyperon-pln_metta/sumo/located)**: Pertains to location-based logic.
      - [`located-test.metta`](baseline_compat/hyperon-pln_metta/sumo/located/located-test.metta): Tests for location-based logic in SUMO.
      - [`located.kif.metta`](baseline_compat/hyperon-pln_metta/sumo/located/located.kif.metta): KIF files for location-based logic.
    - **[`sumo/route-between`](./baseline_compat/hyperon-pln_metta/sumo/route-between)**: Deals with routing logic.

#### **Synthesis Experiments**

- **[`synthesis/experiments`](./baseline_compat/hyperon-pln_metta/synthesis/experiments)**: Experiments in program synthesis.
   - [`synthesize-via-unify-test.metta`](baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test.metta): Tests for synthesis through unification.
   - [`unify-via-case.metta`](baseline_compat/hyperon-pln_metta/synthesis/experiments/unify-via-case.metta): Unification via `case` operator construct.
   - [`synthesize-via-case.metta`](baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-case.metta): Synthesis through `case` operator construct.
   - [`synthesize-via-let.metta`](baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-let.metta): Synthesis using the 'let' construct.
   - [`synthesize-via-unify.metta`](baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify.metta): Synthesis through unification techniques.
   - [`synthesize-via-let-test.metta`](baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-let-test.metta): Tests for synthesis using the 'let' construct.
   - [`synthesize-via-case-test.metta`](baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-case-test.metta): Tests for synthesis through `case` operator construct.
   - [`unify-via-let.metta`](baseline_compat/hyperon-pln_metta/synthesis/experiments/unify-via-let.metta): Unification using the 'let' construct.
   - [`non-determinism.metta`](baseline_compat/hyperon-pln_metta/synthesis/experiments/non-determinism.metta): Explorations of non-determinism in synthesis.
   - [`synthesize-via-superpose.metta`](baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-superpose.metta): Synthesis through superposition.
   - [`synthesize-via-type-checking.metta`](baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-type-checking.metta): Synthesis with type checking.
   - [`self-contained-synthesize.metta`](baseline_compat/hyperon-pln_metta/synthesis/experiments/self-contained-synthesize.metta): Self-contained examples of synthesis.
   - [`synthesize-via-unify-test-longer.metta`](baseline_compat/hyperon-pln_metta/synthesis/experiments/synthesize-via-unify-test-longer.metta): Extended tests for synthesis through unification.

#### **Match and Unify Operations**

- **[`match`](./baseline_compat/hyperon-pln_metta/match)**: Logic for matching and unification.
   - [`DeductionImplicationDirectIntroductionMatchTest.metta`](baseline_compat/hyperon-pln_metta/match/DeductionImplicationDirectIntroductionMatchTest.metta): Tests for matching in deduction and direct implication introduction.
   - [`DeductionMatch.metta`](baseline_compat/hyperon-pln_metta/match/DeductionMatch.metta): Logic for deduction matching.
   - [`ImplicationDirectIntroductionMatchTest.metta`](baseline_compat/hyperon-pln_metta/match/ImplicationDirectIntroductionMatchTest.metta): Tests for direct implication introduction matching.
   - [`DeductionMatchTest.metta`](baseline_compat/hyperon-pln_metta/match/DeductionMatchTest.metta): Test cases for deduction matching.
   - [`ImplicationDirectIntroductionMatch.metta`](baseline_compat/hyperon-pln_metta/match/ImplicationDirectIntroductionMatch.metta): Logic for direct implication introduction matching.

#### **Metta-Morph Tests**

- **[`metta-morph_tests`](./baseline_compat/metta-morph_tests)**: Test cases exploring various features and functionalities in MeTTa.
   - [`minnars.metta`](baseline_compat/metta-morph_tests/minnars.metta): Tests and examples for MinNARS implementation.
   - [`sequential_nested.metta`](baseline_compat/metta-morph_tests/sequential_nested.metta): Experiments with sequential and nested structures.
   - [`peano.metta`](baseline_compat/metta-morph_tests/peano.metta): Implementations and tests for Peano arithmetic.
   - [`if.metta`](baseline_compat/metta-morph_tests/if.metta): Tests for 'if' conditional structures.
   - [`types.metta`](baseline_compat/metta-morph_tests/types.metta): Exploration of type systems and their behaviors.
   - [`states_spaces.metta`](baseline_compat/metta-morph_tests/states_spaces.metta): Experiments with state spaces.
   - [`supercollapse.metta`](baseline_compat/metta-morph_tests/supercollapse.metta): Tests for collapse operations.
   - [`zeroargs.metta`](baseline_compat/metta-morph_tests/zeroargs.metta): Investigating functions with zero arguments.
   - [`match_feval.metta`](baseline_compat/metta-morph_tests/match_feval.metta): Function evaluation within match structures.
   - [`nalifier.metta`](baseline_compat/metta-morph_tests/nalifier.metta): NAL (Non-Axiomatic Logic) implementation tests.
   - [`factorial.metta`](baseline_compat/metta-morph_tests/factorial.metta): Factorial function implementations and tests.
   - [`types2.metta`](baseline_compat/metta-morph_tests/types2.metta): Further exploration into types and their applications.
   - [`and_or.metta`](baseline_compat/metta-morph_tests/and_or.metta): Logical operations and their behavior in different contexts.
   - [`let_superpose_list.metta`](baseline_compat/metta-morph_tests/let_superpose_list.metta): Experiments with 'let' in list `superpose`.
   - [`multifunction.metta`](baseline_compat/metta-morph_tests/multifunction.metta): Tests for multifunctional behaviors.
   - [`match_void.metta`](baseline_compat/metta-morph_tests/match_void.metta): Exploring match operations with void returns.
   - [`let_superpose_if_case.metta`](baseline_compat/metta-morph_tests/let_superpose_if_case.metta): Superposing 'let' with 'if' and 'case' structures.
   - [`types3.metta`](baseline_compat/metta-morph_tests/types3.metta): Advanced type system explorations.
   - [`add_atom_match.metta`](baseline_compat/metta-morph_tests/add_atom_match.metta): Atom addition within match structures.
   - [`let_superpose_list2.metta`](baseline_compat/metta-morph_tests/let_superpose_list2.metta): Advanced list superposition with 'let'.
   - [`superpose_nested.metta`](baseline_compat/metta-morph_tests/superpose_nested.metta): Nested structure `superpose`.
   - [`identity.metta`](baseline_compat/metta-morph_tests/identity.metta): Tests for identity functions and operations.
   - [`nested_parameters.metta`](baseline_compat/metta-morph_tests/nested_parameters.metta): Experiments with nested parameter structures.
   - [`match_superposed_spaces.metta`](baseline_compat/metta-morph_tests/match_superposed_spaces.metta): Matching within superposed spaces.
   - [`collapse.metta`](baseline_compat/metta-morph_tests/collapse.metta): Tests for collapse operations in various contexts.
   - [`letlet.metta`](baseline_compat/metta-morph_tests/letlet.metta): Experiments with nested 'let' structures.

#### **Hyperon MeTTaLog Sanity Tests**

- **[`hyperon-mettalog_sanity`](./baseline_compat/hyperon-mettalog_sanity)**: Sanity checks and basic tests for Hyperon Mettalog.
   - [`02-curried-plus.metta`](baseline_compat/hyperon-mettalog_sanity/02-curried-plus.metta): Implementations and tests for curried addition functions.
   - [`00_lang_case.metta`](baseline_compat/hyperon-mettalog_sanity/00_lang_case.metta): Case studies in language design and implementation.
   - [`01_lang_inc.metta`](baseline_compat/hyperon-mettalog_sanity/01_lang_inc.metta): Increment functions and their usage in language testing.
   - [`04_match_list_like_space.metta`](baseline_compat/hyperon-mettalog_sanity/04_match_list_like_space.metta): Matching lists in space-like structures.
   - [`structure-tests.metta`](baseline_compat/hyperon-mettalog_sanity/structure-tests.metta): Structural tests for sanity checking.
   - [`05_match_superpose_element_like_space.metta`](baseline_compat/hyperon-mettalog_sanity/05_match_superpose_element_like_space.metta): Matching tests with superposition in element-like spaces.
   - [`00_lang_ok_to_redefine.metta`](baseline_compat/hyperon-mettalog_sanity/00_lang_ok_to_redefine.metta): Tests for language redefinition capabilities.

#### **Hyperon Mettalog Sanity Checks**

- **[`hyperon-mettalog_sanity`](./baseline_compat/hyperon-mettalog_sanity)**: Sanity checks and basic tests for Hyperon Mettalog.
   - [`02-curried-plus.metta`](baseline_compat/hyperon-mettalog_sanity/02-curried-plus.metta): Implementations and tests for curried addition functions.
   - [`00_lang_case.metta`](baseline_compat/hyperon-mettalog_sanity/00_lang_case.metta): Case studies in language design and implementation.
   - [`01_lang_inc.metta`](baseline_compat/hyperon-mettalog_sanity/01_lang_inc.metta): Increment functions and their usage in language testing.
   - [`04_match_list_like_space.metta`](baseline_compat/hyperon-mettalog_sanity/04_match_list_like_space.metta): Matching lists in space-like structures.

#### **Hyperon Experimental Scripts**

- **[`hyperon-experimental_scripts`](./baseline_compat/hyperon-experimental_scripts)**: Scripts for experimenting with advanced concepts in Hyperon.
   - [`_e2_states_dia.metta`](baseline_compat/hyperon-experimental_scripts/_e2_states_dia.metta): State diagrams and their representation.
   - [`a1_symbols.metta`](baseline_compat/hyperon-experimental_scripts/a1_symbols.metta): Exploration of symbol usage and manipulation.
   - [`d4_type_prop.metta`](baseline_compat/hyperon-experimental_scripts/d4_type_prop.metta): Type properties and their applications in logic.
   - [`c2_spaces_kb.metta`](baseline_compat/hyperon-experimental_scripts/c2_spaces_kb.metta): Knowledge base management for spaces.
   - [`b1_equal_chain.metta`](baseline_compat/hyperon-experimental_scripts/b1_equal_chain.metta): Chain of equalities and logical implications.
   - [`e1_kb_write.metta`](baseline_compat/hyperon-experimental_scripts/e1_kb_write.metta): Writing and managing knowledge bases.
   - [`d3_deptypes.metta`](baseline_compat/hyperon-experimental_scripts/d3_deptypes.metta): Explorations of dependent types in logic.
   - [`c3_pln_stv.metta`](baseline_compat/hyperon-experimental_scripts/c3_pln_stv.metta): PLN short-term visit logic and reasoning.
   - [`d5_auto_types.metta`](baseline_compat/hyperon-experimental_scripts/d5_auto_types.metta): Automatic type inference and checking.
   - [`b5_types_prelim.metta`](baseline_compat/hyperon-experimental_scripts/b5_types_prelim.metta): Preliminary studies on types in logic.
   - [`e3_match_states.metta`](baseline_compat/hyperon-experimental_scripts/e3_match_states.metta): State matching and logic testing.
   - [`d2_higherfunc.metta`](baseline_compat/hyperon-experimental_scripts/d2_higherfunc.metta): Higher-order functions and their applications.
   - [`b3_direct.metta`](baseline_compat/hyperon-experimental_scripts/b3_direct.metta): Direct methods in logical reasoning and computation.
   - [`e2_states.metta`](baseline_compat/hyperon-experimental_scripts/e2_states.metta): State management and logic in complex systems.
   - [`d1_gadt.metta`](baseline_compat/hyperon-experimental_scripts/d1_gadt.metta): Generalized Algebraic Data Types (GADT) exploration.
   - [`c1_grounded_basic.metta`](baseline_compat/hyperon-experimental_scripts/c1_grounded_basic.metta): Grounded basics in logical computation.
   - [`f1_imports.metta`](baseline_compat/hyperon-experimental_scripts/f1_imports.metta): Importing external logic and data structures.
	   - [`f1_moduleA.metta`](baseline_compat/hyperon-experimental_scripts/f1_moduleA.metta): Module A for advanced logic and reasoning.
	   - [`f1_moduleB.metta`](baseline_compat/hyperon-experimental_scripts/f1_moduleB.metta): Module B for extended logical functionalities.
	   - [`f1_moduleC.metta`](baseline_compat/hyperon-experimental_scripts/f1_moduleC.metta): Module C for complex logic synthesis.
   - [`a3_twoside.metta`](baseline_compat/hyperon-experimental_scripts/a3_twoside.metta): Two-sided logic and reasoning experiments.
   - [`b2_backchain.metta`](baseline_compat/hyperon-experimental_scripts/b2_backchain.metta): Backchaining techniques in logical reasoning.
   - [`a2_opencoggy.metta`](baseline_compat/hyperon-experimental_scripts/a2_opencoggy.metta): Experiments with OpenCog-like structures.
   - [`b4_nondeterm.metta`](baseline_compat/hyperon-experimental_scripts/b4_nondeterm.metta): Non-deterministic approaches in logic.
   - [`c2_spaces.metta`](baseline_compat/hyperon-experimental_scripts/c2_spaces.metta): Space(s) handling and reasoning in logic.
   - [`b0_chaining_prelim.metta`](baseline_compat/hyperon-experimental_scripts/b0_chaining_prelim.metta): Preliminary chaining methods in logic.

#### **Performance and Testing**

- **[`performance`](./performance)**: Performance testing and benchmarking scripts.
   - [`fwgc2.metta`](performance/fwgc2.metta): Second version of the Farmer-Wolf-Goat-Cabbage problem.
   - [`pathfinding-edge.metta`](performance/pathfinding-edge.metta): Edge-based pathfinding algorithms and tests.
   - [`test_list_concatenation.metta`](performance/test_list_concatenation.metta): Tests for list concatenation performance.
   - [`test_infer_function_application_type.metta`](performance/test_infer_function_application_type.metta): Tests for inferring function application types.
   - [`fibo-as-pred.metta`](performance/fibo-as-pred.metta): Fibonacci sequence implementation as predicates.
   - [`hanoi-one-space.metta`](performance/hanoi-one-space.metta): Tower of Hanoi problem solved in a single space context.
   - [`pathfinding-hard-f.metta`](performance/pathfinding-hard-f.metta): Hard-level pathfinding problems and solutions.
   - [`fwgc.metta`](performance/fwgc.metta): Implementation of the Farmer-Wolf-Goat-Cabbage problem.
   - [`pathfinding-easy.metta`](performance/pathfinding-easy.metta): Easy-level pathfinding problems and solutions.
   - [`fibo.metta`](performance/fibo.metta): Fibonacci sequence implementation.
   - [`factorial.metta`](performance/factorial.metta): Factorial function implementation and performance tests.
   - [`fwgc3.metta`](performance/fwgc3.metta): Third version of the Farmer-Wolf-Goat-Cabbage problem with enhancements.
   - [`talk80.metta`](performance/talk80.metta): Implementation of the classic Talk-80 algorithm.
   - [`hanoi-peg-space.metta`](performance/hanoi-peg-space.metta): Tower of Hanoi problem with multiple pegs and spaces.
   - [`state_types.metta`](performance/state_types.metta): Tests and demonstrations of various state types in logical problems.
   - [`pathfinding-easy-f.metta`](performance/pathfinding-easy-f.metta): Easy-level pathfinding problems with function-based solutions.
   - [`pathfinding-hard.metta`](performance/pathfinding-hard.metta): Hard-level pathfinding problems with complex algorithms.
   - [`key-lookups-many.metta`](performance/key-lookups-many.metta): Performance tests for key lookups in large datasets.
   - [`pathfinding-med-f.metta`](performance/pathfinding-med-f.metta): Medium difficulty pathfinding problems and function-based solutions.
   - [`fwgc1.metta`](performance/fwgc1.metta): First version of the Farmer-Wolf-Goat-Cabbage problem.

#### **Feature Demonstrations**

- **[`features`](./features)**: Feature demonstrations and examples.
   - [`send-more-money.metta`](features/send-more-money.metta): SEND+MORE=MONEY problem solution.
   - [`compiler`](./features/compiler)**: Addresses compiler-related examples and tests.
	   - [`compiler/define_if_like.metta`](features/compiler/define_if_like.metta): Compiler features for defining 'if'-like structures.
	   - [`compiler/00a_lang_compiled_case.metta`](features/compiler/00a_lang_compiled_case.metta): Compiled language case studies.
   - [`reverse-arithmetic.metta`](features/reverse-arithmetic.metta): Demonstrations of reverse arithmetic operations.
   - [`send-more.metta`](features/send-more.metta): SEND+MORE problem solutions and variations.
   - [`httpclient.metta`](features/httpclient.metta): Implementation of an HTTP client in Metta.
   - [`reverse-functions.metta`](features/reverse-functions.metta): Demonstrations of reverse function implementations.






