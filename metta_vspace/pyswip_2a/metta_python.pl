:- encoding(iso_latin_1).
:- flush_output.
:- setenv('RUST_BACKTRACE',full).
%:- '$set_source_module'('user').
/*
# Core in Rust
In the original version, the core logic and functionalities of the MeTTa system are implemented in Rust. Rust is known for its performance and safety features, making it a suitable choice for building robust, high-performance systems.

# Python Extensions
Python is used to extend or customize MeTTa. Typically, Python interacts with the Rust core through a Foreign Function Interface (FFI) or similar bridging mechanisms. This allows Python programmers to write code that can interact with the lower-level Rust code, while taking advantage of Python's ease of use and rich ecosystem.

# Prolog Allows Python Extensions
Just like the Rust core allowed for Python extensions, the Prolog code also permits Python and Rust developers (thru python right now) to extend or customize parts of MeTTa. This maintains the system�s extensibility and allows users who are more comfortable with Python to continue working with the system effectively.

*/


:- use_module(library(janus)).
:- use_module(library(filesex)).


is_rust_space(GSpace):- is_python_space(GSpace).

ensure_space_py(Space,GSpace):- py_is_object(Space),!,GSpace=Space.
ensure_space_py(Space,GSpace):- var(Space),init_primary_metta_space(GSpace), Space=GSpace.

:- dynamic(is_metta/1).
ensure_rust_metta(MeTTa):- is_metta(MeTTa),!.
ensure_rust_metta(MeTTa):-
   py_call(hyperon:'MeTTa'(),MeTTa),
   asserta(is_metta(MeTTa)).

:- dynamic(is_metta_learner/1).
ensure_metta_learner(Metta_Learner):- is_metta_learner(Metta_Learner),!.
ensure_metta_learner(Metta_Learner):-
   py_call(metta_vspace:'metta_learner':'MettaLearner'(),Metta_Learner),
   asserta(is_metta_learner(Metta_Learner)).

:- multifile(space_type_method/3).
:- dynamic(space_type_method/3).
space_type_method(is_not_prolog_space,new_space,new_rust_space).
space_type_method(is_not_prolog_space,add_atom,add_to_space).
space_type_method(is_not_prolog_space,remove_atom,remove_from_space).
space_type_method(is_not_prolog_space,replace_atom,replace_from_space).
space_type_method(is_not_prolog_space,atom_count,atom_count_from_space).
space_type_method(is_not_prolog_space,get_atoms,query_from_space).
space_type_method(is_not_prolog_space,atom_iter,atoms_iter_from_space).
space_type_method(is_not_prolog_space,query,query_from_space).


% Initialize a new hyperon.base.GroundingSpace and get a reference
init_primary_metta_space(GSpace) :- is_rust_space(GSpace),!.
init_primary_metta_space(GSpace) :- ensure_rust_metta(MeTTa), py_call(MeTTa:space(),GSpace),
    asserta(is_python_space(GSpace)).
init_primary_metta_space(GSpace) :- new_rust_space(GSpace).


% Initialize a new hyperon.base.GroundingSpace and get a reference
new_rust_space(GSpace) :-
    py_call(hyperon:base:'GroundingSpace'(), GSpace),
    asserta(is_python_space(GSpace)).

% Query from hyperon.base.GroundingSpace
query_from_space(Space, QueryAtom, Result) :-
    ensure_space(Space,GSpace),
    py_call(GSpace:'query'(QueryAtom), Result).

% Add an atom to hyperon.base.GroundingSpace
add_to_space(Space, Atom) :-
    ensure_space(Space,GSpace),
    py_call(GSpace:'add'(Atom), _).

% Remove an atom from hyperon.base.GroundingSpace
remove_from_space(Space, Atom) :-
    ensure_space(Space,GSpace),
    py_call(GSpace:'remove'(Atom), _).

% Replace an atom in hyperon.base.GroundingSpace
replace_from_space(Space, FromAtom, ToAtom) :-
    ensure_space(Space,GSpace),
    py_call(GSpace:'replace'(FromAtom, ToAtom), _).

% Get the atom count from hyperon.base.GroundingSpace
atom_count_from_space(Space, Count) :-
    ensure_space(Space,GSpace),
    py_call(GSpace:'atom_count'(), Count).

% Get the atom count from hyperon.base.GroundingSpace
atom_count_from_space(Space, Count) :-
    ensure_space(Space,GSpace),
    py_call(GSpace:'get_atoms'(), Count).

% Get the atom iterator from hyperon.base.GroundingSpace
atoms_iter_from_space(Space, Atoms) :-
    ensure_space(Space,GSpace),
    py_call(GSpace:'atoms_iter'(), Atoms).


'extend-py!'(Module,Result):-
  %listing(ensure_rust_metta/1),
  %ensure_metta_learner,
  wdmsg('extend-py!'(Module)),
  ensure_rust_metta(MeTTa),
  replace_in_string(["/"="."],Module,ToPython),
  py_call(MeTTa:load_py_module(ToPython),Result),
  wdmsg(result(MeTTa->Result)).

ensure_metta_learner:-
  ensure_metta_learner(Learner),
  wdmsg(ensure_metta_learner(Learner)).


% Example usage
example_usage :-
    init_primary_metta_space(GSpace),
    query_from_space(GSpace, some_query, Result),
    writeln(Result).


/*
Rust: The core of MeTTa is implemented in Rust, which provides performance and safety features.

Python Extensions: Python is used for extending the core functionalities. Python communicates with Rust via a Foreign Function Interface (FFI) or similar mechanisms.

Prolog: The Prolog code is an additional layer that allows you to extend or customize parts of MeTTa using Python and Rust. It maintains the system's extensibility.


VSpace is a space with its backend in Prolog, it implies that you're using Prolog's logic programming capabilities to manage and manipulate a particular domain, which in this context is referred to as a "space" (possibly akin to the GroundingSpace in Python, but implemented in Prolog).

To integrate VSpace with the existing Python and Rust components, similar interfacing techniques could be used. You could expose Prolog predicates as functions that can be called from Python or Rust, and likewise, call Python or Rust functions from within Prolog.


*/

%:- ensure_loaded(metta_interp).

%:- prolog_load_context(directory, ChildDir),
%   file_directory_name(ChildDir, ParentDir),
%   py_add_lib_dir(ParentDir).


