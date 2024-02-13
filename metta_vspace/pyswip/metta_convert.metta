
  (encoding iso-latin-1)
  (flush-output)
  (setenv RUST-BACKTRACE full)
  (op 700 xfx =~)

; ===============================
;    TESTING
; ===============================
; Define 'fb', a rule that calls 'make' and writes information for each clause of 'fb0'.
; 'make' compiles the program.
; The 'forall' loop will write and call all goals of the 'fb0' clauses.



  (= 
    (fb) 
    (, 
      (make) 
      (writeln ;; ===========================================) 
      (forall 
        (, 
          (get-atoms  &self 
            (= fb0 $Goal)) 
          (write ;; ) 
          (writeq (?- $Goal)) 
          (nl) 
          (call $Goal)) 
        (writeln ;; ===========================================))))

; The 'fb0' rule showing mettalog sources with specific definitions.

  (= 
    (fb0) 
    (show-mettalog-src (= (two-pi $R) (, (pi $A) (+ $A $A $B) (is $R $B)))))
  (= 
    (fb0) 
    (show-mettalog-src factorial-tail-basic))
  (= 
    (fb0) 
    (show-mettalog-src funct))


  (= 
    (print-metta-src) 
    (show-mettalog-src))
; 'show_mettalog_src' rule compiles the program and shows mettalog sources for each source file containing 'metta'.

  (= 
    (show-mettalog-src) 
    (, 
      (make) 
      (forall 
        (, 
          (source-file $AsPred $File) 
          (symbol-contains $File metta)) 
        (show-mettalog-src $AsPred))))


; Handling different cases for 'show_mettalog_src' with different input parameters.
; These rules use nonvar, current_predicate, and other built-ins to perform various checks and actions
; based on the type and value of the input to 'show_mettalog_src'.
  (= 
    (show-mettalog-src (/ $F $A)) 
    (, 
      (nonvar $F) 
      (set-det) 
      (forall 
        (current-predicate (/ $F $A)) 
        (show-mettalog-src $F $A))))
  (= 
    (show-mettalog-src $AsPred) 
    (, 
      (functor $AsPred $F $A) 
      (not (not (current-predicate (/ $F $A)))) 
      (set-det) 
      (forall 
        (current-predicate (/ $F $A)) 
        (show-mettalog-src $F $A))))
  (= 
    (show-mettalog-src $F) 
    (, 
      (atom $F) 
      (not (not (current-predicate (/ $F $_)))) 
      (set-det) 
      (forall 
        (current-predicate (/ $F $A)) 
        (show-mettalog-src $F $A))))
  (= 
    (show-mettalog-src $C) 
    (, 
      (atom $C) 
      (not (not (, (current-predicate (/ $F $_)) (once (atom-contains $F $C))))) 
      (set-det) 
      (forall 
        (, 
          (current-predicate (/ $F $A)) 
          (once (atom-contains $F $C))) 
        (show-mettalog-src $F $A))))
  (= 
    (show-mettalog-src $C) 
    (, 
      (show-cvts $C) 
      (set-det)))

; The 'show_space_src' rules compile the program and show space sources for each space predicate.

  (= 
    (show-space-src) 
    (, 
      (make) 
      (forall 
        (space-preds $AsPred) 
        (show-space-src $AsPred))))


; Similar to the 'show_mettalog_src' rules, these rules handle different cases for 'show_space_src'
; with different input parameters and perform various checks and actions based on the type and value of the input.
  (= 
    (show-space-src (/ $F $A)) 
    (, 
      (nonvar $F) 
      (set-det) 
      (forall 
        (current-predicate (/ $F $A)) 
        (show-space-src $F $A))))
  (= 
    (show-space-src $AsPred) 
    (, 
      (functor $AsPred $F $A) 
      (not (not (current-predicate (/ $F $A)))) 
      (set-det) 
      (forall 
        (current-predicate (/ $F $A)) 
        (show-space-src $F $A))))
  (= 
    (show-space-src $F) 
    (, 
      (atom $F) 
      (not (not (current-predicate (/ $F $_)))) 
      (set-det) 
      (forall 
        (current-predicate (/ $F $A)) 
        (show-space-src $F $A))))
  (= 
    (show-space-src $C) 
    (, 
      (atom $C) 
      (not (not (, (current-predicate (/ $F $_)) (once (atom-contains $F $C))))) 
      (set-det) 
      (forall 
        (, 
          (current-predicate (/ $F $A)) 
          (once (atom-contains $F $C))) 
        (show-space-src $F $A))))
  (= 
    (show-space-src $C) 
    (, 
      (show-cvts $C) 
      (set-det)))

; 'show_cvts' rule processes a term, performing different actions based on the structure of the term.

  (= 
    (show-cvts $Term) 
    (, 
      (once (, (is-list $Term) (sexpr-s2p $Term $PF))) 
      (not (is-list $PF)) 
      (set-det) 
      (show-cvts $PF)))

; 'show_cvts' continues processing, performing conversions between predicates and functions,
; and pretty-printing original terms, function forms, and MeTTa forms.
  (= 
    (show-cvts $Term) 
    (, 
      (iz-conz $Term) 
      (set-det) 
      (ppc orig $Term) 
      (= $Term $FunctForm) 
      (functs-to-preds $FunctForm $Prolog) 
      (ppc preds $Prolog) 
      (preds-to-functs $Prolog $NFunctForm) 
      (ppc functs $NFunctForm)))
  (= 
    (show-cvts $Term) 
    (, 
      (ppc orig $Term) 
      (preds-to-functs $Term $FunctForm) 
      (ppc functs $FunctForm) 
      (functs-to-preds $FunctForm $Prolog) 
      (ppc preds $Prolog)))

; 'show_mettalog_src' for specific predicate, prints metta clauses if they exist in the source file containing 'metta'.

  (= 
    (show-mettalog-src $F $A) 
    (, 
      (functor $Head $F $A) 
      (ignore (, (predicate-property $Head (number-of-clauses $_)) (source-file $Head $File) (atom-contains $File metta) (set-det) (nl) (findall (= $Head $Body) (get-atoms  &self (= $Head $Body)) $Clauses) (print-metta-clauses $Clauses))) 
      (nl)))

; 'print_metta_clauses' rule is handling the printing of metta clauses.
; It checks the form of the input clauses and calls 'print_metta_clause' accordingly.

  (= 
    (print-metta-clauses Nil) 
    (set-det))
  (= 
    (print-metta-clauses (:: (= $Head $Body))) 
    (, 
      (set-det) 
      (print-metta-clause $Head $Body)))
  (= 
    (print-metta-clauses $Clauses) 
    (, 
      (combine-clauses $Clauses $Head $Body) 
      (set-det) 
      (print-metta-clause $Head $Body)))

  (= 
    (print-metta-clause $Head $Body) 
    (, 
      (print-metta-clause0 $Head $Body) 
      (show-cvts (= $Head $Body))))

; 'print_metta_clause0' rule prints metta clauses based on the body.
; It transforms the body to a list, if needed, and prints it in a sequential form.

  (= 
    (print-metta-clause0 $Head $Body) 
    (, 
      (== $Body True) 
      (set-det) 
      (pp-metta (:: = $Head True))))
  (= 
    (print-metta-clause0 $Head $Body) 
    (, 
      (== $Body False) 
      (set-det) 
      (pp-metta (:: = $Head False))))
  (= 
    (print-metta-clause0 $Head $Body) 
    (, 
      (conjuncts-to-list $Body $List) 
      (into-sequential $List $SP) 
      (pp-metta (:: = $Head $SP))))



; =========================================
;  STERM -> PTERM
; =========================================


  (= 
    (iz-exact-symbol $N $_) 
    (, 
      (not (atom $N)) 
      (set-det) 
      (fail)))
  (= 
    (iz-exact-symbol $N $P) 
    (, 
      (nonvar $P) 
      (set-det) 
      (iz-exact-symbol $N $PP) 
      (zalwayz (= $P $PP))))
  (= 
    (iz_exact_symbol  :- :-) True)
  (= 
    (iz_exact_symbol  ?- ?-) True)
  (= 
    (iz_exact_symbol  ?? $_) True)

;:- baseKB:ensure_loaded(logicmoo('plarkc/logicmoo_i_cyc_rewriting')).


  (= 
    (maybe-varz $S $Name $Name) 
    (, 
      (== $S ?) 
      (atom $Name) 
      (set-det)))

;; sexpr_s2p(Fn,?VAR, ?V) is det.
;
; S-expression Sterm Converted To Pterm.
;

  (= 
    (sexpr-s2p $HB $P) 
    (, 
      (fail) 
      (compound $HB) 
      (=~ $HB 
        (= $H $B)) 
      (compile-for-assert $H $B $Cl) 
      (clause-to-code $Cl $P) 
      (set-det)))
  (= 
    (sexpr-s2p $S $P) 
    (sexpr-s2p progn 1 $S $P))



  (= 
    (clause-to-code $P $P) 
    (, 
      (is-ftVar $P) 
      (set-det)))
;clause_to_code(P:-True,P):- True == true,!.
  (= 
    (clause-to-code 
      (= $H $B) $P) 
    (, 
      (== $B True) 
      (set-det) 
      (combine-code $B $H $P)))
  (= 
    (clause_to_code  $P $P) True)


  (= 
    (sexpr-s2p $Fn $Nth $VAR $VAR) 
    (, 
      (is-ftVar $VAR) 
      (set-det)))
  (= 
    (sexpr-s2p $Fn $Nth $S $P) 
    (, 
      (iz-exact-symbol $S $P) 
      (set-det)))
  (= 
    (sexpr-s2p $Fn $Nth 
      (# $S) $P) 
    (, 
      (iz-exact-symbol $S $P) 
      (set-det)))
  (= 
    (sexpr-s2p $Fn $Nth $VAR $Name) 
    (, 
      (atom $VAR) 
      (svar $VAR $Name) 
      (set-det)))
  (= 
    (sexpr-s2p $Fn $Nth $S $P) 
    (, 
      (== $S Nil) 
      (iz-fun-argz $Fn $Nth) 
      (set-det) 
      (= $P $S)))

  (= 
    (sexpr-s2p $Fn $Nth $S $P) 
    (, 
      (expects-type $Fn $Nth $Type) 
      (will-become-type $Type $S $P) 
      (set-det)))

  (= 
    (sexpr-s2p $Fn $Nth 
      (Cons  $F $SList) $P) 
    (, 
      (is-list $SList) 
      (length $SList $Len) 
      (is-syspred $F $Len $Pred) 
      (sexpr-s2p-arglist $F 1 $SList $PList) 
      (set-det) 
      (=.. $P 
        (Cons  $Pred $PList))))

  (style-check (- singleton))


  (= 
    (sexpr-s2p $Fn $Nth 
      (Cons  $S $SList) 
      (Cons  $P $PList)) 
    (, 
      (iz-fun-argz $Fn $Nth) 
      (set-det) 
      (sexpr-s2p $S $P) 
      (sexpr-s2p $Fn $Nth $SList $PList)))
  (= 
    (sexpr-s2p $Fn $Nth 
      (Cons  $S $SList) 
      (Cons  $P $PList)) 
    (, 
      (or 
        (not (atom $S)) 
        (not (is-list $SList))) 
      (set-det) 
      (sexpr-s2p 
        (list $Fn) $Nth $S $P) 
      (sexpr-s2p 
        (list $Fn) $Nth $SList $PList)))
  (= 
    (sexpr-s2p $Fn $Nth 
      (:: $S $STERM0) $PTERM) 
    (, 
      (iz-quoter $S) 
      (sexpr-s2p-pre-list $S 0 $STERM0 $STERM) 
      (set-det) 
      (=.. $PTERM 
        (:: $S $STERM)) 
      (set-det)))
  (= 
    (sexpr-s2p $Fn $Nth 
      (Cons  $S $SList) $P) 
    (, 
      (atom $S) 
      (== $SList Nil) 
      (compound-name-arity $P $S 0)))
; sexpr_s2p(Fn,Nth,List,PTERM):- append(Left,[S,Name|TERM],List),maybe_varz(S,Name,Var),!,append(Left,[Var|TERM],NewList), sexpr_s2p(Fn,Nth,NewList,PTERM).
; sexpr_s2p(Fn,Nth,[S|TERM],dot_holds(PTERM)):- \+ (is_list(TERM)),sexpr_s2p_arglist(Fn,Nth,[S|TERM],PTERM),!.
;sexpr_s2p(Fn,Nth,[S|TERM],PTERM):- \+ atom(S),sexpr_s2p_arglist(Fn,Nth,[S|TERM],PTERM),!.
  (= 
    (sexpr-s2p $Fn $Nth 
      (Cons  $S $STERM0) $PTERM) 
    (, 
      (sexpr-s2p-pre-list $Fn $Nth $STERM0 $STERM) 
      (sexpr-s2p-arglist $S 1 $STERM $PLIST) 
      (z-univ $Fn $Nth $PTERM 
        (Cons  $S $PLIST)) 
      (set-det)))/*
sexpr_s2p(Fn,Nth,[S,Vars|TERM],PTERM):- nonvar(S),
   call_if_defined(common_logic_snark:iz_quantifier(S)),
   zalwayz((sexpr_s2p_arglist(Fn,Nth,TERM,PLIST),
   PTERM =~ [S,Vars|PLIST])),!.
*/
; sexpr_s2p(progn,_,[S|TERM],PTERM):- S==AND,!,zalwayz((maplist(sexpr_s2p,TERM,PLIST),list_to_conjuncts(',',PLIST,PTERM))).
;sexpr_s2p(Fn,Nth,[S|TERM],PTERM):- (number(S);  (atom(S),fail,atom_concat_or_rtrace(_,'Fn',S))),sexpr_s2p_arglist(Fn,Nth,[S|TERM],PTERM),!.
;sexpr_s2p(Fn,Nth,[S],O):- is_ftVar(S),sexpr_s2p(Fn,Nth,S,Y),!,z_univ(Fn,Nth,O,[Y]),!.
;sexpr_s2p(Fn,Nth,[S],O):- nonvar(S),sexpr_s2p(Fn,Nth,S,Y),!,z_univ(Fn,Nth,O,[Y]),!.
;sexpr_s2p(Fn,Nth,[S|TERM],PTERM):- S==and,!,zalwayz((maplist(sexpr_s2p,TERM,PLIST),list_to_conjuncts(',',PLIST,PTERM))).
; sexpr_s2p(Fn,Nth,[S|TERM],PTERM):- iz_va_relation(S),!,zalwayz((maplist(sexpr_s2p,TERM,PLIST),list_to_conjuncts(S,PLIST,PTERM))).
;sexpr_s2p(Fn,Nth,[S|TERM],PTERM):- iz_relation_sexpr(S),zalwayz((sexpr_s2p_arglist(Fn,Nth,TERM,PLIST),PTERM =~ [S|PLIST])),!.
;sexpr_s2p(Fn,Nth,STERM,PTERM):- STERM =~ [S|TERM],sexpr_s2p_arglist(Fn,Nth,TERM,PLIST),z_univ(Fn,Nth,PTERM,[S|PLIST]),!.

  (= 
    (sexpr_s2p  $Fn $Nth $VAR $VAR) True)



  (= 
    (expects-type $Fn $Nth $Type) 
    (, 
      (get-operator-typedef $Self $Fn $Params $RetType) 
      (nth0 $Nth 
        (Cons  $RetType $Params) $Type) 
      (nonvar $Type)))


  (= 
    (will-become-type $Type $S $P) 
    (, 
      (try-adjust-arg-types = $RetType 88 $Self 
        (:: $Type) 
        (:: $S) 
        (:: $PS)) 
      (= $PS $P) 
      (set-det)))
  (= 
    (will-become-type $Type $S $P) 
    (, 
      (is-ftVar $S) 
      (set-det) 
      (= $P $S)))
  (= 
    (will-become-type $Type $S $P) 
    (, 
      (get-type $S $T) 
      (set-det) 
      (if-then-else 
        (is-subtype $T $Type) 
        (= $S $P) 
        (= $P 
          (coerce $Type $S)))))
  (= 
    (will-become-type $Type $S $P) 
    (, 
      (set-det) 
      (= $S $P)))


  (= 
    (is-subtype $T $TT) 
    (, 
      (=@= $T $TT) 
      (set-det) 
      (= $T $TT)))
  (= 
    (is-subtype $T $TT) 
    (, 
      (= $T $TT) 
      (set-det)))


  (= 
    (iz-quoter #BQ) 
    (iz-common-lisp))
  (= 
    (iz-quoter #COMMA) 
    (iz-common-lisp))
  (= 
    (iz_quoter  quote) True)
  (= 
    (iz_quoter  superpose) True)


  (= 
    (iz_fun_argz  
      (list  $_) $_) True)
  (= 
    (iz_fun_argz  defmacro 2) True)
  (= 
    (iz_fun_argz  defun 2) True)
  (= 
    (iz_fun_argz  let 1) True)
  (= 
    (iz_fun_argz  let* 1) True)
  (= 
    (iz_fun_argz  member 2) True)
;iz_fun_argz('let*',2).
  (= 
    (iz-fun-argz $F 1) 
    (iz-quoter $F))


  (= 
    (z-functor $F) 
    (, 
      (not (atom $F)) 
      (set-det) 
      (fail)))
  (= 
    (z-functor $F) 
    (not (atom-concat ? $_ $F)))
  (= 
    (z-functor $F) 
    (not (atom-concat $ $_ $F)))

;z_univ(_Fn,1,S,S):-!.

  (= 
    (z-univ $Fn $_ $P 
      (Cons  $F $ARGS)) 
    (, 
      (z-functor $F) 
      (is-list $ARGS) 
      (length $ARGS $A) 
      (l-arity-l $F $A) 
      (compound-name-arguments $P $F $ARGS) 
      (set-det)))
  (= 
    (z-univ $Fn 0 $P 
      (Cons  $F $ARGS)) 
    (, 
      (z-functor $F) 
      (is-list $ARGS) 
      (compound-name-arguments $P $F $ARGS) 
      (set-det)))
  (= 
    (z-univ $Fn $Nth $P 
      (Cons  $F $ARGS)) 
    (, 
      (z-functor $F) 
      (is-list $ARGS) 
      (compound-name-arguments $P $F $ARGS) 
      (set-det)))
  (= 
    (z-univ $Fn $Nth $P $S) 
    (= $P $S))


  (= 
    (l-arity-l $F $A) 
    (clause-b (arity $F $A)))
  (= 
    (l_arity_l  function 1) True)
  (= 
    (l_arity_l  quote 1) True)
  (= 
    (l-arity-l #BQ 1) 
    (iz-common-lisp))
  (= 
    (l-arity-l $F $A) 
    (current-predicate (/ $F $A)))
  (= 
    (l_arity_l  $_ 1) True)


  (= 
    (sexpr-s2p-arglist $Fn $_ $VAR $VAR) 
    (, 
      (is-ftVar $VAR) 
      (set-det)))
  (= 
    (sexpr-s2p-arglist $Fn $Nth 
      (Cons  $S $SList) 
      (Cons  $P $PList)) 
    (, 
      (sexpr-s2p $Fn $Nth $S $P) 
      (if-then-else 
        (> $Nth 0) 
        (is $Nth2 
          (+ $Nth 1)) 
        (= $Nth2 0)) 
      (sexpr-s2p-arglist $Fn $Nth2 $SList $PList) 
      (set-det)))
  (= 
    (sexpr-s2p-arglist $Fn $Nth $S $P) 
    (, 
      (sexpr-s2p $Fn $Nth $S $P) 
      (set-det)))
  (= 
    (sexpr_s2p_arglist  $Fn $Nth $VAR $VAR) True)


  (= 
    (sexpr-s2p-pre-list $Fn $_ $STERM $STERM) 
    (, 
      (not (compound $STERM)) 
      (set-det)))
  (= 
    (sexpr-s2p-pre-list $Fn $_ $STERM $STERM) 
    (, 
      (not (is-list $STERM)) 
      (set-det)))
; sexpr_s2p_pre_list(Fn,_,[S|STERM],[S|STERM]):- STERM == [], !.
  (= 
    (sexpr-s2p-pre-list $Fn $Nth 
      (Cons  $S0 $STERM0) 
      (Cons  $S $STERM)) 
    (, 
      (if-then-else 
        (is-list $S0) 
        (sexpr-s2p $Fn $Nth $S0 $S) 
        (sexpr-s2p-pre-list $Fn $Nth $S0 $S)) 
      (sexpr-s2p-pre-list $Fn $Nth $STERM0 $STERM) 
      (set-det)))
  (= 
    (sexpr_s2p_pre_list  $Fn $_ $STERM $STERM) True)




; p2m/2 is a translation utility to convert MeTTa constructs to MeTTa constructs.
; It handles a variety of cases, including different types of compound terms,
; control structures, and predicate definitions.
; The first argument is the input in MeTTa syntax,
; and the second argument is the output converted to MeTTa syntax.



  (= 
    (p2m $I $O) 
    (p2m 
      (:: progn) $I $O))

  (= 
    (p2m $OC $NC $NC) 
    (, 
      (var $NC) 
      (set-det)))  ; If NC is a variable, do not translate.
  (= 
    (p2m $OC $NC $NC) 
    (, 
      (is-ftVar $NC) 
      (set-det)))  ; If NC is a free term variable, do not translate.
  (= 
    (p2m  $OC () Nil) True) ; empty list
  (= 
    (p2m $OC 
      (with_self  $M $I) 
      (with-self $N $O)) 
    (, 
      (p2m $OC $M $N) 
      (p2m $I $O)))
; Conversion for lists
  (= 
    (p2m $OC 
      (Cons  $H $T) 
      (Cons  :: $L)) 
    (, 
      (is-list (Cons  $H $T)) 
      (maplist 
        (p2m $OC) 
        (Cons  $H $T) $L)))
  (= 
    (p2m $OC 
      (Cons  $H $T) 
      (Cons $OH $OT)) 
    (, 
      (p2m $OC $H $OH) 
      (p2m $OC $T $OT)))
  (= 
    (p2m $OC $NC $OO) 
    (, 
      (is-list $NC) 
      (set-det) 
      (maplist 
        (p2m $OC) $NC $OO))); If NC is a list, map each element of the list from MeTTa to MeTTa

  (= 
    (p2m  $OC ! 
      (set-det)) True)  ; Translate the cut operation directly.
  (= 
    (p2m  $OC ! !) True)  ; Translate the cut operation directly.
  (= 
    (p2m  $OC false False) True)
  (= 
    (p2m  
      (Cons  progn $_) 
      (,  ! fail) 
      (empty)) True)  ; Translate MeTTa?s fail to MeTTa?s False.
; p2m(_OC,fail, 'False').  ; Translate MeTTa?s fail to MeTTa?s False.
  (= 
    (p2m  $OC true True) True)  ; Translate MeTTa?s true to MeTTa?s True.
; p2m(_OC,MeTTa, meTTa).  ; Translate the atom MeTTa to meTTa.

  (= 
    (p2m  $OC Cons Cons) True)
  (= 
    (p2m  $OC ; or) True)
;p2m(_OC,( ',' ),and).
;p2m(_OC,( '\\+' ),unless).
;p2m(_OC,( ':-' ),entailed_by).
;p2m(_OC,'=..','atom_2_list').

; Conversion for any atomic term
  (= 
    (p2m $OC $A $A) 
    (, 
      (string $A) 
      (set-det)))
  (= 
    (p2m 
      (Cons  progn $_) $A 
      (:: $H)) 
    (, 
      (atom $A) 
      (into-hyphens $A $H) 
      (set-det)))
  (= 
    (p2m $_ $A $H) 
    (, 
      (atom $A) 
      (into-hyphens $A $H) 
      (set-det)))
  (= 
    (p2m $OC $A $A) 
    (atomic $A))

  (= 
    (p2m $OC $NC $NC) 
    (, 
      (not (compound $NC)) 
      (set-det)))
  (= 
    (p2m $OC $NC 
      (:: $F)) 
    (, 
      (compound-name-arity $NC $F 0) 
      (set-det)))

; Conversion for the negation as failure
  (= 
    (p2m $OC 
      (not $A) $O) 
    (, 
      (set-det) 
      (p2m $OC 
        (not $A) $O)))

  (= 
    (p2m $OC 
      (, $G $E) $O) 
    (, 
      (conjuncts-to-list 
        (, $G $E) $List) 
      (set-det) 
      (into-sequential $List $O) 
      (set-det)))

; Conversion for arithmetic evaluation
;p2m(_OC,is(A, B), O):- !, p2m(_OC,eval(B, A), O).
;p2m(_OC,is(V,Expr),let(V,Expr,'True')).
  (= 
    (p2m $OC 
      (= $Head $Body) $O) 
    (, 
      (== $Body True) 
      (set-det) 
      (= $O 
        (= $Head True))))
  (= 
    (p2m $OC 
      (= $Head $Body) $O) 
    (, 
      (== $Body fail) 
      (set-det) 
      (= $O 
        (= $Head 
          (:: empty)))))
  (= 
    (p2m $OC 
      (= $Head $Body) $O) 
    (, 
      (p2m $Head $H) 
      (conjuncts-to-list $Body $List) 
      (into-sequential $List $SP) 
      (set-det) 
      (= $O 
        (= $H $SP))))

  (= 
    (p2m $OC 
      !$Body $O) 
    (, 
      (conjuncts-to-list $Body $List) 
      (into-sequential $List $SP) 
      (set-det) 
      (= $O 
        !$SP)))

;p2m(_OC,(Head:-Body),O):- conjuncts_to_list(Body,List),into_sequential(List,SP),!,O=(=(Head,SP)).

; Conversion for if-then-else constructs
  (= 
    (p2m $OC 
      (if-then-else $A $B $C) $O) 
    (, 
      (set-det) 
      (p2m $OC 
        (if-then-else $A $B $C) $O)))
  (= 
    (p2m $OC 
      (or $A $B) $O) 
    (, 
      (set-det) 
      (p2m $OC 
        (or $A $B) $O)))
  (= 
    (p2m $OC 
      (or 
        (each-then $A $B) $C) $O) 
    (, 
      (set-det) 
      (p2m $OC 
        (each-then-otherwise $A $B $C) $O)))
  (= 
    (p2m $OC 
      (if-then $A $B) $O) 
    (, 
      (set-det) 
      (p2m $OC 
        (if-then $A $B) $O)))
  (= 
    (p2m $OC 
      (each-then $A $B) $O) 
    (, 
      (set-det) 
      (p2m $OC 
        (each-then $A $B) $O)))
  (= 
    (p2m  $OC 
      (metta_defn  $Eq $Self $H $B) 
      (add-atom  $Self 
        ($Eq $H $B))) True)
  (= 
    (p2m  $OC metta_type add-atom) True)
  (= 
    (p2m  $OC get_metta_atom add-atom) True)
  (= 
    (p2m  $OC 
      (retractall  $X) 
      (remove-all-atoms  &self $X)) True)
  (= 
    (p2m  $OC 
      (clause  $H $B) 
      (get-atoms  &self 
        (= $H $B))) True)
  (= 
    (p2m  $OC 
      (retract  $X) 
      (remove-atom  &self $X)) True)
  (= 
    (p2m  $OC 
      (assert  $X) 
      (add-atom  &self $X)) True)
; The catch-all case for the other compound terms.
;p2m(_OC,I,O):- I=..[F|II],maplist(p2m,[F|II],OO),O=..OO.

; It will break down compound terms into their functor and arguments and apply p2m recursively
  (= 
    (p2m $OC $I $O) 
    (, 
      (compound $I) 
      (=.. $I 
        (Cons  $F $II)) 
      (maplist 
        (p2m (Cons  $F $OC)) $II $OO) 
      (into-hyphens $F $FF) 
      (= $O 
        (Cons  $FF $OO)))); univ operator to convert between a term and a list consisting of functor name and arguments
; applying p2m recursively on each argument of the compound term
 ; constructing the output term with the converted arguments


; In the context of this conversion predicate, each branch of the p2m predicate
; is handling a different type or structure of term, translating it into its
; equivalent representation in another logic programming language named MeTTa.
; The actual transformations are dependent on the correspondence between MeTTa
; constructs and MeTTa constructs, as defined by the specific implementations
; of MeTTa and MeTTa being used.

  (= 
    (prolog-to-metta $V $D) 
    (, 
      (p2m 
        (:: progn) $V $D) 
      (set-det))); Perform the translation from MeTTa to MeTTa



; Define predicates to support the transformation from MeTTa to MeTTa syntax
; (Continuing the translation from MeTTa to MeTTa syntax as per the given code)
; Handle the case where the body is a conjunction of terms

  (= 
    (into-sequential $Body $SP) 
    (, 
      (not (is-list $Body)) 
      (conjuncts-to-list $Body $List) 
      (is-list $List) 
      (into-sequential $List $SP) 
      (set-det))); Check if Body is not a list and convert conjunctions in Body to a list of conjuncts.
; Converts a list of conjunctions into a sequential representation in MeTTa

  (= 
    (into-sequential $Nothing True) 
    (, 
      (== $Nothing Nil) 
      (set-det)))
 ; If there's only one element
  (= 
    (into-sequential 
      (:: $SP) $O) 
    (prolog-to-metta $SP $O))
; Otherwise, construct sequential representation using AND.
  (= 
    (into-sequential $List 
      (Cons  $AND $SPList)) 
    (, 
      (is-compiled-and $AND) 
      (maplist prolog-to-metta $List $SPList) 
      (set-det)))



; Entry point for printing to Metta format. It clears the screen, sets the working directory,
; expands the filenames with a specific extension, and processes each file.

  (= 
    (print-to-metta) 
    (, 
      (ignore (print-to-metta (:: examples/*/*/*.pl examples/*/*/*/*.pl metta-vspace/pyswip/metta-*.pl metta-vspace/pyswip/flybase-*.pl))) 
      (set-det) 
      (writeln ';; print-to-metta. '))); cls, ; Clears the screen (assumes a custom or system-specific implementation).
; with_pwd(
;   '/opt/logicmoo_workspace/packs_sys/logicmoo_opencog/MeTTa/vspace-metta/examples/gpt2-like/language_models/',
;Filt = 'examples/gpt2-like/language_models/*.pl',
; Filt = '/opt/logicmoo_workspace/packs_sys/logicmoo_opencog/MeTTa/vspace-metta/examples/performance/nondet_unify/*.pl',
; 'examples/*/*.pl',
;'examples/*/*/*/*/*.pl',
;'examples/*/*/*/*/*/*.pl',
;'metta_vspace/extra_pytests/*.pl',
; Finds all MeTTa files in the specified directory.
;  print_to_metta(Filt),  ; Processes each found file.
; MC = '/opt/logicmoo_workspace/packs_sys/logicmoo_opencog/MeTTa/vspace-metta/metta_vspace/pyswip/metta_convert.pl',
; print_to_metta(MC), ; Processes each found file.

; Example of a no-operation (nop) call for a specific file path, indicating a placeholder or unused example.
;$nop(print_to_metta('/opt/logicmoo_workspace/packs_sys/logicmoo_opencog/MeTTa/vspace-metta/metta_vspace/pyswip/metta_convert.pl')).

; Processes a list of filenames, applying 'print_to_metta' to each.

  (= 
    (with-file-lists $P1 $FileSpec) 
    (, 
      (is-list $FileSpec) 
      (set-det) 
      (ignore (maplist (with-file-lists $P1) $FileSpec))))
  (= 
    (with-file-lists $P1 $Directory) 
    (, 
      (atomic $Directory) 
      (exists-directory $Directory) 
      (findall $File 
        (directory-source-files $Directory $File 
          (:: 
            (recursive True) 
            (if True))) $Files) 
      (set-det) 
      (ignore (maplist (with-file-lists $P1) $Files))))
  (= 
    (with-file-lists $P1 $Mask) 
    (, 
      (atom $Mask) 
      (not (exists-file $Mask)) 
      (expand-file-name $Mask $Files) 
      (\== $Files Nil) 
      (set-det) 
      (ignore (maplist (with-file-lists $P1) $Files))))
  (= 
    (with-file-lists $P1 $Filename) 
    (ignore (call $P1 $Filename)))
 


  (= 
    (print-to-metta $Filename) 
    (, 
      (ignore (print-to-metta-file $Filename)) 
      (ignore (print-to-metta-console $Filename)) 
      (set-det)))
  

; Processes a list of filenames, applying 'print_to_metta' to each.

  (= 
    (print-to-metta-console $FileSpec) 
    (with-file-lists 
      (print-to-metta-now user-output) $FileSpec))

  (= 
    (print-to-metta-file $FileSpec) 
    (with-file-lists 
      (print-to-metta-now $Create) $FileSpec))

; Processes a single filename by opening the file, translating its content, and then closing the file.

  (= 
    (print-to-metta-now $OutputIn $Filename) 
    (, 
      (atom $Filename) 
      (file-name-extension $Base $OldExt $Filename) 
      (file-name-extension $Base metta $NewFilename) 
      (format ~N~n~w~n 
        (:: (print-to-metta $Filename $NewFilename))) 
      (copy-term $OutputIn $Output) 
      (setup-call-cleanup 
        (open $Filename read $Input 
          (:: (encoding utf8))) 
        (setup-call-cleanup 
          (if-t 
            (var $Output) 
            (open $NewFilename write $Output 
              (:: (encoding utf8)))) 
          (with-output-to $Output 
            (translate-to-metta $Input)) 
          (close $Output)) 
        (close $Input)))); Verifies that the filename is an atom.
; Generate the new filename with .metta extension.
; Setup step: open both the input and output files.
; Prints the action being performed.
;Output = user_output,
; Call step: perform the translation and write to the output file.
; Cleanup step for the output file: close the output stream.
; Cleanup step for the input file: close the input stream.



  (= 
    (into-namings (= $N $V)) 
    (ignore (= $V $N)))

; Recursively translates content, stopping at the end of the file.

  (= 
    (translate-to-metta $Input) 
    (, 
      (at-end-of-stream $Input) 
      (set-det) 
      (nl))); Checks for the end of the file.


; Processes whitespace characters, maintaining their presence in the output.
  (= 
    (translate-to-metta $Input) 
    (, 
      (peek-char $Input $Char) 
      (is-reprint-char $Char) 
      (set-det) 
      (get-char $Input $_) 
      (put-char $Char) 
      (translate-to-metta $Input))); Peeks at the next character without consuming it.
; Consumes the character.
; Prints the character.


; Converts MeTTa comments to Metta-style comments, then continues processing.
  (= 
    (translate-to-metta $Input) 
    (, 
      (peek-char $Input $Char) 
      (== $Char %) 
      (get-char $Input $_) 
      (put-char or) 
      (read-line-to-string $Input $Cmt) 
      (print-metta-comments $Cmt) 
      (nl) 
      (translate-to-metta $Input))); Checks for MeTTa comment start.
; Reads the comment line.
; Converts and prints the comment in Metta style.
  ; Continues with the next line.

; Reads a clause along with its metadata, then continues translation.
  (= 
    (translate-to-metta $Input) 
    (, 
      (read-clause-with-info $Input) 
      (set-det) 
      (translate-to-metta $Input)))

; Helper predicates and processing functions follow...

; Determines if a character should be reprinted (spaces and period).

  (= 
    (is-reprint-char $Char) 
    (char-type $Char space))
  (= 
    (is-reprint-char $Char) 
    (== $Char .))

; Translates MeTTa comments to Metta comments, applying string replacements.

  (= 
    (translate-comment $Cmt $Str) 
    (replace-in-string 
      (:: 
        (= "%" ";") 
        (= "prolog" "MeTTa") 
        (= "Prolog" "MeTTa")) $Cmt $Str))

; Reads a clause while capturing various pieces of metadata.

  (= 
    (read-clause-with-info $Stream) 
    (, 
      (= $Options 
        (:: 
          (variable-names $Bindings) 
          (term-position $Pos) 
          (subterm-positions $RawLayout) 
          (syntax-errors error) 
          (comments $Comments) 
          (module trans-mod))) 
      (read-term $Stream $Term $Options) 
      (if-then-else 
        (== $Term end-of-file) True 
        (, 
          (b-setval $term-position $Pos) 
          (b-setval $variable-names $Bindings) 
          (display-term-info $Stream $Term $Bindings $Pos $RawLayout $Comments)))))

; Displays term information and processes comments.

  (= 
    (display-term-info $Stream $Term $Bindings $Pos $RawLayout $Comments) 
    (, 
      (maplist into-namings $Bindings) 
      (ignore (process-term $Term)) 
      (print-metta-comments $Comments) 
      (set-det)))



  (= 
    (print-metta-comments Nil) 
    (set-det))
  (= 
    (print-metta-comments (- $TP $Cmt)) 
    (, 
      (set-det) 
      (print-metta-comments $Cmt)))
  (= 
    (print-metta-comments (Cons  $Cmt $Cs)) 
    (, 
      (set-det) 
      (print-metta-comments $Cmt) 
      (nl) 
      (set-det) 
      (print-metta-comments $Cs)))
  (= 
    (print-metta-comments $Cmt) 
    (, 
      (translate-comment $Cmt $String) 
      (write $String)))

; Processes each term based on its type (directive or other).

  (= 
    (process-term end-of-file) 
    (set-det))
  (= 
    (process-term $Term) 
    (, 
      (is-directive $Term) 
      (ignore (maybe-call-directive $Term)) 
      (set-det) 
      (ignore (print-directive $Term))))
  (= 
    (process-term $Term) 
    (, 
      (expand-to-hb $Term $H $B) 
      (p2m 
        (= $H $B) $STerm) 
      (push-term-ctx $Term) 
      (write-pl-metta $STerm)))


  (= 
    (maybe-call-directive !(op $X $F $Y)) 
    (with_self  
      (trans-mod) 
      (op $X $F $Y)))

; Checks if a term is a directive.

  (= 
    (is_directive  
      (:-  $_)) True)


  (= 
    (push-term-ctx $X) 
    (, 
      (not (compound $X)) 
      (set-det) 
      (if-then-else 
        (nb-current term-ctx $Was) True 
        (= $Was Nil)) 
      (if-then-else 
        (=@= $Was $X) True 
        (, 
          (nb-setval term-ctx $X) 
          (nl)))))
  (= 
    (push-term-ctx (= $X $_)) 
    (, 
      (set-det) 
      (push-term-ctx $X)))
  (= 
    (push-term-ctx $X) 
    (, 
      (compound-name-arity $X $F $A) 
      (push-term-ctx $F)))
; Print a MeTTa directive in a specific format.

  (= 
    (print-directive !$Directive) 
    (, 
      (push-term-ctx exec) 
      (p2m $Directive $STerm) 
      (write-pl-metta $STerm))); pc
; p2m
 ;we


  (= 
    (write-pl-metta $STerm) 
    (not (not (write-pl-metta-0 $STerm))))
  
  (= 
    (write-pl-metta-0 $STerm) 
    (, 
      (numbervars $STerm 0 $_ 
        (:: (singletons True))) 
      (write-src $STerm)))


   
  (ensure-loaded metta-interp)
  (ensure-loaded metta-compiler)
  (ensure-loaded metta-convert)
  (ensure-loaded metta-types)
  (ensure-loaded metta-space)
  (ensure-loaded metta-testing)
  (ensure-loaded metta-utils)
  (ensure-loaded metta-printer)
  (ensure-loaded metta-eval)
  



