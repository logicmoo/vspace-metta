# Examples README

The `examples` directory houses a variety of sub-directories, each focusing on specific functionalities, tests, or demonstrations. These sub-directories serve as a comprehensive resource for understanding the system.

---

## Main Directory Structure

- **[`flybase`](./flybase)**: Focused on the Flybase module, the examples here are designed to provide insights into how this specific component works and can be used.
    - [flybase-vspace.metta](./flybase/flybase-vspace.metta): Manages the versioned space (vspace) within Flybase.
    - [flybase-loader-size-estimates.metta](./flybase/flybase-loader-size-estimates.metta): Estimates the size the loader will require.
    - [flybase-mined-flat.metta](./flybase/flybase-mined-flat.metta): Contains flattened mined data.
    - [flybase-deduced-queries.metta](./flybase/flybase-deduced-queries.metta): Houses deduced queries.
    - [flybase-deduced.metta](./flybase/flybase-deduced.metta): Stores deduced facts and data.
    - [flybase-mined.metta](./flybase/flybase-mined.metta): Contains mined data.
    - [flybase-loader.metta](./flybase/flybase-loader.metta): Responsible for loading data.
    - [flybase-deduced-connections.metta](./flybase/flybase-deduced-connections.metta): Manages deduced connections.
    - [flybase-deduced-types.metta](./flybase/flybase-deduced-types.metta): Holds information about deduced types.

- **[`python`](./python)**: Contains Python-specific examples and sandboxes.
    - [`./python/sandbox`](./python/sandbox): A space for Python-based experimental code.
        - [`./python/sandbox/resolve`](./python/sandbox/resolve): Features resolution-based logic.
        - [`./python/sandbox/sql_space`](./python/sandbox/sql_space): SQL-based experiments.
        - [`./python/sandbox/neurospace`](./python/sandbox/neurospace): Neural network simulations.
        - [`./python/sandbox/numpy`](./python/sandbox/numpy): NumPy-based numerical operations.
        - [`./python/sandbox/repl`](./python/sandbox/repl): A Python REPL sandbox.
        - [`./python/sandbox/das_gate`](./python/sandbox/das_gate): Focused on gate-level simulations.

- **[`nars`](./nars)**: Dedicated to NARS (Non-Axiomatic Reasoning System) examples.
    - [`./nars/nars_v0`](./nars/nars_v0): Original version tests.
    - [`./nars/current`](./nars/current): Houses the current iteration tests.
    - [`./nars/prev`](./nars/prev): Includes tests from previous versions.
    - [`./nars/extra_tests`](./nars/extra_tests): Additional, perhaps experimental, tests.
    - [`./nars/new`](./nars/new): Houses the newest set of examples.

- **[`performance`](./performance)**: Focuses on performance metrics and benchmarks.
- **[`features`](./features)**: Contains examples demonstrating various features.

### [`./compat`](./compat)

This directory focuses on compatibility and explores different methodologies to port PLN to MeTTa.

#### **Synthesis and Logic Group**

This group of directories explores various representational methods for porting PLN to MeTTa.

- **[`match`](./compat/match)**: Focuses on representing rules using MeTTa's `match` operator.
- **[`entail`](./compat/entail)**: Here, rules are expressed with the symbol `?`.
- **[`equal`](./compat/equal)**: Uses MeTTa equality `=` to represent rules.
- **[`dependent-types`](./compat/dependent-types)**: Concentrates on representing rules as type constructors.
- **[`common`](./compat/common)**: Contains common definitions.
- [`./compat/common/formula`](./compat/common/formula): Manages formulaic representations.
- [`./compat/common/truthvalue`](./compat/common/truthvalue): Handles truth values.
- **[`synthesis`](./compat/synthesis)**: Houses program synthesis experiments.
- [`./compat/synthesis/experiments`](./compat/synthesis/experiments): Contains specific experiment scripts.

#### **Additional Sub-Directories**

These focus on specific aspects of compatibility like compiler features, types, and logic schemes.

- **[`compiler`](./compat/compiler)**: Addresses compiler-related examples and tests.
- **[`forward-chainer`](./compat/forward-chainer)**: Focuses on forward-chaining logic.
- **[`subtyping`](./compat/subtyping)**: Showcases subtyping operations.
- **[`recursion-schemes`](./compat/recursion-schemes)**: Explores recursion schemes.
    - [`./compat/recursion-schemes/src`](./compat/recursion-schemes/src): Contains source files.
- **[`prob-dep-types`](./compat/prob-dep-types)**: Provides examples on probabilistic dependent types.
- **[`sumo`](./compat/sumo)**: Houses SUMO (Suggested Upper Merged Ontology) examples.
    - [`./compat/sumo/orientation`](./compat/sumo/orientation): Related to spatial orientation.
    - [`./compat/sumo/located`](./compat/sumo/located): Pertains to location-based logic.
    - [`./compat/sumo/john-carry-flower`](./compat/sumo/john-carry-flower): Narrative logic examples.
    - [`./compat/sumo/route-between`](./compat/sumo/route-between): Deals with routing logic.

- **[`test_scripts`](./compat/test_scripts) & [`test_scripts_extras`](./compat/test_scripts_extras)**: Contains script files for compatibility tests.
- **[`interp`](./compat/interp)**: Concerned with interpretation, how the system processes and runs code.
- **[`minecraft`](./compat/minecraft)**: Focuses on Minecraft integration.
- **[`miner`](./compat/miner)**: Focuses on data mining tasks.


