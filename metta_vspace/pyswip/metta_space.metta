
  (encoding iso-latin-1)
  (flush-output)
  (setenv RUST-BACKTRACE full)
  (ensure-loaded metta-compiler)
;:- ensure_loaded(metta_compiler).
; TODO move non flybase specific code between here and the compiler
  (ensure-loaded flybase-main)

  (multifile (/ is-pre-statistic 2))
  (dynamic (/ is-pre-statistic 2))

  (= 
    (save-pre-statistic $Name) 
    (if-then-else 
      (is-pre-statistic $Name $_) True 
      (, 
        (statistics $Name $AS) 
        (term-number $AS $FN) 
        (pfcAdd (is-pre-statistic $Name $FN)))))

  (= 
    (pre-statistic $N $V) 
    (if-then-else 
      (is-pre-statistic $N $V) True 
      (= $V 0)))

  (= 
    (post-statistic $N $V) 
    (, 
      (statistics $N $VV) 
      (term-number $VV $FV) 
      (pre-statistic $N $WV) 
      (is $V0 
        (- $FV $WV)) 
      (if-then-else 
        (< $V0 0) 
        (= $V 0) 
        (= $V0 $V))))

  (= 
    (term-number $T $N) 
    (, 
      (sub-term $N $T) 
      (number $N)))



  (= 
    (call-match (:: $G)) 
    (, 
      (set-det) 
      (call $G)))
  (= 
    (call-match (Cons  $G $GG)) 
    (, 
      (set-det) 
      (call $G) 
      (call-match $GG)))
  (= 
    (call-match $G) 
    (call $G))



  (dynamic (/ repeats 1))
  (dynamic (/ not-repeats 1))

  (= 
    (assert-new $P) 
    (, 
      (call $P) 
      (set-det) 
      (assert-new1 (repeats $P))))
  (= 
    (assert-new $P) 
    (, 
      (pfcAdd $P) 
      (flag assert-new $TA 
        (+ $TA 1)) 
      (assert-new1 (not-repeats $P)) 
      (set-det)))


  (= 
    (retract1 $P) 
    (, 
      (not (call $P)) 
      (set-det)))
  (= 
    (retract1 $P) 
    (ignore (not (remove-atom  &self $P))))


  (= 
    (assert-new1 $P) 
    (, 
      (not (not (call $P))) 
      (set-det)))
  (= 
    (assert-new1 $P) 
    (pfcAdd $P))



  (dynamic (/ fb-pred 3))
  (dynamic (/ mod-f-a 3))

  (= 
    (decl-m-fb-pred $Mod $Fn $A) 
    (, 
      (var $Mod) 
      (set-det) 
      (mod-f-a $Mod $Fn $A)))
  (= 
    (decl-m-fb-pred $Mod $Fn $A) 
    (if-then-else 
      (mod-f-a $Mod $Fn $A) True 
      (, 
        (dynamic (with_self  $Mod (/ $Fn $A))) 
        (pfcAdd (mod-f-a $Mod $Fn $A)))))

  (dynamic (/ fb-pred-file 3))

  (= 
    (decl-fb-pred $Fn $A) 
    (, 
      (if-then-else 
        (fb-pred $Fn $A) True 
        (, 
          (dynamic (/ $Fn $A)) 
          (pfcAdd (fb-pred $Fn $A)))) 
      (ignore (, (nb-current loading-file $File) (if-then-else (fb-pred-file $Fn $A $File) True (pfcAdd (fb-pred-file $Fn $A $File)))))))
; Import necessary libraries

  (use-module (library readutil))



  (= 
    (skip  $_) True)

; ===============================
; MeTTa Python incoming interface
; ===============================

; ============================
; ;;;; Atom Manipulations
; ============================

; Clear all atoms from a space

  (= 
    (clear-atoms $SpaceNameOrInstance) 
    (, 
      (debug-metta (:: clear-atoms $SpaceNameOrInstance)) 
      (space-type-method $Type clear-space $Method) 
      (call $Type $SpaceNameOrInstance) 
      (set-det) 
      (debug-metta (:: type-method $Type $Method)) 
      (call $Method $SpaceNameOrInstance)))

; Add an atom to the space

  (= 
    (add-atom $SpaceNameOrInstance $Atom) 
    (, 
      (space-type-method $Type add-atom $Method) 
      (call $Type $SpaceNameOrInstance) 
      (set-det) 
      (if-t 
        (or 
          (\== $SpaceNameOrInstance &self) 
          (\== $Type is-asserted-space)) 
        (debug-metta (:: type-method $Type $Method $SpaceNameOrInstance $Atom))) 
      (call $Method $SpaceNameOrInstance $Atom))); debug_metta(['add-atom',SpaceNameOrInstance, Atom]),

; Add Atom
  (= 
    (add-atom $Environment $AtomDeclaration $Result) 
    (eval-args 
      (:: add-atom $Environment $AtomDeclaration) $Result))

; remove an atom from the space

  (= 
    (remove-atom $SpaceNameOrInstance $Atom) 
    (, 
      (debug-metta (:: remove-atom $SpaceNameOrInstance $Atom)) 
      (space-type-method $Type remove-atom $Method) 
      (call $Type $SpaceNameOrInstance) 
      (set-det) 
      (debug-metta (:: type-method $Type $Method)) 
      (call $Method $SpaceNameOrInstance $Atom)))
; Remove Atom
  (= 
    (remove-atom $Environment $AtomDeclaration $Result) 
    (eval-args 
      (:: remove-atom $Environment $AtomDeclaration) $Result))

; Add an atom to the space

  (= 
    (replace-atom $SpaceNameOrInstance $Atom $New) 
    (, 
      (debug-metta (:: replace-atom $SpaceNameOrInstance $Atom $New)) 
      (space-type-method $Type replace-atom $Method) 
      (call $Type $SpaceNameOrInstance) 
      (set-det) 
      (debug-metta (:: type-method $Type $Method)) 
      (call $Method $SpaceNameOrInstance $Atom $New)))
; Replace Atom

  (= 
    (atom-replace $Environment $OldAtom $NewAtom $Result) 
    (eval-args 
      (:: atom-replace $Environment $OldAtom $NewAtom) $Result))

; Count atoms in a space

  (= 
    (atom-count $SpaceNameOrInstance $Count) 
    (, 
      (debug-metta (:: atom-count $SpaceNameOrInstance)) 
      (space-type-method $Type atom-count $Method) 
      (call $Type $SpaceNameOrInstance) 
      (set-det) 
      (call $Method $SpaceNameOrInstance $Count) 
      (debug-metta (:: type-method-result $Type $Method $Count))))
; Count Atoms
  (= 
    (atom-count $Environment $Count) 
    (eval-args 
      (:: atom-count $Environment) $Count))

; Fetch all atoms from a space

  (= 
    (get-atoms $SpaceNameOrInstance $AtomsL) 
    (, 
      (debug-metta (:: get-atoms $SpaceNameOrInstance)) 
      (space-type-method $Type get-atoms $Method) 
      (call $Type $SpaceNameOrInstance) 
      (set-det) 
      (call $Method $SpaceNameOrInstance $AtomsL) 
      (length $AtomsL $Count) 
      (debug-metta (:: type-method-result $Type $Method $Count))))
; Get Atoms
  (= 
    (get-atoms $Environment $Atoms) 
    (eval-args 
      (:: get-atoms $Environment) $Atoms))

; Iterate all atoms from a space

  (= 
    (atoms-iter $SpaceNameOrInstance $Iter) 
    (, 
      (debug-metta (:: atoms-iter $SpaceNameOrInstance)) 
      (space-type-method $Type atoms-iter $Method) 
      (call $Type $SpaceNameOrInstance) 
      (set-det) 
      (call $Method $SpaceNameOrInstance $Iter) 
      (debug-metta (:: type-method-result $Type $Method $Iter))))

; Match all atoms from a space

  (= 
    (atoms-match $SpaceNameOrInstance $Atoms $Template $Else) 
    (, 
      (space-type-method $Type atoms-match $Method) 
      (call $Type $SpaceNameOrInstance) 
      (set-det) 
      (call $Method $SpaceNameOrInstance $Atoms $Template $Else) 
      (debug-metta (:: type-method-result $Type $Method $Atoms $Template $Else))))


; Query all atoms from a space

  (= 
    (space-query $SpaceNameOrInstance $QueryAtom $Result) 
    (, 
      (space-type-method $Type query $Method) 
      (call $Type $SpaceNameOrInstance) 
      (set-det) 
      (call $Method $SpaceNameOrInstance $QueryAtom $Result) 
      (debug-metta (:: type-method-result $Type $Method $Result))))



  (= 
    (subst-pattern-template $SpaceNameOrInstance $Pattern $Template) 
    (, 
      (debug-metta (:: subst-pattern-template $SpaceNameOrInstance $Pattern $Template)) 
      (atoms-match $SpaceNameOrInstance $Pattern $Template Nil)))


  (dynamic (/ was-asserted-space 1))/*
space_query_vars(SpaceNameOrInstance, Query, Vars) :- is_as_nb_space(SpaceNameOrInstance),!,
    fetch_or_create_space(SpaceNameOrInstance, Space),
    call_metta(Space,Query,Vars).
*/



  (= 
    (was_asserted_space  &flybase) True)
  (= 
    (was_asserted_space  &self) True)
  (= 
    (was_asserted_space  &attentional_focus) True)
  (= 
    (was_asserted_space  &belief_events) True)
  (= 
    (was_asserted_space  &goal_events) True)
  (= 
    (was_asserted_space  &tempset) True)
  (= 
    (was_asserted_space  &concepts) True)
  (= 
    (was_asserted_space  &belief_events) True)


  (= 
    (is-asserted-space $X) 
    (was-asserted-space $X))
  (= 
    (is-asserted-space $X) 
    (, 
      (not (is-as-nb-space $X)) 
      (not (py-named-space $X)) 
      (set-det)))


  (= 
    (is-python-space-not-prolog $X) 
    (, 
      (not (is-as-nb-space $X)) 
      (not (is-asserted-space $X))))


  (dynamic (/ is-python-space 1))

  (dynamic (/ py-named-space 1))

;py_named_space('&self').
;py_named_space('&vspace').
; Function to check if an atom is registered as a space name
  (dynamic (/ is-registered-space-name 1))

  (= 
    (is_as_nb_space  &nb) True)
  (= 
    (is-as-nb-space $G) 
    (if-then-else 
      (is-valid-nb-space $G) True 
      (, 
        (is-registered-space-name $G) 
        (nb-current $G $S) 
        (is-valid-nb-space $S))))


  (= 
    (is-nb-space $G) 
    (, 
      (nonvar $G) 
      (is-as-nb-space $G)))
; ============================
; ;;;; Pattern Matching
; ============================
; Pattern Matching with an else branch

  (= 
    (match $Environment $Pattern $Template $ElseBranch $Result) 
    (eval-args 
      (:: match $Environment $Pattern $Template $ElseBranch) $Result))
; Pattern Matching without an else branch
  (= 
    (match $Environment $Pattern $Template $Result) 
    (eval-argss 
      (:: match $Environment $Pattern $Template) $Result))
;'match'(_Environment, Pattern, Template, Result):- callable(Pattern),!, call(Pattern),Result=Template.
;'match'(_Environment, Pattern, Template, Result):- !, is_True(Pattern),Result=Template.



  (= 
    (new-space $Space) 
    (, 
      (gensym hyperon::space::DynSpace@- $Name) 
      (fetch-or-create-space $Name $Space)))


  (dynamic (/ is-python-space 1))
; ===============================
; MeTTa Python incoming interface
; ===============================

  (multifile (/ space-type-method 3))
  (dynamic (/ space-type-method 3))

  (= 
    (space_type_method  is_as_nb_space new_space init_space) True)
  (= 
    (space_type_method  is_as_nb_space clear_space clear_nb_atoms) True)
  (= 
    (space_type_method  is_as_nb_space add_atom add_nb_atom) True)
  (= 
    (space_type_method  is_as_nb_space remove_atom remove_nb_atom) True)
  (= 
    (space_type_method  is_as_nb_space replace_atom replace_nb_atom) True)
  (= 
    (space_type_method  is_as_nb_space atom_count atom_nb_count) True)
  (= 
    (space_type_method  is_as_nb_space get_atoms get_nb_atoms) True)
;space_type_method(is_as_nb_space,get_atoms,arg(1)).
  (= 
    (space_type_method  is_as_nb_space atom_iter atom_nb_iter) True)
;space_type_method(is_as_nb_space,query,space_nb_query).

; Clear all atoms from a space

  (= 
    (clear-nb-atoms $SpaceNameOrInstance) 
    (, 
      (fetch-or-create-space $SpaceNameOrInstance $Space) 
      (nb-setarg 1 $Space Nil)))

; Add an atom to the space

  (= 
    (add-nb-atom $SpaceNameOrInstance $Atom) 
    (, 
      (fetch-or-create-space $SpaceNameOrInstance $Space) 
      (arg 1 $Space $Atoms) 
      (= $NewAtoms 
        (Cons  $Atom $Atoms)) 
      (nb-setarg 1 $Space $NewAtoms)))

; Count atoms in a space

  (= 
    (atom-nb-count $SpaceNameOrInstance $Count) 
    (, 
      (fetch-or-create-space $SpaceNameOrInstance $Space) 
      (arg 1 $Space $Atoms) 
      (length $Atoms $Count)))

; Remove an atom from a space

  (= 
    (remove-nb-atom $SpaceNameOrInstance $Atom) 
    (, 
      (fetch-or-create-space $SpaceNameOrInstance $Space) 
      (arg 1 $Space $Atoms) 
      (select $Atom $Atoms $UpdatedAtoms) 
      (nb-setarg 1 $Space $UpdatedAtoms)))

; Fetch all atoms from a space

  (= 
    (get-nb-atoms $SpaceNameOrInstance $Atoms) 
    (, 
      (fetch-or-create-space $SpaceNameOrInstance $Space) 
      (arg 1 $Space $Atoms)))

; Replace an atom in the space

  (= 
    (replace-nb-atom $SpaceNameOrInstance $OldAtom $NewAtom) 
    (, 
      (fetch-or-create-space $SpaceNameOrInstance $Space) 
      (arg 1 $Space $Atoms) 
      (if-then-else 
        (, 
          (select $Found $Atoms $TempAtoms) 
          (=@= $OldAtom $Found)) 
        (, 
          (= $NewAtoms 
            (Cons  $NewAtom $TempAtoms)) 
          (nb-setarg 1 $Space $NewAtoms)) False)))



; Function to confirm if a term represents a space

  (= 
    (is-valid-nb-space $Space) 
    (, 
      (compound $Space) 
      (functor $Space Space $_)))

; Find the original name of a given space

  (= 
    (space-original-name $Space $Name) 
    (, 
      (is-registered-space-name $Name) 
      (nb-current $Name $Space)))

; Register and initialize a new space

  (= 
    (init-space $Name) 
    (, 
      (= $Space 
        (Space Nil)) 
      (asserta (is-registered-space-name $Name)) 
      (nb-setval $Name $Space)))


  (= 
    (fetch-or-create-space $Name) 
    (fetch-or-create-space $Name $_))
; Fetch an existing space or create a new one
  (= 
    (fetch-or-create-space $NameOrInstance $Space) 
    (, 
      (if-then-else 
        (atom $NameOrInstance) 
        (if-then-else 
          (is-registered-space-name $NameOrInstance) 
          (nb-current $NameOrInstance $Space) 
          (, 
            (init-space $NameOrInstance) 
            (nb-current $NameOrInstance $Space))) 
        (if-then-else 
          (is-valid-nb-space $NameOrInstance) 
          (= $Space $NameOrInstance) 
          (writeln 'Error: Invalid input.'))) 
      (is-valid-nb-space $Space)))


; Match Pattern in Space and produce Template

  (= 
    (match $Space $Pattern $Template) 
    (, 
      (get-atoms $Space $Atoms) 
      (match-pattern $Atoms $Pattern $Template)))

; Simple pattern match

  (= 
    (match-pattern  () $_ ()) True)
  (= 
    (match-pattern 
      (Cons  $H $T) $H $H) 
    (set-det))
  (= 
    (match-pattern 
      (Cons  $H $T) $Pattern $Template) 
    (match-pattern $T $Pattern $Template))

;is_python_space(X):- python_object(X).


  (= 
    (ensure-space $X $Y) 
    (, 
      (catch 
        (ensure-space-py $X $Y) $_ fail) 
      (set-det)))
  (= 
    (ensure_space  $N $V) 
    (empty))

; ===============================
; Clause Database interface
; ===============================
;debug_metta(Call):- skip(Call).

  (= 
    (if-metta-debug $Goal) 
    (, 
      (getenv VSPACE-VERBOSE 2) 
      (set-det) 
      (ignore (call $Goal))))
;if_metta_debug(_):-!.
  (= 
    (if-metta-debug $Goal) 
    (, 
      (set-det) 
      (ignore (call $Goal))))

  (= 
    (debug-metta $Term) 
    (notrace (if-metta-debug (format '~N; ~@~n' (:: (write-src $Term))))))
  (= 
    (debug-metta $Msg $Term) 
    (, 
      (notrace (if-metta-debug (format '~N; ~w: ~@~n' (:: $Msg (write-src $Term))))) 
      (set-det)))


  (multifile (/ space-type-method 3))
  (dynamic (/ space-type-method 3))

  (= 
    (space_type_method  is_asserted_space new_space init_space) True)
  (= 
    (space_type_method  is_asserted_space clear_space clear_nb_atoms) True)
  (= 
    (space_type_method  is_asserted_space add_atom metta_assertdb_add) True)
  (= 
    (space_type_method  is_asserted_space remove_atom metta_assertdb_rem) True)
  (= 
    (space_type_method  is_asserted_space replace_atom metta_assertdb_replace) True)
  (= 
    (space_type_method  is_asserted_space atom_count metta_assertdb_count) True)
  (= 
    (space_type_method  is_asserted_space get_atoms metta_assertdb_get_atoms) True)
  (= 
    (space_type_method  is_asserted_space atom_iter metta_assertdb_iter) True)
;space_type_method(is_asserted_space,query,space_nb_query).

;:- dynamic(for_metta/2).
;for_metta(_,T):- fb_pred(F,A),functor(T,F,A),call(T).

  (= 
    (metta-assertdb-ls $KB) 
    (, 
      (= $AMA asserted-metta-atom) 
      (decl-m-fb-pred user $AMA 2) 
      (=.. $MP 
        (:: $AMA $KB $_)) 
      (listing $MP)))


  (= 
    (metta-assertdb-add $KB $AtomIn) 
    (must-det-ll (, (subst-vars $AtomIn $Atom) (= $AMA asserted-metta-atom) (decl-m-fb-pred user $AMA 2) (=.. $MP (:: $AMA $KB $Atom)) (assert-new $MP))))

  (= 
    (metta-assertdb-rem $KB $Old) 
    (metta-assertdb-del $KB $Old))

  (= 
    (metta-assertdb-del $KB $Atom) 
    (, 
      (subst-vars $Atom $Old) 
      (decl-m-fb-pred user asserted-metta-atom 2) 
      (= $MP 
        (metta-atom $KB $Old)) 
      (copy-term $MP $Copy) 
      (clause $MP True $Ref) 
      (=@= $MP $Copy) 
      (set-det) 
      (erase $Ref))) ; ,metta_assertdb('DEL',Old).

  (= 
    (metta-assertdb-replace $KB $Old $New) 
    (, 
      (metta-assertdb-del $KB $Old) 
      (metta-assertdb-add $KB $New)))

  (= 
    (metta-assertdb-count $KB $Count) 
    (, 
      (must-det-ll (, (= $AMA asserted-metta-atom) (decl-m-fb-pred user $AMA 2) (=.. $MP (:: $AMA $KB $_)) (predicate-property $MP (number-of-clauses $SL2)) (predicate-property $MP (number-of-rules $SL3)) (full-symbol-count $SL1) (is $Count (- (+ $SL1 $SL2) $SL3)))) 
      (set-det)));metta_assertdb_ls(KB),

  (= 
    (metta-assertdb-count $KB 0) 
    (set-det))
;metta_assertdb_count(KB,Count):- writeln(metta_assertdb_count_in(KB,Count)), findall(Atom,for_metta(KB,Atom),AtomsL),length(AtomsL,Count),writeln(metta_assertdb_count_out(KB,Count)).

  (= 
    (metta-assertdb-iter $KB $Atoms) 
    (, 
      (= $AMA asserted-metta-atom) 
      (decl-m-fb-pred user $AMA 2) 
      (=.. $MP 
        (:: $AMA $KB $Atoms)) 
      (call $MP)))




  (= 
    (metta-iter-bind $KB $Query $Vars $VarNames) 
    (, 
      (term-variables $Query $QVars) 
      (align-varnames $VarNames $Vars) 
      (= $TV 
        (debug-metta (:: match $KB $Query $QVars $Vars $VarNames))) 
      (ignore (= $QVars $Vars)) 
      (not (not (, (writeq (= av $TV)) (nl)))) 
      (space-query-vars $KB $Query $TF) 
      (\== $TF False)));  \+ \+ (numbervars(TV,0,_,[]),print(tv=TV),nl),
;  \+ \+ (numbervars(TV,0,_,[]),print(qv=TV),nl),
;numbervars(TV,0,_,[]),



; Query from hyperon.base.GroundingSpace

  (= 
    (space-query-vars $KB $Query $Vars) 
    (, 
      (is-asserted-space $KB) 
      (set-det) 
      (call-metta $KB $Query $Vars) 
      (debug-metta RES 
        (space-query-vars $KB $Query $Vars))))



  (= 
    (metta-assertdb-get-atoms $KB $AtomsL) 
    (, 
      (decl-m-fb-pred user asserted-metta-atom 2) 
      (findall $Atom 
        (metta-atom $KB $Atom) $AtomsL)))

  (= 
    (align-varnames $VarNames $Vars) 
    (, 
      (list-to-set $VarNames $NameSet) 
      (merge-named-vars $NameSet $VarNames $Vars)))/*

;metta_assertdb_iter_bind(KB,Query,Template,AtomsL):- decl_m_fb_pred(user,asserted_metta_atom,2), findall(Template,metta_atom(KB,Query),AtomsL).
metta_assertdb_iter_bind(KB,Query,Vars):-
  ignore(term_variables(Query,Vars)),
  print(metta_assertdb(['match',KB,Query,Vars])),nl,
     AMA = asserted_metta_atom,
     decl_m_fb_pred(user,AMA,2),   
     MP =.. [AMA,KB,Query],

  (MP*->true;call_metta_assertdb(KB,Query,Vars)),
  metta_assertdb('RES',metta_assertdb_iter_bind(KB,Query,Vars)).
;metta_assertdb_iter_bind(KB,Atom,Template):- metta_assertdb_stats, findall(Template,metta_assertdb_iter(KB,Atom),VarList).

metta_assertdb_iter_bind(KB,Atoms,Vars):-
  metta_assertdb_stats,
  term_variables(Atoms,AVars),
  metta_assertdb_iter(KB,Atoms), ignore(AVars = Vars).
*/



  (= 
    (merge-named-vars Nil $VarNames $Vars) 
    (set-det))
  (= 
    (merge-named-vars 
      (Cons  $N $NameSet) $VarNames $Vars) 
    (, 
      (merge-named $N $V $VarNames $Vars) 
      (merge-named-vars $NameSet $VarNames $Vars)))
;merge_named_vars(_,_,_).


  (= 
    (merge-named $_ $_ Nil Nil) 
    (set-det))
  (= 
    (merge-named $N $V 
      (Cons  $N $VarNames) 
      (Cons  $V $Vars)) 
    (merge-named $N $V $VarNames $Vars))



  (= 
    (call-metta $KB $Query $Vars) 
    (metta-atom $KB $Query))
  (= 
    (call-metta $KB $Query $Vars) 
    (, 
      (metta-to-pyswip Nil $Query $Call) 
      (set-det) 
      (print (with_self  (user) $Call)) 
      (nl) 
      (with_self  
        (user) 
        (call $Call))))


  (= 
    (metta-to-pyswip $PS $Query $Call) 
    (, 
      (var $Query) 
      (set-det) 
      (= $Call $Query)))
  (= 
    (metta-to-pyswip $PS $Query $Call) 
    (, 
      (not (compound $Query)) 
      (set-det) 
      (= $Call $Query) 
      (set-det)))
  (= 
    (metta-to-pyswip $PS $Query $Call) 
    (, 
      (is-list $Query) 
      (= $Query 
        (Cons  $Q $Uery)) 
      (set-det) 
      (cmpd-to-pyswip $PS $Q $Uery $Call)))
  (= 
    (metta-to-pyswip $PS $Query $Call) 
    (, 
      (=.. $Query 
        (Cons  $Q $Uery)) 
      (cmpd-to-pyswip $PS $Q $Uery $Call)))


  (= 
    (cmpd-to-pyswip $PS $Q $Uery $Call) 
    (, 
      (atom $Q) 
      (maplist 
        (metta-to-pyswip (Cons  $Q $PS)) $Uery $Cery) 
      (=.. $Call 
        (Cons  $Q $Cery))))
  (= 
    (cmpd-to-pyswip $PS "and" $Uery $Call) 
    (, 
      (maplist 
        (metta-to-pyswip $PS) $Uery $Args) 
      (list-to-conjuncts $Args $Call)))



  (= 
    (show-metta-def $Pred Nil) 
    (, 
      (get-metta-src $Pred 
        (Cons  $_ $SrcL)) 
      (maplist write-src-nl $SrcL)))


  (= 
    (write-src-nl $Src) 
    (, 
      (format ~N) 
      (write-src $Src) 
      (format ~N)))

;'get-metta-src'(Pred,[Len|SrcL]):- findall(['AtomDef',Src],'get-metta-src1'(Pred,Src),SrcL), length(SrcL,Len).

  (= 
    (get-metta-src $Pred 
      (Cons  $Len $SrcL)) 
    (, 
      (findall $Src 
        (get-metta-src1 $Pred $Src) $SrcL) 
      (length $SrcL $Len)))

  (= 
    (get-metta-src1 $Pred $Src) 
    (, 
      (current-self $Space) 
      (metta-atom $Space $F $A $List) 
      (once (if-then-else (sub-var $Pred $A) (= $Src (:: $F $A $List)) (if-then (sub-var $Pred $F) (= $Src (Cons  $F (Cons  $A $List))))))))

; is a quine

  (= 
    (AtomDef  $X 
      (AtomDef $X)) True)



  (= 
    (sort-on $C $R $A $B) 
    (, 
      (if-then-else 
        (== $A $B) 
        (= $R =) 
        (must-det-ll (, (call $C $A $AA) (call $C $B $BB) (set-det) (compare $R (+ $AA $A) (+ $BB $B))))) 
      (set-det)))

  (= 
    (tokens $X $VL) 
    (, 
      (unaccent-atom $X $A) 
      (set-det) 
      (findall $E 
        (, 
          (is-tokenizer $T) 
          (call $T $A $E)) $L) 
      (predsort 
        (sort-on length-fw-len) $L $S) 
      (last $S $VL)))


  (= 
    (length-fw-len 
      (Cons  $W $List) 
      (+ $L $WL)) 
    (, 
      (length $List $L) 
      (atom-length $W $WL)))


  (= 
    (print-token-args) 
    (, 
      (make) 
      (fb-arg $X) 
      (tokens $X $A0) 
      (exclude is-dash $A0 $A) 
      (tterm $A $AT) 
      (writeq $X) 
      (write     ) 
      (writeq $AT) 
      (write   ) 
      (write-src $A) 
      (nl) 
      (fail)))

  (= 
    (is_dash  _) True)
  (= 
    (is_dash  -) True)

  (= 
    (tterm 
      (:: $A) $A) 
    (set-det))
  (= 
    (tterm 
      (Cons  $A 
        (Cons  : 
          (Cons  $B $M))) $BA) 
    (, 
      (atom $A) 
      (set-det) 
      (=.. $BA 
        (Cons  $A 
          (Cons  $B $M)))))
  (= 
    (tterm 
      (Cons  $A 
        (Cons  $B $M)) $BA) 
    (, 
      (atom $B) 
      (set-det) 
      (=.. $BA 
        (Cons  $B 
          (Cons  $A $M)))))
  (= 
    (tterm 
      (Cons  $A $B) $BA) 
    (, 
      (atom $A) 
      (set-det) 
      (=.. $BA 
        (Cons  $B $A))))
  (= 
    (tterm  $A $A) True)


  (= 
    (is_tokenizer  into_list) True)
  (= 
    (is_tokenizer  to_case_break_atoms) True)
  (= 
    (is_tokenizer  atom_to_stem_list) True)
  (= 
    (is_tokenizer  tokenize_atom) True)
;is_tokenizer(double_metaphone).




  (= 
    (is-an-arg-type $S $T) 
    (, 
      (flybase-identifier $S $T) 
      (set-det)))

  (= 
    (has-type $S $Type) 
    (, 
      (sub-atom $S 0 4 $Aft $FB) 
      (flybase-identifier $FB $Type) 
      (set-det) 
      (> $Aft 0)))



  (= 
    (call-sexpr $S) 
    (writeln (= call $S)))
;call_sexpr(Space,Expr,Result):-


  (dynamic (/ fb-pred 2))


  (= 
    (full-symbol-count $SL) 
    (, 
      (flag total-loaded-atoms $SL $SL) 
      (> $SL 1) 
      (set-det)))
  (= 
    (full-symbol-count $SL) 
    (, 
      (findall $NC 
        (, 
          (fb-pred $F $A) 
          (metta-stats $F $A $NC)) $Each) 
      (sumlist $Each $SL)))


  (= 
    (heartbeat) 
    (, 
      (get-time $CurrentTime) 
      (if-then-else 
        (nb-current last-printed-time $_) True 
        (nb-setval last-printed-time $CurrentTime)) 
      (nb-getval last-printed-time $LastPrintedTime) 
      (is $Diff 
        (- $CurrentTime $LastPrintedTime)) 
      (if-then-else 
        (>= $Diff 60) metta-stats True))); Get the current time and the last printed time
; Check if the global variable is set
; Calculate the difference
; If the difference is greater than or equal to 60 seconds (1 minute)
; Print the heartbeat message and update the last printed time
; Otherwise, do nothing



  (= 
    (metta-stats) 
    (, 
      (gc-now) 
      (writeln 





;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~) 
      (writeln ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~) 
      (full-symbol-count $SL) 
      (format "~N~n; Total\t\tAtoms (Atomspace size): ~`.t ~D~108|~n" 
        (:: $SL)) 
      (get-time $CurrentTime) 
      (nb-setval last-printed-time $CurrentTime) 
      (post-statistic memory $Mem) 
      (post-statistic atom-space $AS) 
      (post-statistic cputime $TotalSeconds) 
      (post-statistic atoms $Concepts) 
      (flag assert-new $CTs $CTs) 
      (post-statistic stack $StackMem) 
      (is $PM 
        (+ $Mem $StackMem)) 
      (is $RM 
        (- $Mem $AS)) 
      (is $PA 
        (// $RM 
          (+ $SL 1))) 
      (is $APS 
        (* 60 
          (floor (/ $SL (+ $TotalSeconds 1))))) 
      (is $ACS 
        (// $AS 
          (+ $Concepts 1))) 
      (pl-stats SymbolAtoms $Concepts) 
      (pl-stats 'Random samples' $CTs) 
      (skip (, (pl-stats 'Bytes Per Atom (Average)' $PA) (pl-stats 'Bytes Per ConceptNode (Average)' $ACS))) 
      (skip (, (pl-stats 'Relational Memory' $RM) (pl-stats 'ConceptNode Memory' $AS))) 
      (format-time $TotalSeconds $Formatted) 
      (skip (pl-stats 'Atoms per minute' $APS)) 
      (pl-stats 'Total Memory Used' $PM) 
      (pl-stats 'Runtime (days:hh:mm:ss)' $Formatted) 
      (nl) 
      (nl) 
      (set-det)));pl_stats('Queryspace Memory',StackMem),
;CPU is CPUTime-57600,

  (= 
    (metta-stats $F) 
    (for-all 
      (fb-pred $F $A) 
      (metta-stats $F $A)))
  (= 
    (metta-stats $F $A) 
    (, 
      (metta-stats $F $A $NC) 
      (pl-stats 
        (/ $F $A) $NC)))
  (= 
    (metta-stats $F $A $NC) 
    (, 
      (functor $P $F $A) 
      (predicate-property $P 
        (number-of-clauses $NC))))

  (= 
    (pl-stats $Stat) 
    (, 
      (statistics $Stat $Value) 
      (pl-stats $Stat $Value)))
  (= 
    (pl-stats $Stat 
      (Cons  $Value $_)) 
    (, 
      (nonvar $Value) 
      (set-det) 
      (pl-stats $Stat $Value)))
  (= 
    (pl-stats $Stat $Value) 
    (, 
      (format "~N;\t\t~@: ~`.t ~@~100|" 
        (:: 
          (format-value $Stat) 
          (format-value $Value))) 
      (set-det)))


; AsPred to print the formatted result.

  (= 
    (format-value $Value) 
    (, 
      (float $Value) 
      (set-det) 
      (format "~2f" 
        (:: $Value)) 
      (set-det)))
  (= 
    (format-value $Bytes) 
    (, 
      (integer $Bytes) 
      (format-bytes $Bytes $Formatted) 
      (write $Formatted)))
  (= 
    (format-value $Term) 
    (format "~w" 
      (:: $Term)))
;  Base case: If the number is 1G or more, show it in gigabytes (G).

  (= 
    (format-bytes $Bytes $Formatted) 
    (, 
      (>= $Bytes 1073741824) 
      (is $GB 
        (/ $Bytes 1073741824)) 
      (format 
        (string $Formatted) ~2fG 
        (:: $GB))))
; If the number is less than 1G, show it in megabytes (M).
  (= 
    (format-bytes $Bytes $Formatted) 
    (, 
      (>= $Bytes 104857600) 
      (< $Bytes 1073741824) 
      (set-det) 
      (is $MB 
        (/ $Bytes 1048576)) 
      (is $D 
        (floor $MB)) 
      (format 
        (string $Formatted) ~DM 
        (:: $D))))
; If the number is less than 1K, show it in bytes (B).
  (= 
    (format-bytes $Bytes $Formatted) 
    (format 
      (string $Formatted) ~D 
      (:: $Bytes)))
; ; If the number is less than 1M, show it in kilobytes (K).
;format_bytes(Bytes, Formatted) :- Bytes >= 1024, Bytes < 1048576, !, KB is Bytes / 1024, format(string(Formatted), '~0fK', [KB]).

; Convert total seconds to days, hours, minutes, seconds, and milliseconds.

  (= 
    (format-time $TotalSeconds $Formatted) 
    (, 
      (is $Seconds 
        (floor $TotalSeconds)) 
      (is $Days 
        (div $Seconds 86400)) 
      (is $Remain1 
        (- 
          (mod $Seconds 86400) 57600)) 
      (format-time 
        (string $Out) %T $Remain1) 
      (format 
        (string $Formatted) ~w:~w 
        (:: $Days $Out)))); Get days, remaining seconds
; Format the result


; AsPred to print the formatted time.

  (= 
    (print-formatted-time $TotalSeconds) 
    (, 
      (format-time $TotalSeconds $Formatted) 
      (writeln $Formatted)))



  (= 
    (metta-final) 
    (, 
      (save-pre-statistic memory) 
      (save-pre-statistic atoms) 
      (save-pre-statistic atom-space)))

