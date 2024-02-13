  (encoding iso-latin-1)
  (flush-output)
  (setenv RUST-BACKTRACE full)
;:- '$set_source_module'('user').
  (set-prolog-flag py-backtrace-depth 10)
  (set-prolog-flag py-backtrace True)
  (set-prolog-flag py-argv Nil)
;:- set_MeTTa_flag(argv,[]).
  (use-module (library janus))/*
# Core in Rust
In the original version, the core logic and functionalities of the MeTTa system are implemented in Rust. Rust is known for its performance and safety features, making it a suitable choice for building robust, high-performance systems.

# Python Extensions
Python is used to extend or customize MeTTa. Typically, Python interacts with the Rust core through a Foreign Function Interface (FFI) or similar bridging mechanisms. This allows Python programmers to write code that can interact with the lower-level Rust code, while taking advantage of Python's ease of use and rich ecosystem.

# MeTTa Allows Python Extensions
Just like the Rust core allowed for Python extensions, the MeTTa code also permits Python and Rust developers (thru python right now) to extend or customize parts of MeTTa. This maintains the system?s extensibility and allows users who are more comfortable with Python to continue working with the system effectively.

*/

  (use-module (library filesex))

  (multifile (/ is-python-space 1))
  (dynamic (/ is-python-space 1))
  (volatile (/ is-python-space 1))


  (= 
    (is-rust-space $GSpace) 
    (is-python-space $GSpace))


  (= 
    (is-not-prolog-space $GSpace) 
    (, 
      (is-rust-space $GSpace) 
      (set-det)))
  (= 
    (is-not-prolog-space $GSpace) 
    (, 
      (not (is-asserted-space $GSpace)) 
      (not (is-nb-space $GSpace)) 
      (set-det)))


  (= 
    (with-safe-argv $Goal) 
    (, 
      (current-prolog-flag argv $Was) 
      (setup-call-cleanup 
        (set-prolog-flag argv Nil) 
        (must-det-llp $Goal) 
        (set-prolog-flag argv $Was))))


  (= 
    (ensure-space-py $Space $GSpace) 
    (, 
      (py-is-object $Space) 
      (set-det) 
      (= $GSpace $Space)))
  (= 
    (ensure-space-py $Space $GSpace) 
    (, 
      (var $Space) 
      (ensure-primary-metta-space $GSpace) 
      (= $Space $GSpace)))
  (= 
    (ensure-space-py metta-self $GSpace) 
    (, 
      (ensure-primary-metta-space $GSpace) 
      (set-det)))


  (dynamic (/ is-metta 1))
  (volatile (/ is-metta 1))

  (= 
    (ensure-rust-metta $MeTTa) 
    (, 
      (is-metta $MeTTa) 
      (set-det)))
  (= 
    (ensure-rust-metta $MeTTa) 
    (, 
      (with-safe-argv (py-call (with_self  (hyperon) (MeTTa)) $MeTTa)) 
      (asserta (is-metta $MeTTa))))

  (= 
    (ensure-rust-metta) 
    (ensure-rust-metta $_))


  (dynamic (/ is-metta-learner 1))
  (volatile (/ is-metta-learner 1))

  (= 
    (ensure-metta-learner $Metta_Learner) 
    (, 
      (is-metta-learner $Metta_Learner) 
      (set-det)))
  (= 
    (ensure-metta-learner $Metta_Learner) 
    (, 
      (with-safe-argv (, (want-py-lib-dir) (py-call (with_self  (metta-vspace) (with_self  (metta-learner) (MettaLearner))) $Metta_Learner))) 
      (fbug (is-metta-learner $Metta_Learner)) 
      (asserta (is-metta-learner $Metta_Learner))))



  (multifile (/ space-type-method 3))
  (dynamic (/ space-type-method 3))

  (= 
    (space_type_method  is_not_prolog_space new_space new_rust_space) True)
  (= 
    (space_type_method  is_not_prolog_space add_atom add_to_space) True)
  (= 
    (space_type_method  is_not_prolog_space remove_atom remove_from_space) True)
  (= 
    (space_type_method  is_not_prolog_space replace_atom replace_in_space) True)
  (= 
    (space_type_method  is_not_prolog_space atom_count atom_count_from_space) True)
  (= 
    (space_type_method  is_not_prolog_space get_atoms query_from_space) True)
  (= 
    (space_type_method  is_not_prolog_space atom_iter atoms_iter_from_space) True)
  (= 
    (space_type_method  is_not_prolog_space query query_from_space) True)


  (dynamic (/ is-primary-metta-space 1))
  (volatile (/ is-primary-metta-space 1))
; Initialize a new hyperon.base.GroundingSpace and get a reference

  (= 
    (ensure-primary-metta-space $GSpace) 
    (, 
      (is-primary-metta-space $GSpace) 
      (set-det)))
  (= 
    (ensure-primary-metta-space $GSpace) 
    (, 
      (ensure-rust-metta $MeTTa) 
      (with-safe-argv (py-call (with_self  $MeTTa (space)) $GSpace)) 
      (asserta (is-primary-metta-space $GSpace))))
  (= 
    (ensure-primary-metta-space $GSpace) 
    (new-rust-space $GSpace))
  (= 
    (ensure-primary-metta-space) 
    (ensure-primary-metta-space $_))


  (if (not (current-predicate (/ new-rust-space 1))))
; Initialize a new hyperon.base.GroundingSpace and get a reference

  (= 
    (new-rust-space $GSpace) 
    (, 
      (with-safe-argv (py-call (with_self  (hyperon) (with_self  (base) (GroundingSpace))) $GSpace)) 
      (asserta (is-python-space $GSpace))))

  (endif)

  (if (not (current-predicate (/ query-from-space 3))))
; Query from hyperon.base.GroundingSpace

  (= 
    (query-from-space $Space $QueryAtom $Result) 
    (, 
      (ensure-space $Space $GSpace) 
      (py-call 
        (with_self  $GSpace 
          (query $QueryAtom)) $Result)))


; Replace an atom in hyperon.base.GroundingSpace

  (= 
    (replace-in-space $Space $FromAtom $ToAtom) 
    (, 
      (ensure-space $Space $GSpace) 
      (py-call 
        (with_self  $GSpace 
          (replace $FromAtom $ToAtom)) $_)))

; Get the atom count from hyperon.base.GroundingSpace

  (= 
    (atom-count-from-space $Space $Count) 
    (, 
      (ensure-space $Space $GSpace) 
      (py-call 
        (with_self  $GSpace 
          (atom_count)) $Count)))

; Get the atoms from hyperon.base.GroundingSpace

  (= 
    (atoms-from-space $Space $Atoms) 
    (, 
      (ensure-space $Space $GSpace) 
      (py-call 
        (with_self  $GSpace 
          (get_atoms)) $Atoms)))


  (= 
    (atom-from-space $Space $Sym) 
    (, 
      (atoms-iter-from-space $Space $Atoms) 
      (elements $Atoms $Sym)))

; Get the atom iterator from hyperon.base.GroundingSpace

  (= 
    (atoms-iter-from-space $Space $Atoms) 
    (, 
      (ensure-space $Space $GSpace) 
      (with-safe-argv (py-call (with_self  (metta-vspace) (with_self  (metta-learner) (get-atoms-iter-from-space $GSpace))) $Atoms))));py_call(GSpace:'atoms_iter'(), Atoms).


  (endif)


  (= 
    (py-to-pl $I $O) 
    (py-to-pl $_ $I $O))
  (= 
    (py-to-pl $VL $I $O) 
    (, 
      (ignore (= $VL (:: vars))) 
      (py-to-pl $VL Nil Nil $_ $I $O) 
      (set-det)))

  (= 
    (is-var-or-nil $I) 
    (, 
      (var $I) 
      (set-det)))
  (= 
    (is_var_or_nil  ()) True)
;py_to_pl(VL,Par,_Cir,_,L,_):- fbug(py_to_pl(VL,Par,L)),fail.

  (= 
    (py-to-pl $VL $Par $Cir $Cir $L $E) 
    (, 
      (var $L) 
      (set-det) 
      (= $E $L)))
  (= 
    (py-to-pl $VL $Par $Cir $Cir $L $E) 
    (, 
      (== $L Nil) 
      (set-det) 
      (= $E $L)))
  (= 
    (py-to-pl $VL $Par $Cir $Cir $L $E) 
    (, 
      (member 
        (- $N $NE) $Cir) 
      (== $N $L) 
      (set-det) 
      (or 
        (= $E $L) 
        (= $NE $E)) 
      (set-det)))
  (= 
    (py-to-pl $VL $Par $Cir $Cir 
      (with_self  $LORV 
        (with_self  $B $C)) $LORV) 
    (, 
      (is-var-or-nil $LORV) 
      (set-det)))
  (= 
    (py-to-pl $VL $Par $Cir $CirO 
      (with_self  
        (Cons  $H $T) 
        (with_self  $B $C)) 
      (Cons  $HH $TT)) 
    (, 
      (py-to-pl $VL $Par $Cir $CirM 
        (with_self  $H 
          (with_self  $B $C)) $HH) 
      (py-to-pl $VL $Par $CirM $CirO 
        (with_self  $T 
          (with_self  $B $C)) $TT)))
  (= 
    (py-to-pl $VL $Par $Cir $Cir 
      (with_self  $LORV $B) $LORV) 
    (, 
      (is-var-or-nil $LORV) 
      (set-det)))
  (= 
    (py-to-pl $VL $Par $Cir $CirO 
      (with_self  
        (Cons  $H $T) $B) 
      (Cons  $HH $TT)) 
    (, 
      (py-to-pl $VL $Par $Cir $CirM 
        (with_self  $H $B) $HH) 
      (py-to-pl $VL $Par $CirM $CirO 
        (with_self  $T $B) $TT)))
  (= 
    (py-to-pl $VL $Par $Cir $CirO 
      (with_self  $A 
        (with_self  $B $C)) $AB) 
    (, 
      (py-is-object $A) 
      (callable $B) 
      (py-call 
        (with_self  $A $B) $R) 
      (py-to-pl $VL $Par $Cir $CirO 
        (with_self  $R $C) $AB)))
  (= 
    (py-to-pl $VL $Par $Cir $CirO 
      (with_self  $A $B) $AB) 
    (, 
      (py-is-object $A) 
      (callable $B) 
      (py-call 
        (with_self  $A $B) $R) 
      (py-to-pl $VL $Par $Cir $CirO $R $AB)))
  (= 
    (py-to-pl $VL $Par $Cir $CirO 
      (with_self  $A $B) 
      (with_self  $AA $BB)) 
    (, 
      (set-det) 
      (py-to-pl $VL $Par $Cir $CirM $A $AA) 
      (py-to-pl $VL $Par $CirM $CirO $B $BB)))
  (= 
    (py-to-pl $VL $Par $Cir $CirO 
      (- $A $B) 
      (- $AA $BB)) 
    (, 
      (set-det) 
      (py-to-pl $VL $Par $Cir $CirM $A $AA) 
      (py-to-pl $VL $Par $CirM $CirO $B $BB)))
  (= 
    (py-to-pl $VL $Par $Cir $Cir $L $E) 
    (, 
      (atom $L) 
      (set-det) 
      (= $E $L)))
  (= 
    (py-to-pl $VL $Par $Cir $CirO 
      (Cons  $H $T) 
      (Cons  $HH $TT)) 
    (, 
      (set-det) 
      (py-to-pl $VL $Par $Cir $CirM $H $HH) 
      (py-to-pl $VL $Par $CirM $CirO $T $TT)))
  (= 
    (py-to-pl $VL $Par $Cir $CirO $O $E) 
    (, 
      (py-is-object $O) 
      (py-class $O $Cl) 
      (set-det) 
      (pyo-to-pl $VL $Par 
        (Cons  
          (= $O $E) $Cir) $CirO $Cl $O $E)))
  (= 
    (py-to-pl $VL $Par $Cir $CirO $L $E) 
    (, 
      (is-dict $L $F) 
      (set-det) 
      (dict-pair $L $F $NV) 
      (set-det) 
      (py-to-pl $VL $Par $Cir $CirO $NV $NVL) 
      (dict-pair $E $F $NVL)))
  (= 
    (py-to-pl $VL $Par $Cir $Cir $L $E) 
    (, 
      (not (callable $L)) 
      (set-det) 
      (= $E $L)))
;py_to_pl(VL,Par,Cir,CirO,A:B:C,AB):-  py_is_object(A),callable(B),py_call(A:B,R),!, py_to_pl(VL,Par,[A:B-AB|Cir],CirO,R:C,AB).
;py_to_pl(VL,Par,Cir,CirO,A:B,AB):-  py_is_object(A),callable(B),py_call(A:B,R),!, py_to_pl(VL,Par,[A:B-AB|Cir],CirO,R,AB).
  (= 
    (py-to-pl $VL $Par $Cir $CirO $A $AA) 
    (, 
      (compound $A) 
      (set-det) 
      (compound-name-arguments $A $F $L) 
      (py-to-pl $VL $Par $Cir $CirO $L $LL) 
      (compound-name-arguments $AA $F $LL)))
  (= 
    (py_to_pl  $VL $Par $Cir $Cir $E $E) True)

  (= 
    (extend-container $Container $Element) 
    (, 
      (arg 2 $Container $List) 
      (nb-setarg 2 $Container 
        (Cons  $Element $List))))/*
varname_to_real_var(RL,E):- upcase_atom(RL,R),varname_to_real_var0(R,E).
varname_to_real_var0(R,E):- nb_current('cvariable_names',VL),!,varname_to_real_var0(R,VL,E).
varname_to_real_var0(R,E):- nb_setval('cvariable_names',[R=v(_)]),!,varname_to_real_var0(R,E).
varname_to_real_var0(R,[],E):- nb_setval('cvariable_names',[R=v(_)]),!,varname_to_real_var0(R,E).
varname_to_real_var0(R,VL,E):- member(N=V,VL), N==R,!,arg(1,V,E).
varname_to_real_var0(R,VL,E):- extend_container(VL,R=v(_)),varname_to_real_var0(R,E).*/
; Predicate to extend the list inside the container



  (= 
    (rinto-varname $R $RN) 
    (, 
      (atom-number $R $N) 
      (atom-concat Num $N $RN)))
  (= 
    (rinto-varname $R $RN) 
    (upcase-atom $R $RN))

  (= 
    (real-VL-var $RL $VL $E) 
    (, 
      (nonvar $RL) 
      (set-det) 
      (rinto-varname $RL $R) 
      (set-det) 
      (real-VL-var0 $R $VL $E)))
  (= 
    (real-VL-var $RL $VL $E) 
    (, 
      (member 
        (= $N $V) $VL) 
      (== $V $E) 
      (set-det) 
      (= $RL $N)))
  (= 
    (real-VL-var $RL $VL $E) 
    (, 
      (compound $E) 
      (= $E $RL) 
      (ignore (real-VL-var0 $RL $VL $E)) 
      (set-det)))
  (= 
    (real-VL-var $RL $VL $E) 
    (, 
      (format 
        (atom $RL) ~p 
        (:: $E)) 
      (member 
        (= $N $V) $VL) 
      (== $N $RL) 
      (set-det) 
      (= $V $E)))
  (= 
    (real-VL-var $RL $VL $E) 
    (, 
      (format 
        (atom $RL) ~p 
        (:: $E)) 
      (real-VL-var0 $RL $VL $E)))

  (= 
    (real-VL-var0 $R $VL $E) 
    (, 
      (member 
        (= $N $V) $VL) 
      (== $N $R) 
      (set-det) 
      (= $V $E)))
  (= 
    (real-VL-var0 $R $VL $E) 
    (, 
      (extend-container $VL 
        (= $R $E)) 
      (set-det))) ; ,E='$VAR'(R).


  (= 
    (pyo-to-pl $VL $Par $Cir $Cir $Cl $O $E) 
    (, 
      (== $Cl VariableAtom) 
      (set-det) 
      (py-call 
        (with_self  $O 
          (get_name)) $R) 
      (real-VL-var $R $VL $E) 
      (set-det)))
  (= 
    (pyo-to-pl $VL $Par $Cir $CirO $Cl $O $E) 
    (, 
      (class-to-pl1 $Par $Cl $M) 
      (py-member-values $O $M $R) 
      (set-det) 
      (py-to-pl $VL 
        (Cons  $Cl $Par) $Cir $CirO $R $E)))
  (= 
    (pyo-to-pl $VL $Par $Cir $CirO $Cl $O $E) 
    (, 
      (class-to-pl $Par $Cl $M) 
      (py-member-values $O $M $R) 
      (set-det) 
      (py-to-pl $VL 
        (Cons  $Cl $Par) $Cir $CirO $R $E))); fbug(class_to_pl(Par,Cl,M)),

  (= 
    (pyo-to-pl $VL $Par $Cir $CirO $Cl $O $E) 
    (, 
      (catch 
        (py-obj-dir $O $L) $_ fail) 
      (fbug (py-obj-dir $O $L)) 
      (py-decomp $M) 
      (meets-dir $L $M) 
      (fbug (py-decomp $M)) 
      (py-member-values $O $M $R) 
      (member 
        (- $N $_) $Cir) 
      (\== $R $N) 
      (set-det) 
      (py-to-pl $VL 
        (Cons  $Cl $Par) $Cir $CirO $R $E) 
      (set-det)))


  (= 
    (pl-to-py $Var $Py) 
    (pl-to-py $VL $Var $Py))
  (= 
    (pl-to-py $VL $Var $Py) 
    (, 
      (var $VL) 
      (set-det) 
      (ignore (= $VL (:: vars))) 
      (pl-to-py $VL $Var $Py)))
  (= 
    (pl-to-py $VL $Sym $Py) 
    (, 
      (is-list $Sym) 
      (set-det) 
      (maplist pl-to-py $Sym $PyL) 
      (py-call 
        (with_self  
          (metta-vspace) 
          (with_self  
            (metta-learner) 
            (MkExpr $PyL))) $Py) 
      (set-det)))
  (= 
    (pl-to-py $VL $Var $Py) 
    (, 
      (var $Var) 
      (set-det) 
      (real-VL-var $Sym $VL $Var) 
      (py-call 
        (with_self  
          (hyperon.atoms) 
          (V $Sym)) $Py) 
      (set-det)))
  (= 
    (pl-to-py $VL $Sym $Py) 
    (, 
      (set-det) 
      (real-VL-var $Sym $VL $_) 
      (py-call 
        (with_self  
          (hyperon.atoms) 
          (V $Sym)) $Py) 
      (set-det)))
  (= 
    (pl-to-py $VL $DSym $Py) 
    (, 
      (atom $DSym) 
      (atom-concat $ $VName $DSym) 
      (rinto-varname $VName $Sym) 
      (set-det) 
      (pl-to-py $VL $Sym $Py)))
  (= 
    (pl-to-py $VL $Sym $Py) 
    (, 
      (atom $Sym) 
      (set-det) 
      (py-call 
        (with_self  
          (hyperon.atoms) 
          (S $Sym)) $Py) 
      (set-det)))
  (= 
    (pl-to-py $VL $Sym $Py) 
    (, 
      (string $Sym) 
      (set-det) 
      (py-call 
        (with_self  
          (hyperon.atoms) 
          (S $Sym)) $Py) 
      (set-det)))
;pl_to_py(VL,Sym,Py):- is_list(Sym), maplist(pl_to_py,Sym,PyL), py_call('hyperon.atoms':'E'(PyL),Py),!.
  (= 
    (pl-to-py $VL $Sym $Py) 
    (, 
      (py-is-object $Sym) 
      (py-call 
        (with_self  
          (hyperon.atoms) 
          (ValueAtom $Sym)) $Py) 
      (set-det)))
  (= 
    (pl-to-py $VL $Sym $Py) 
    (, 
      (py-call 
        (with_self  
          (hyperon.atoms) 
          (ValueAtom $Sym)) $Py) 
      (set-det)))

;elements(Atoms,E):- is_list(Atoms),!,

  (= 
    (meets-dir $L $M) 
    (, 
      (atom $M) 
      (set-det) 
      (member $M $L) 
      (set-det)))
  (= 
    (meets-dir $L $M) 
    (, 
      (is-list $M) 
      (set-det) 
      (maplist 
        (meets-dir $L) $M)))
  (= 
    (meets-dir $L $M) 
    (, 
      (compound-name-arity $M $N 0) 
      (set-det) 
      (member $N $L) 
      (set-det)))
  (= 
    (meets-dir $L $M) 
    (, 
      (compound $M) 
      (set-det) 
      (compound-name-arguments $M $F 
        (Cons  $A $AL)) 
      (set-det) 
      (maplist 
        (meets-dir $L) 
        (Cons  $F 
          (Cons  $A $AL)))))


  (= 
    (py-member-values $O $C $R) 
    (, 
      (is-list $O) 
      (set-det) 
      (maplist py-member-values $O $C $R)))
  (= 
    (py-member-values $O $C $R) 
    (, 
      (is-list $C) 
      (set-det) 
      (maplist 
        (py-member-values $O) $C $R)))
;py_member_values(O,C,R):- atom(C),!,compound_name_arity(CC,C,0),!,py_call(O:CC,R).
  (= 
    (py-member-values $O 
      (f $F $AL) $R) 
    (, 
      (set-det) 
      (py-member-values $O 
        (Cons  $F $AL) 
        (Cons  $RF $RAL)) 
      (compound-name-arguments $R $RF $RAL)))
  (= 
    (py-member-values $O $C $R) 
    (py-call 
      (with_self  $O $C) $R 
      (:: 
        (py-string-as atom) 
        (py-object False))))


  (= 
    (py-to-str $PyObj $Str) 
    (with-output-to 
      (string $Str) 
      (py-pp $PyObj 
        (:: (nl False)))))

 
  (= 
    (tafs) 
    (, 
      (atoms-from-space $Space $_) 
      (py-to-pl $VL $Space $AA) 
      (print-tree (aa $Pl aa)) 
      (pl-to-py $VL $AA $Py) 
      (print-tree (py $Pl py)) 
      (pl-to-py $VL $Py $Pl) 
      (print-tree (pl $Pl pl)) 
      (atoms-from-space $Space 
        (:: $A)) 
      (py-to-pl $VL $A $AA) 
      (atoms-from-space $Space 
        (:: $A)) 
      (py-obj-dir $A $D) 
      (writeq $D) 
      (set-det) 
      (py-to-pl $VL 
        (with_self  $D 
          (get_object)) $AA) 
      (writeq $AA) 
      (set-det) 
      (fail)))


  (= 
    (py-class $A $AA) 
    (, 
      (py-call 
        (with_self  $A 
          (--class--)) $C) 
      (py-call 
        (with_self  $C 
          (--name--)) $AA 
        (:: (py-string-as atom))) 
      (set-det)))

  (= 
    (py-decomp $M $C) 
    (, 
      (py-decomp $M) 
      (compound-name-arity $C $M 0)))



  (= 
    (class_to_pl1  $Par GroundingSpaceRef 
      (get_atoms)) True)
  (= 
    (class_to_pl1  $Par ExpressionAtom 
      (get_children)) True)
  (= 
    (class_to_pl1  $Par SpaceRef 
      (get_atoms)) True)
  (= 
    (class_to_pl1  $Par VariableAtom 
      (__repr__)) True)
  (= 
    (class_to_pl1  $Par SymbolAtom 
      (get_name)) True)
  (= 
    (class_to_pl1  $Par bool 
      (__repr__)) True)

  (= 
    (class_to_pl  $Par ValueAtom 
      (__repr__)) True)
  (= 
    (class_to_pl  $Par ValueObject value) True)
  (= 
    (class-to-pl $Par GroundedAtom 
      (__repr__)) 
    (, 
      (length $Par $Len) 
      (>= $Len 5) 
      (set-det)))
  (= 
    (class-to-pl $Par $_ 
      (__str__)) 
    (, 
      (length $Par $Len) 
      (> $Len 15) 
      (set-det)))
  (= 
    (class_to_pl  $Par GroundedAtom 
      (get_object)) True)


  (= 
    (py_decomp  
      (__repr__)) True)/*


class_to_pl(Par,'bool','__repr__'()).

*/

  (= 
    (py_decomp  
      (__str__)) True)
  (= 
    (py_decomp  
      (get_atoms)) True)
  (= 
    (py_decomp  
      (get_children)) True)
  (= 
    (py_decomp  
      (get_object)) True)
  (= 
    (py_decomp  
      (get_name)) True)
  (= 
    (py_decomp  
      (value)) True)

  (= 
    (py_decomp  
      (:  __class__ __name__)) True)
;py_decomp(f(get_grounded_type(),['__str__'()])).
  (= 
    (py_decomp  
      (f  __class__ 
        ( (__str__)))) True)
;__class__
;get_type()

;atoms_from_space(Space, [Atoms]),py_pp(Atoms),py_call(Atoms:get_object(),A),atoms_from_space(A,Dir),member(E,Dir),py_obj_dir(E,C),py_call(E:get_children(),CH),py_pp(CH).


; Remove an atom from hyperon.base.GroundingSpace

  (if (not (current-predicate (/ remove-from-space 2))))

  (= 
    (remove-from-space $Space $Sym) 
    (, 
      (ensure-space $Space $GSpace) 
      (py-call 
        (with_self  $GSpace 
          (remove $Sym)) $_)))

  (endif)

; Add an atom to hyperon.base.GroundingSpace
  (if (not (current-predicate (/ add-to-space 2))))

  (= 
    (add-to-space $Space $Sym) 
    (, 
      (ensure-space $Space $GSpace) 
      (py-call 
        (with_self  $GSpace 
          (add $Sym)) $_)))

  (endif)


  (= 
    (extend-py! $Module $R) 
    (nop (notrace (extend-py $Module $R))))


  (= 
    (must-det-llp (, $A $B)) 
    (, 
      (set-det) 
      (must-det-llp $A) 
      (must-det-llp $B)))
  (= 
    (must-det-llp $B) 
    (, 
      (fbug $B) 
      (set-det) 
      (once (ignore (must-det-ll $B)))))


  (= 
    (extend-py $Module $_) 
    (, 
      (with-safe-argv (, (fbug (extend-py! $Module)) (ensure-metta-learner) (ensure-rust-metta $MeTTa) (replace-in-string (:: (= "/" ".")) $Module $ToPython) (working-directory $PWD $PWD) (py-add-lib-dir $PWD) (py-call (with_self  $MeTTa (load-py-module $ToPython)) $Result) (fbug (result (if-then $MeTTa $Result))))) 
      (set-det)));listing(ensure_rust_metta/1),
;py_module_exists(Module),



  (= 
    (ensure-metta-learner) 
    (, 
      (with-safe-argv (ensure-metta-learner $Learner)) 
      (fbug (ensure-metta-learner $Learner))))

; Example usage

  (= 
    (example-usage) 
    (, 
      (with-safe-argv (ensure-primary-metta-space $GSpace)) 
      (= $Query Nil) 
      (with-safe-argv (query-from-space $GSpace $Query $Result)) 
      (writeln $Result)));some_query(Query),


;atoms_from_space(Sym):-  atoms_iter_from_space(metta_self, Atoms),py_iter(Atoms,Sym).

  (= 
    (atom-count-from-space $Count) 
    (atom-count-from-space metta-self $Count))


;:- .
;:- ensure_rust_metta.
;:- with_safe_argv(ensure_primary_metta_space(_GSpace)).

  (= 
    (on-restore1) 
    (ensure-metta-learner))/*
Rust: The core of MeTTa is implemented in Rust, which provides performance and safety features.

Python Extensions: Python is used for extending the core functionalities. Python communicates with Rust via a Foreign Function Interface (FFI) or similar mechanisms.

MeTTa: The MeTTa code is an additional layer that allows you to extend or customize parts of MeTTa using Python and Rust. It maintains the system's extensibility.


VSpace is a space with its backend in MeTTa, it implies that you're using MeTTa's logic programming capabilities to manage and manipulate a particular domain, which in this context is referred to as a "space" (possibly akin to the GroundingSpace in Python, but implemented in MeTTa).

To integrate VSpace with the existing Python and Rust components, similar interfacing techniques could be used. You could expose MeTTa predicates as functions that can be called from Python or Rust, and likewise, call Python or Rust functions from within MeTTa.


*/
;:- ensure_loaded(metta_interp).



  (dynamic (/ want-py-lib-dir 1))
  (, 
    (prolog-load-context directory $ChildDir) 
    (file-directory-name $ChildDir $ParentDir) 
    (file-directory-name $ParentDir $GParentDir) 
    (add-atom  &self 
      (want_py_lib_dir  $GParentDir)))


  (= 
    (want-py-lib-dir) 
    (with-safe-argv (, (forall (want-py-lib-dir $GParentDir) (py-add-lib-dir $GParentDir)) (sync-python-path))))


  (= 
    (sync-python-path) 
    (, 
      (working-directory $PWD $PWD) 
      (py-add-lib-dir $PWD) 
      (ignore (, (getenv PYTHONPATH $CurrentPythonPath) (atomic-list-concat $List : $CurrentPythonPath) (list-to-set $List $Set) (py-lib-dirs $DirsA) (forall (member $E $Set) (if-t (not (member $E $DirsA)) (if-t (not (atom-length $E 0)) (py-add-lib-dir $E)))))) 
      (py-lib-dirs $DirsL) 
      (list-to-set $DirsL $Dirs) 
      (fbug (py-lib-dirs $Dirs)) 
      (atomic-list-concat $Dirs : $NewPythonPath) 
      (setenv PYTHONPATH $NewPythonPath)))


;:- initialization(on_restore1,restore).
;:- initialization(on_restore2,restore).



; py_initialize(, +Argv, +Options)

