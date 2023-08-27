% Import necessary libraries
:- use_module(library(readutil)).
:- dynamic term/2, typedef/2, relationship/2, instance/2.

% Main entry point
process_obo_file(Filename) :-
    open(Filename, read, Stream),
    process_stream(Stream),
    close(Stream).

process_stream(Stream) :-
    at_end_of_stream(Stream), !.
process_stream(Stream) :-
    read_line_to_string(Stream, Line),
    ( Line = '[Term]' -> process_term_stanza(Stream)
    ; Line = '[Typedef]' -> process_typedef_stanza(Stream)
    ; Line = '[Relationship]' -> process_relationship_stanza(Stream)
    ; Line = '[Instance]' -> process_instance_stanza(Stream)
    ),
    process_stream(Stream).

% Term Stanza Processing
process_term_stanza(Stream) :-
    read_term_details(Stream, _, _).

read_term_details(Stream, Id, Name) :-
    read_line_to_string(Stream, Line),
    ( prefix(Line, "id: ") ->
        atom_concat("id: ", IdString, Line),
        atom_string(Id, IdString),
        read_term_details(Stream, Id, _)
    ; prefix(Line, "name: ") ->
        atom_concat("name: ", NameString, Line),
        atom_string(Name, NameString),
        assert(term(Id, Name)),
        read_term_details(Stream, Id, Name)
    ; Line = '[Term]' -> 
        true
    ; read_term_details(Stream, _, _)
    ).

% Typedef Stanza Processing
process_typedef_stanza(Stream) :-
    read_typedef_details(Stream, _, _).

read_typedef_details(Stream, Id, Name) :-
    read_line_to_string(Stream, Line),
    ( prefix(Line, "id: ") ->
        atom_concat("id: ", IdString, Line),
        atom_string(Id, IdString),
        read_typedef_details(Stream, Id, _)
    ; prefix(Line, "name: ") ->
        atom_concat("name: ", NameString, Line),
        atom_string(Name, NameString),
        assert(typedef(Id, Name)),
        read_typedef_details(Stream, Id, Name)
    ; Line = '[Typedef]' -> 
        true
    ; read_typedef_details(Stream, _, _)
    ).

% Relationship Stanza Processing
process_relationship_stanza(Stream) :-
    read_relationship_details(Stream, _, _).

read_relationship_details(Stream, Id, Type) :-
    read_line_to_string(Stream, Line),
    ( prefix(Line, "id: ") ->
        atom_concat("id: ", IdString, Line),
        atom_string(Id, IdString),
        read_relationship_details(Stream, Id, _)
    ; prefix(Line, "type: ") ->
        atom_concat("type: ", TypeString, Line),
        atom_string(Type, TypeString),
        assert(relationship(Id, Type)),
        read_relationship_details(Stream, Id, Type)
    ; Line = '[Relationship]' ->
        true
    ; read_relationship_details(Stream, _, _)
    ).

% Instance Stanza Processing
process_instance_stanza(Stream) :-
    read_instance_details(Stream, _, _).

read_instance_details(Stream, Id, Name) :-
    read_line_to_string(Stream, Line),
    ( prefix(Line, "id: ") ->
        atom_concat("id: ", IdString, Line),
        atom_string(Id, IdString),
        read_instance_details(Stream, Id, _)
    ; prefix(Line, "name: ") ->
        atom_concat("name: ", NameString, Line),
        atom_string(Name, NameString),
        assert(instance(Id, Name)),
        read_instance_details(Stream, Id, Name)
    ; Line = '[Instance]' ->
        true
    ; read_instance_details(Stream, _, _)
    ).

