; ==============================
; MeTTa to MeTTa transpilation (which uses the Host SWI-MeTTa compiler)
; This MeTTa code block is mainly aimed at compiling/optimizing and transforming
; MeTTa predicates to functional equivalents and vice versa, with special attention
; to handling different logical constructs and performing conversions between
; functions and predicates.
; ==============================

; Setting the file encoding to ISO-Latin-1
  (encoding iso-latin-1)
; Flushing the current output
  (flush-output)
; Setting the Rust backtrace to Full
  (setenv RUST-BACKTRACE full)
; Loading various library files
  (ensure-loaded swi-support)
  (ensure-loaded metta-testing)
  (ensure-loaded metta-utils)
  (ensure-loaded metta-reader)
  (ensure-loaded metta-interp)
  (ensure-loaded metta-space)
; =======================================
; TODO move non flybase specific code between here and the compiler
  (ensure-loaded flybase-main)
; =======================================
;:- set_option_value(encoding,utf8).

; Meta-predicate that ensures that for every instance where G1 holds, G2 also holds.
  (meta-predicate (for-all 0 0))

  (= 
    (for-all $G1 $G2) 
    (forall $G1 $G2))


  (op 700 xfx =~)


  (= 
    (compound-non-cons $B) 
    (, 
      (compound $B) 
      (not (= $B (Cons  $_ $_)))))

  (= 
    (iz-conz $B) 
    (, 
      (compound $B) 
      (= $B 
        (Cons  $_ $_))))


  (= 
    (=~ $A $B) 
    (, 
      (compound-non-cons $B) 
      (set-det) 
      (into-list-args $B $BB) 
      (set-det) 
      (=~ $A $BB)))
  (= 
    (=~ $B $A) 
    (, 
      (compound-non-cons $B) 
      (set-det) 
      (into-list-args $B $BB) 
      (set-det) 
      (=~ $A $BB)))
  (= 
    (=~ $A $B) 
    (, 
      (iz-conz $A) 
      (iz-conz $B) 
      (set-det) 
      (= $A $B)))
  (= 
    (=~ $A $B) 
    (, 
      (var $A) 
      (iz-conz $B) 
      (set-det) 
      (= $A $B)))
  (= 
    (=~ $A $B) 
    (, 
      (iz-conz $A) 
      (var $B) 
      (set-det) 
      (= $A $B)))
  (= 
    (=~ $A $B) 
    (, 
      (compound-non-cons $A) 
      (var $B) 
      (set-det) 
      (=.. $A $B)))
  (= 
    (=~ $A $B) 
    (, 
      (compound-non-cons $B) 
      (set-det) 
      (= $A $B)))
  (= 
    (=~ $A $B) 
    (=.. $A $B))

;into_list_args(A,AA):- is_ftVar(A),AA=A.
;into_list_args(C,[C]):- \+ compound(C),!.

  (= 
    (into-list-args $C $C) 
    (, 
      (not (compound $C)) 
      (set-det)))
  (= 
    (into-list-args $A $AA) 
    (, 
      (is-ftVar $A) 
      (= $AA $A)))
  (= 
    (into-list-args 
      (Cons  $H $T) 
      (Cons  $H $T)) 
    (, 
      (not (is-list $T)) 
      (set-det)))
  (= 
    (into-list-args 
      (:: $H $List $A) $HT) 
    (, 
      (== $H u-assign) 
      (set-det) 
      (append $List 
        (:: $A) $HT) 
      (set-det)))
  (= 
    (into-list-args 
      (Cons  $H $T) 
      (Cons  $H $T)) 
    (, 
      (is-list $T) 
      (set-det)))
  (= 
    (into-list-args 
      (u-assign $List $A) 
      (Cons  $H $T)) 
    (, 
      (append $List 
        (:: $A) 
        (Cons  $H $T)) 
      (set-det)))
  (= 
    (into-list-args 
      (holds $A) $AA) 
    (, 
      (set-det) 
      (into-list-args $A $AA) 
      (set-det)))
  (= 
    (into-list-args $C $FArgs) 
    (, 
      (compound-name-arguments $C $F $Args) 
      (set-det) 
      (into-list-args 
        (Cons  $F $Args) $FArgs)))




  (= 
    (compound-name-list $AsPred $FP $PredArgs) 
    (, 
      (var $AsPred) 
      (set-det) 
      (= $AsPred 
        (Cons  $FP $PredArgs))))
  (= 
    (compound-name-list $AsPred $FP $PredArgs) 
    (, 
      (iz-conz $AsPred) 
      (set-det) 
      (= $AsPred 
        (Cons  $FP $PredArgs))))
  (= 
    (compound-name-list $AsPred $FP $PredArgs) 
    (, 
      (into-list-args $AsPred 
        (Cons  $FP $PredArgs)) 
      (set-det)))
  (= 
    (compound-name-list $AsPred $FP $PredArgs) 
    (, 
      (compound-non-cons $AsPred) 
      (set-det) 
      (compound-name-arguments $AsPred $FP $PredArgs)))
; ===============================
;       COMPILER / OPTIMIZER
; Scryer Compiler vs PySWIP ASM Compiler
;
; PySWIP is 222 times faster per join
; ===============================


; Conversion is possible between a function and a predicate of arity when the result is at the nth arg

  (dynamic (/ decl-functional-predicate-arg 3))

; Converion is possible between a  function and predicate is tricky

  (= 
    (functional_predicate_arg_tricky  is 2 1) True) ; E.g. eval(is(+(1,2)),Result) converts to is(Result,+(1,2)).
; Defining standard mappings for some common functions/predicates

  (= 
    (decl_functional_predicate_arg  append 3 3) True)
  (= 
    (decl_functional_predicate_arg  + 3 3) True)
  (= 
    (decl_functional_predicate_arg  pi 1 1) True)
  (= 
    (decl_functional_predicate_arg   1 1) True)
  (= 
    (decl_functional_predicate_arg  call 4 4) True)
  (= 
    (decl_functional_predicate_arg  eval 2 2) True)
  (= 
    (decl_functional_predicate_arg  edge 2 2) True)
  (= 
    (decl_functional_predicate_arg  == 2 2) True)
  (= 
    (decl_functional_predicate_arg  is-same 2 2) True)
  (= 
    (decl_functional_predicate_arg  assertTrue 2 2) True)
  (= 
    (decl_functional_predicate_arg  case 3 3) True)
  (= 
    (decl_functional_predicate_arg  assertFalse 2 2) True)
  (= 
    (decl_functional_predicate_arg  match 4 4) True)
  (= 
    (decl_functional_predicate_arg  TupleConcat 3 3) True)
  (= 
    (decl_functional_predicate_arg  new-space 1 1) True)

  (= 
    (decl_functional_predicate_arg  superpose 2 2) True)


  (= 
    (do-predicate-function-canonical $F $FF) 
    (, 
      (predicate-function-canonical $F $FF) 
      (set-det)))
  (= 
    (do_predicate_function_canonical  $F $F) True)

  (= 
    (predicate_function_canonical  is_Empty ) True)

; Mapping any current predicate F/A to a function, if it's not tricky

  (= 
    (functional-predicate-arg $F $A $L) 
    (decl-functional-predicate-arg $F $A $L))
  (= 
    (functional-predicate-arg $F $A $L) 
    (, 
      (if-then-else 
        (atom $F) True trace) 
      (predicate-arity $F $A) 
      (not (functional-predicate-arg-tricky $F $A $_)) 
      (= $L $A) 
      (not (decl-functional-predicate-arg $F $A $_))))
  (= 
    (functional-predicate-arg $F $A $L) 
    (functional-predicate-arg-tricky $F $A $L))


  (= 
    (predicate-arity $F $A) 
    (, 
      (metta-atom &self 
        (:: : $F 
          (Cons  -> $Args))) 
      (length $Args $A)))
  (= 
    (predicate-arity $F $A) 
    (current-predicate (/ $F $A)))
; Certain constructs should not be converted to functions.

  (= 
    (not-function $P) 
    (, 
      (atom $P) 
      (set-det) 
      (not-function $P 0)))
  (= 
    (not-function $P) 
    (, 
      (callable $P) 
      (set-det) 
      (functor $P $F $A) 
      (not-function $F $A)))
  (= 
    (not-function $F $A) 
    (, 
      (is-arity-0 $F $FF) 
      (set-det) 
      (not-function $FF $A)))
  (= 
    (not_function  ! 0) True)
  (= 
    (not_function  print 1) True)
  (= 
    (not_function  :- 2) True)
  (= 
    (not_function  , 2) True)
  (= 
    (not_function  ; 2) True)
  (= 
    (not_function  = 2) True)
  (= 
    (not_function  or 2) True)

  (= 
    (not_function  a 0) True)
  (= 
    (not_function  b 0) True)
  (= 
    (not-function $F $A) 
    (is-control-structure $F $A))
  (= 
    (not-function $A 0) 
    (, 
      (atom $A) 
      (set-det)))
  (= 
    (not_function  True 0) True)
  (= 
    (not-function $F $A) 
    (, 
      (predicate-arity $F $A) 
      (is $AA 
        (+ $A 1)) 
      (not (decl-functional-predicate-arg $F $AA $_))))


  (= 
    (needs-call-fr $P) 
    (, 
      (is-function $P $Nth) 
      (functor $P $F $A) 
      (is $AA 
        (+ $A 1)) 
      (not (current-predicate (/ $F $AA)))))


  (= 
    (is-control-structure $F $A) 
    (, 
      (atom $F) 
      (atom-concat if- $_ $F) 
      (> $A 2)))


  (= 
    (== $A $B $Res) 
    (as-tf 
      (equal-enough $A $B) $Res))

  (= 
    (or $G1 $G2) 
    (once (or $G1 $G2)))
  (= 
    (or $G1 $G2 $Res) 
    (as-tf 
      (or $G1 $G2) $Res))

; Function without arguments can be converted directly.

  (= 
    (is-arity-0 $AsFunction $F) 
    (, 
      (compound $AsFunction) 
      (compound-name-arity $AsFunction $F 0)))

; Determines whether a given term is a function and retrieves the position
; in the predicate where the function Result is stored/retrieved

  (= 
    (is-function $AsFunction $_) 
    (, 
      (is-ftVar $AsFunction) 
      (set-det) 
      (fail)))
  (= 
    (is-function $AsFunction $_) 
    (, 
      (== $AsFunction $VAR) 
      (set-det) 
      (trace) 
      (fail)))
  (= 
    (is-function $AsFunction $Nth) 
    (, 
      (is-arity-0 $AsFunction $F) 
      (not (not-function $F 0)) 
      (set-det) 
      (= $Nth 1)))
  (= 
    (is-function $AsFunction $Nth) 
    (, 
      (is-arity-0 $AsFunction $_) 
      (set-det) 
      (= $Nth 1)))
  (= 
    (is-function $AsFunction $Nth) 
    (, 
      (callable $AsFunction) 
      (functor $AsFunction $Functor $A) 
      (not (not-function $Functor $A)) 
      (is $AA 
        (+ $A 1)) 
      (functional-predicate-arg-maybe $Functor $AA $Nth)))


  (= 
    (functional-predicate-arg-maybe $F $AA $Nth) 
    (, 
      (functional-predicate-arg $F $AA $Nth) 
      (set-det)))
  (= 
    (functional-predicate-arg-maybe $F $AA $_) 
    (, 
      (is $A 
        (- $AA 1)) 
      (functional-predicate-arg $F $A $_) 
      (set-det) 
      (fail)))
  (= 
    (functional-predicate-arg-maybe $F $Nth $Nth) 
    (, 
      (asserta (decl-functional-predicate-arg $F $Nth $Nth)) 
      (set-det)))

; --------------------------------
;    FUNCTS_TO_PREDS EXPLANATION
; --------------------------------

; functs_to_preds is a predicate that converts all Term functions to their equivalent predicates.
; It takes three arguments - RetResult, which will hold the result of the function evaluation,
; Convert, which is the function that needs to be converted, and Converted, which will hold the equivalent predicate.
; Example:
;
;     ?- functs_to_preds(RetResult, is(pi+pi), Converted).
;
;     Converted =  (pi(_A),
;                   +(_A, _A, _B),
;                   _C is _B,
;                   eval(_C, RetResult)).
;


  (= 
    (functs-to-preds 
      (:: $Eq $H $B) $OO) 
    (, 
      (== $Eq =) 
      (compile-for-assert $H $B $OO) 
      (set-det)))
  (= 
    (functs-to-preds $EqHB $OO) 
    (, 
      (compile-head-for-assert $EqHB $OO) 
      (set-det)))

  (= 
    (functs-to-preds $I $OO) 
    (, 
      (sexpr-s2p $I $M) 
      (f2p $_ $_ $M $O) 
      (expand-to-hb $O $H $B) 
      (head-preconds-into-body $H $B $HH $BB) 
      (= $OO 
        (= $HH $BB))))/*trace,*/



; ?- compile_for_exec(RetResult, is(pi+pi), Converted).

  (= 
    (compile-for-exec $Res $I $BB) 
    (, 
      (= $HeadIs 
        (:: exec)) 
      (= $AsBodyFn $I) 
      (compile-for-assert $HeadIs $AsBodyFn $Converted) 
      (= $Converted 
        (= 
          !$Res $BB)) 
      (set-det) 
      (portray-clause $Converted) 
      (set-det)))


  (= 
    (compile-for-exec $Res $I $BB) 
    (, 
      (= $I $M) 
      (f2p 
        (exec) $_ 
        (= 
          (exec) $M) $O) 
      (expand-to-hb $O $H $B) 
      (head-preconds-into-body $H $B $HH $BB) 
      (ignore (= !$Res $HH)) 
      (portray-clause (= (exec2 $Res) $BB)) 
      (set-det)))

  (= 
    (compile-for-exec $Res $I $O) 
    (, 
      (= $I $M) 
      (f2p 
        (exec) $Res $M $O) 
      (portray-clause (= (exec1 $Res) $O)) 
      (set-det)))


; If Convert is of the form (AsFunction=AsBodyFn), we perform conversion to obtain the equivalent predicate.

  (= 
    (compile-head-for-assert $HeadIs 
      (= $Head $Body)) 
    (, 
      (compile-head-for-assert $HeadIs $NewHeadIs $Converted) 
      (head-preconds-into-body $NewHeadIs $Converted $Head $Body)))

  (= 
    (compile-head-for-assert $HeadIs $NewHeadIs $Converted) 
    (, 
      (as-functor-args $HeadIs $F $A $ArgsL) 
      (maplist 
        (f2p-assign $HeadIs) $NewArgs $ArgsL $CodeForValueL) 
      (as-functor-args $NewHeadIs $F $A $NewArgs) 
      (list-to-conjuncts $CodeForValueL $Converted) 
      (set-det)))/*trace,*/




  (= 
    (as-functor-args $AsPred $F $A $ArgsL) 
    (, 
      (nonvar $AsPred) 
      (set-det) 
      (into-list-args $AsPred 
        (Cons  $F $ArgsL)) 
      (length $ArgsL $A)))
  (= 
    (as-functor-args $AsPred $F $A $ArgsL) 
    (, 
      (nonvar $F) 
      (length $ArgsL $A) 
      (=~ $AsPred 
        (Cons  $F $ArgsL))))


  (= 
    (compile-for-assert $HeadIs $AsBodyFn $Converted) 
    (, 
      (or 
        (=@= $AsBodyFn $HeadIs) 
        (== $AsBodyFn Nil)) 
      (set-det) 
      (compile-head-for-assert $HeadIs $Converted)))/*trace,*/


  (= 
    (compile-for-assert $HeadIs $AsBodyFn $Converted) 
    (, 
      (is-ftVar $AsBodyFn) 
      (= $AsFunction $HeadIs) 
      (set-det) 
      (must-det-ll (, (= $Converted (= $HeadC $BodyC)) (f2p $HeadIs $HResult $AsFunction $HHead) (if-then-else (var $HResult) (, (= $Result $HResult) (= $HHead $Head)) (funct-with-result-is-nth-of-pred $HeadIs $AsFunction $Result $Nth $Head)) (= $NextBody (u-assign $AsBodyFn $Result)) (head-preconds-into-body $Head $NextBody $HeadC $BodyC) (nop (ignore (= $Result $HeadRes))))) 
      (set-det)))/*trace,*/
; Create a rule with Head as the converted AsFunction and NextBody as the converted AsBodyFn
;funct_with_result_is_nth_of_pred(HeadIs,AsFunction, Result, _Nth, Head),


  (= 
    (compile-for-assert $HeadIs $AsBodyFn $Converted) 
    (, 
      (= $AsFunction $HeadIs) 
      (must-det-ll (, (= $Converted (= $HeadC $NextBodyC)) (f2p $HeadIs $HResult $AsFunction $HHead) (if-then-else (var $HResult) (, (= $Result $HResult) (= $HHead $Head)) (funct-with-result-is-nth-of-pred $HeadIs $AsFunction $Result $Nth $Head)) (verbose-unify $Convert) (f2p $HeadIs $Result $AsBodyFn $NextBody) (head-preconds-into-body $Head $NextBody $HeadC $NextBodyC) (fbug (:: (convert $Convert) (head-preconds-into-body (= $HeadC $NextBodyC)))) (nop (ignore (= $Result $HeadRes))))) 
      (set-det))); Create a rule with Head as the converted AsFunction and NextBody as the converted AsBodyFn
;funct_with_result_is_nth_of_pred(HeadIs,AsFunction, Result, _Nth, Head),
;RetResult = Converted,
;RetResult = _,
;if_t(((Head:-NextBody)\=@=(HeadC:-NextBodyC)),fbug(was(Head:-NextBody))),


; If Convert is of the form (AsFunction=AsBodyFn), we perform conversion to obtain the equivalent predicate.
  (= 
    (compile-for-assert $HeadIs $AsBodyFn $Converted) 
    (, 
      (= $AsFunction $HeadIs) 
      (= $Converted 
        (= $HeadCC $BodyCC)) 
      (funct-with-result-is-nth-of-pred $HeadIs $AsFunction $Result $Nth $Head) 
      (as-functor-args $Head $F $A $ArgsL) 
      (maplist 
        (f2p-assign $HeadIs) $NewArgs $ArgsL $CodeForValueL) 
      (as-functor-args $HeadC $F $A $NewArgs) 
      (list-to-conjuncts $CodeForValueL $CodeForHeadArgs) 
      (f2p $HeadIs $Result $AsBodyFn $NextBody) 
      (combine-code $CodeForHeadArgs $NextBody $BodyC) 
      (set-det) 
      (head-preconds-into-body $HeadC $BodyC $HeadCC $BodyCC) 
      (set-det)))



  (= 
    (head-preconds-into-body $Head $Body $Head $Body) 
    (, 
      (not (compound $Head)) 
      (set-det)))/*
*/

  (= 
    (head-preconds-into-body 
      (, $PreHead $True) $Converted $Head $Body) 
    (, 
      (== $True True) 
      (set-det) 
      (head-preconds-into-body $PreHead $Converted $Head $Body)))
  (= 
    (head-preconds-into-body 
      (, $True $PreHead) $Converted $Head $Body) 
    (, 
      (== $True True) 
      (set-det) 
      (head-preconds-into-body $PreHead $Converted $Head $Body)))
  (= 
    (head-preconds-into-body $PreHead 
      (, $True $Converted) $Head $Body) 
    (, 
      (== $True True) 
      (set-det) 
      (head-preconds-into-body $PreHead $Converted $Head $Body)))
  (= 
    (head-preconds-into-body $PreHead 
      (, $Converted $True) $Head $Body) 
    (, 
      (== $True True) 
      (set-det) 
      (head-preconds-into-body $PreHead $Converted $Head $Body)))
  (= 
    (head-preconds-into-body 
      (, $AsPredO $Pre) $Converted $Head $Body) 
    (head-preconds-into-body $Pre 
      (, $AsPredO $Converted) $Head $Body))
  (= 
    (head-preconds-into-body $AHead $Body $Head $BodyNew) 
    (, 
      (assertable-head $AHead $Head) 
      (optimize-body $Head $Body $BodyNew)))


  (= 
    (assertable-head 
      (u-assign $FList $R) $Head) 
    (, 
      (=~ $FList 
        (Cons  $F $List)) 
      (append $List 
        (:: $R) $NewArgs) 
      (atom $F) 
      (set-det) 
      (=.. $Head 
        (Cons  $F $NewArgs))))
  (= 
    (assertable_head  $Head $Head) True)


  (= 
    (optimize-body $Head $Body $BodyNew) 
    (, 
      (var $Body) 
      (set-det) 
      (= $Body $BodyNew)))
  (= 
    (optimize-body $Head 
      (or 
        (each-then $B1 $B2) $B3) 
      (or 
        (each-then $BN1 $BN2) $BN3)) 
    (, 
      (set-det) 
      (optimize-body $Head $B1 $BN1) 
      (optimize-body $Head $B2 $BN2) 
      (optimize-body $Head $B3 $BN3)))
  (= 
    (optimize-body $Head 
      (if-then-else $B1 $B2 $B3) 
      (if-then-else $BN1 $BN2 $BN3)) 
    (, 
      (set-det) 
      (optimize-body $Head $B1 $BN1) 
      (optimize-body $Head $B2 $BN2) 
      (optimize-body $Head $B3 $BN3)))
  (= 
    (optimize-body $Head 
      (, $B1 $B2) $BN1) 
    (, 
      (== $B2 True) 
      (set-det) 
      (optimize-body $Head $B1 $BN1)))
  (= 
    (optimize-body $Head 
      (, $B2 $B1) $BN1) 
    (, 
      (== $B2 True) 
      (set-det) 
      (optimize-body $Head $B1 $BN1)))
  (= 
    (optimize-body $Head 
      (, $B1 $B2) 
      (, $BN1 $BN2)) 
    (, 
      (set-det) 
      (optimize-body $Head $B1 $BN1) 
      (optimize-body $Head $B2 $BN2)))
  (= 
    (optimize-body $Head 
      (= $B1 $B2) 
      (= $BN1 $BN2)) 
    (, 
      (set-det) 
      (optimize-body $Head $B1 $BN1) 
      (optimize-body $Head $B2 $BN2)))
  (= 
    (optimize-body $Head 
      (or $B1 $B2) 
      (or $BN1 $BN2)) 
    (, 
      (set-det) 
      (optimize-body $Head $B1 $BN1) 
      (optimize-body $Head $B2 $BN2)))
  (= 
    (optimize-body $Head $Body $BodyNew) 
    (= $Body $BodyNew))



  (= 
    (compile-test-then-else $RetResult $If $Then $Else $Converted) 
    (, 
      (f2p $HeadIs $ThenResult $Then $ThenCode) 
      (f2p $HeadIs $ElseResult $Else $ElseCode) 
      (= $Converted 
        (or 
          (each-then $If 
            (, $ThenCode 
              (= $ThenResult $RetResult))) 
          (, $ElseCode 
            (= $ElseResult $RetResult))))))


  (discontiguous (/ compile-flow-control 4))


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $_) 
    (, 
      (not (compound $Convert)) 
      (set-det) 
      (fail)))
  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $_) 
    (, 
      (compound-name-arity $Convert $_ 0) 
      (set-det) 
      (fail)))
  (= 
    (compile-flow-control $HeadIs $RetResult $Convert 
      (, $Code1 
        (= $Eval1Result $Result) $Converted)) 
    (, 
      (=~ $Convert 
        (chain $Eval1 $Result $Eval2)) 
      (set-det) 
      (f2p $HeadIs $Eval1Result $Eval1 $Code1) 
      (f2p $HeadIs $RetResult $Eval2 $Converted))); dif_functors(HeadIs,Convert),


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (if $Cond $Then $Else)) 
      (set-det) 
      (= $Test 
        (is-True $CondResult)) 
      (f2p $HeadIs $CondResult $Cond $CondCode) 
      (compile-test-then-else $RetResult 
        (, $CondCode $Test) $Then $Else $Converted))); dif_functors(HeadIs,Convert),


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (if-error $Value $Then $Else)) 
      (set-det) 
      (= $Test 
        (is-Error $ValueResult)) 
      (f2p $HeadIs $ValueResult $Value $ValueCode) 
      (compile-test-then-else $RetResult 
        (, $ValueCode $Test) $Then $Else $Converted))); dif_functors(HeadIs,Convert),


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (if-empty $Value $Then $Else)) 
      (set-det) 
      (= $Test 
        (is-Empty $ValueResult)) 
      (f2p $HeadIs $ValueResult $Value $ValueCode) 
      (compile-test-then-else $RetResult 
        (, $ValueCode $Test) $Then $Else $Converted))); dif_functors(HeadIs,Convert),


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (if-non-empty-expression $Value $Then $Else)) 
      (set-det) 
      (= $Test 
        (not (is-Empty $ValueResult))) 
      (f2p $HeadIs $ValueResult $Value $ValueCode) 
      (compile-test-then-else $RetResult 
        (, $ValueCode $Test) $Then $Else $Converted))); dif_functors(HeadIs,Convert),


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (:: if-equals $Value1 $Value2 $Then $Else)) 
      (set-det) 
      (= $Test 
        (equal-enough $ResValue1 $ResValue2)) 
      (f2p $HeadIs $ResValue1 $Value1 $CodeForValue1) 
      (f2p $HeadIs $ResValue2 $Value2 $CodeForValue2) 
      (compile-test-then-else $RetResult 
        (, $CodeForValue1 $CodeForValue2 $Test) $Then $Else $Converted))); dif_functors(HeadIs,Convert),



  (= 
    (cname-var $Sym $Src) 
    (, 
      (gensym $Sym $SrcV) 
      (= $Src $SrcV)))

  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (:: assertEqual $Value1 $Value2)) 
      (set-det) 
      (cname-var Src- $Src) 
      (cname-var FA- $ResValue1) 
      (cname-var FA- $ResValue2) 
      (cname-var FARL- $L1) 
      (cname-var FARL- $L2) 
      (f2p $HeadIs $ResValue1 $Value1 $CodeForValue1) 
      (f2p $HeadIs $ResValue2 $Value2 $CodeForValue2) 
      (= $Converted 
        (, 
          (= $Src $Convert) 
          (loonit-assert-source-tf $Src 
            (, 
              (findall $ResValue1 $CodeForValue1 $L1) 
              (findall $ResValue2 $CodeForValue2 $L2)) 
            (equal-enough $L1 $L2) $RetResult)))))
  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (:: assertEqualToResult $Value1 $Value2)) 
      (set-det) 
      (f2p $HeadIs $ResValue1 $Value1 $CodeForValue1) 
      (= $Converted 
        (loonit-assert-source-tf $Convert 
          (findall $ResValue1 $CodeForValue1 $L1) 
          (equal-enough $L1 $Value2) $RetResult))))


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (add-atom $Where $What)) 
      (set-det) 
      (= $What $WhatP) 
      (= $Converted 
        (as-tf 
          (add-atom $Where $WhatP) $RetResult))))

  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (add-atom $Where $What $RetResult)) 
      (set-det) 
      (= $What $WhatP) 
      (= $Converted 
        (as-tf 
          (add-atom $Where $WhatP) $RetResult))))


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (:: superpose $UValueL)) 
      (maybe-unlistify $UValueL $ValueL $URetResult $RetResult) 
      (maplist 
        (f2p-assign $HeadIs $URetResult) $ValueL $CodeForValueL) 
      (list-to-disjuncts $CodeForValueL $Converted) 
      (set-det)))



  (= 
    (maybe-unlistify 
      (:: $UValueL) $ValueL $RetResult 
      (:: $URetResult)) 
    (, 
      (is-list $UValueL) 
      (set-det) 
      (maybe-unlistify $UValueL $ValueL $RetResult $URetResult)))
  (= 
    (maybe_unlistify  $ValueL $ValueL $RetResult $RetResult) True)


  (= 
    (list_to_disjuncts  () false) True)
  (= 
    (list-to-disjuncts 
      (:: $A) $A) 
    (set-det))
  (= 
    (list-to-disjuncts 
      (Cons  $A $L) 
      (or $A $D)) 
    (list-to-disjuncts $L $D))



  (= 
    (f2p-assign $HeadIs $V $Value 
      (is-True $V)) 
    (== $Value True))
  (= 
    (f2p-assign $HeadIs $ValueR $Value 
      (= $ValueR $Value)) 
    (, 
      (not (compound $Value)) 
      (set-det)))
  (= 
    (f2p-assign $HeadIs $ValueR $Value 
      (= $ValueR $Value)) 
    (, 
      (is-ftVar $Value) 
      (set-det)))
  (= 
    (f2p-assign $HeadIs $ValueResult $Value $Converted) 
    (, 
      (f2p $HeadIs $ValueResultR $Value $CodeForValue) 
      (= $ValueResultRValueResult 
        (= $ValueResultR $ValueResult)) 
      (combine-code $CodeForValue $ValueResultRValueResult $Converted)));into_equals(ValueResultR,ValueResult,ValueResultRValueResult),



  (= 
    (compile-flow-control $HeadIs $RetResult $Convert 
      (, $ValueCode $Converted)) 
    (, 
      (=~ $Convert 
        (Cons  case 
          (Cons  $Value $Options))) 
      (not (is-ftVar $Value)) 
      (set-det) 
      (cname-var CASE-EVAL- $ValueResult) 
      (=~ $ConvertCases 
        (Cons  case 
          (Cons  $ValueResult $Options))) 
      (compile-flow-control $HeadIs $RetResult $ConvertCases $Converted) 
      (f2p $HeadIs $ValueResult $Value $ValueCode)))

  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (:: case $Value 
          (Cons  $Opt $Options))) 
      (nonvar $Opt) 
      (set-det) 
      (must-det-ll (, (compile-case-bodies $HeadIs $Opt (caseStruct $Value $If $RetResult $Then)) (= $Converted (if-then-else $If $Then $Else)) (=~ $ConvertCases (:: case $Value $Options)) (compile-flow-control $HeadIs $RetResult $ConvertCases $Else)))))

  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (:: case $Value Nil)) 
      (set-det) 
      (= $Converted 
        (, 
          (fail) 
          (= $RetResult Nil))) 
      (set-det)))


  (= 
    (compile-case-bodies $HeadIs 
      (:: $Match $Body) 
      (caseStruct $_ True $BodyResult $BodyCode)) 
    (, 
      (== $Match %void%) 
      (set-det) 
      (f2p $HeadIs $BodyResult $Body $BodyCode)))/*
compile_flow_control(HeadIs,RetResult,Convert, Converted) :-
  Convert =~ ['case',Value,Options],!,
   must_det_ll((
    maplist(compile_case_bodies(HeadIs),Options,Cases),
    Converted =
        (( AllCases = Cases,
           once((member(caseStruct(MatchVar,MatchCode,BodyResult,BodyCode),AllCases),
                 (MatchCode,unify_enough(Value,MatchVar)))),
           (BodyCode),
           BodyResult=RetResult)))).

compile_flow_control(HeadIs,_,Convert, Converted) :-
  Convert =~ ['case',Value,Options,RetResult],!,
   must_det_ll((
    f2p(HeadIs,ValueResult,Value,ValueCode),
    maplist(compile_case_bodies(HeadIs),Options,Cases),
    Converted =
        (( AllCases = Cases,
           call(ValueCode),
           once((member(caseStruct(MatchVar,MatchCode,BodyResult,BodyCode),AllCases),
                 both_of(ValueResult,MatchCode,unify_enough(ValueResult,MatchVar)))),
           call(BodyCode),
           BodyResult=RetResult)))).


both_of(Var,G1,G2):- nonvar(Var),!,call(G2),call(G1).
both_of(_Var,G1,G2):- call(G1),call(G2).

*/

  (= 
    (compile-case-bodies $HeadIs 
      (:: $Match $Body) 
      (caseStruct $MatchResult $If $BodyResult $BodyCode)) 
    (, 
      (set-det) 
      (f2p $HeadIs $MatchResultV $Match $MatchCode) 
      (combine-code $MatchCode 
        (unify-enough $MatchResult $MatchResultV) $If) 
      (f2p $HeadIs $BodyResult $Body $BodyCode)))
  (= 
    (compile-case-bodies $HeadIs $MatchBody $CS) 
    (, 
      (compound $MatchBody) 
      (=~ $MatchBody $MB) 
      (compile-case-bodies $HeadIs $MB $CS)))


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $CodeForValueConverted) 
    (, 
      (=~ $Convert 
        (:: $Plus $N $Value)) 
      (atom $Plus) 
      (current-predicate (/ $Plus 3)) 
      (number $N) 
      (not (number $Value)) 
      (not (is-ftVar $Value)) 
      (set-det) 
      (f2p $HeadIs $ValueResult $Value $CodeForValue) 
      (set-det) 
      (=.. $Converted 
        (:: $Plus $N $ValueResult $RetResult)) 
      (combine-code $CodeForValue $Converted $CodeForValueConverted)))


  (= 
    (compound-equals $COL1 $COL2) 
    (, 
      (=@= $COL1 $COL2) 
      (set-det) 
      (= $COL1 $COL2)))
  (= 
    (compound-equals $COL1 $COL2) 
    (compound-equals1 $COL1 $COL2))

  (= 
    (compound-equals1 $COL1 $COL2) 
    (, 
      (is-ftVar $COL1) 
      (set-det) 
      (is-ftVar $COL2) 
      (ignore (= $COL1 $COL2)) 
      (set-det)))
  (= 
    (compound-equals1 $COL1 $COL2) 
    (, 
      (compound $COL1) 
      (set-det) 
      (compound $COL2) 
      (= $COL1 $COL2)))


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (:: superpose $COL)) 
      (compound-equals $COL 
        (collapse $Value1)) 
      (f2p $HeadIs $ResValue1 $Value1 $CodeForValue1) 
      (= $Converted 
        (, 
          (findall $ResValue1 $CodeForValue1 $Gathered) 
          (member $RetResult $Gathered)))))

  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (:: collapse $Value1)) 
      (set-det) 
      (f2p $HeadIs $ResValue1 $Value1 $CodeForValue1) 
      (= $Converted 
        (findall $ResValue1 $CodeForValue1 $RetResult))))

  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (:: compose $Value1)) 
      (set-det) 
      (=~ $Convert2 
        (:: collapse $Value1)) 
      (set-det) 
      (compile-flow-control $HeadIs $RetResult $Convert2 $Converted)))

  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (:: unify $Value1 $Value2 $Then $Else)) 
      (set-det) 
      (= $Test 
        (metta-unify $ResValue1 $ResValue2)) 
      (f2p $HeadIs $ResValue1 $Value1 $CodeForValue1) 
      (f2p $HeadIs $ResValue2 $Value2 $CodeForValue2) 
      (compile-test-then-else $RetResult 
        (, $CodeForValue1 $CodeForValue2 $Test) $Then $Else $Converted))); dif_functors(HeadIs,Convert),


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (:: let $Var $Value1 $Body)) 
      (set-det) 
      (f2p $HeadIs $ResValue1 $Value1 $CodeForValue1) 
      (f2p $HeadIs $RetResult $Body $BodyCode) 
      (into-equals $Var $ResValue1 $VarResValue1) 
      (list-to-conjuncts 
        (:: $CodeForValue1 $VarResValue1 $BodyCode) $Converted))); dif_functors(HeadIs,Convert),


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (dif-functors $HeadIs $Convert) 
      (=~ $Convert 
        (:: let* $Bindings $Body)) 
      (set-det) 
      (must-det-ll (, (maplist (compile-let-star $HeadIs) $Bindings $CodeList) (list-to-conjuncts $CodeList $BindingCode) (f2p $HeadIs $RetResult $Body $BodyCode) (combine-code $BindingCode $BodyCode $Converted)))))

  
  (= 
    (compile-let-star $HeadIs $NV $Converted) 
    (must-det-ll (, (=~ $NV (:: $Expression $Var)) (if-then-else (var $Var) (f2p $HeadIs $Var $Expression $Converted) (if-then-else (var $Expression) (f2p $HeadIs $Expression $Var $Converted) (, (f2p $HeadIs $Eval1Result $Expression $Code) (into-equals $Eval1Result $Var $Eval1ResultVar) (combine-code $Code $Eval1ResultVar $Converted)))))))



; match('&self',f(1)=Y,Y)

  (= 
    (compile-flow-control $HeadIs $Y $Convert $Converted) 
    (, 
      (dif-functors $HeadIs $Convert) 
      (=~ $Convert 
        (match &self $AsFunctionY $YY)) 
      (nonvar $AsFunctionY) 
      (=~ $AsFunctionY 
        (= $AsFunction $Y)) 
      (nonvar $AsFunction) 
      (set-det) 
      (== $Y $YY) 
      (f2p $HeadIs $Y $AsFunction $Converted) 
      (set-det)))

  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (dif-functors $HeadIs $Convert) 
      (=~ $Convert 
        (:: match $Self $Pattern $Template)) 
      (set-det) 
      (f2p $HeadIs $_ $Pattern $PatternCode) 
      (f2p $HeadIs $RetResult $Template $TemplateCode) 
      (combine-code $PatternCode $TemplateCode $Converted)))

  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (dif-functors $HeadIs $Convert) 
      (=~ $Convert 
        (:: match $Self $Pattern $Template)) 
      (set-det) 
      (must-det-ll (, (f2p $HeadIs $_ $Pattern $PatternCode) (into-equals $RetResult $Template $TemplateCode) (combine-code $PatternCode $TemplateCode $Converted)))))

  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (dif-functors $HeadIs $Convert) 
      (=~ $Convert 
        (:: if-decons $Atom $Head $Tail $Then $Else)) 
      (set-det) 
      (= $Test 
        (unify-cons $AtomResult $ResHead $ResTail)) 
      (f2p $HeadIs $AtomResult $Atom $AtomCode) 
      (f2p $HeadIs $ResHead $Head $CodeForHead) 
      (f2p $HeadIs $ResTail $Tail $CodeForTail) 
      (compile-test-then-else $RetResult 
        (, $AtomCode $CodeForHead $CodeForTail $Test) $Then $Else $Converted)))



  (= 
    (compile-flow-control $HeadIs $RetResult $Convert 
      (is-True $RetResult)) 
    (, 
      (is-compiled-and $AND) 
      (=~ $Convert 
        (:: $AND)) 
      (set-det)))

  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (is-compiled-and $AND) 
      (=~ $Convert 
        (:: $AND $Body)) 
      (set-det) 
      (f2p $HeadIs $RetResult $Body $BodyCode) 
      (compile-test-then-else $RetResult $BodyCode True False $Converted)))

  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (is-compiled-and $AND) 
      (=~ $Convert 
        (:: $AND $Body1 $Body2)) 
      (set-det) 
      (f2p $HeadIs $B1Res $Body1 $Body1Code) 
      (f2p $HeadIs $RetResult $Body2 $Body2Code) 
      (into-equals $B1Res True $AE) 
      (= $Converted 
        (, $Body1Code $AE $Body2Code)) 
      (set-det)))


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (is-compiled-and $AND) 
      (=~ $Convert 
        (:: $AND $Body1 $Body2)) 
      (set-det) 
      (f2p $HeadIs $B1Res $Body1 $Body1Code) 
      (f2p $HeadIs $_ $Body2 $Body2Code) 
      (into-equals $B1Res True $AE) 
      (compile-test-then-else $RetResult 
        (, $Body1Code $AE $Body2Code) True False $Converted)))

  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (is-compiled-and $AND) 
      (=~ $Convert 
        (Cons  $AND 
          (Cons  $Body1 
            (Cons  $Body2 $BodyMore)))) 
      (set-det) 
      (=~ $And2 
        (Cons  $AND 
          (Cons  $Body2 $BodyMore))) 
      (=~ $Next 
        (:: $AND $Body1 $And2)) 
      (compile-flow-control $HeadIs $RetResult $Next $Converted)))

  (= 
    (compile-flow-control $HeadIs $RetResult 
      (sequential $Convert) $Converted) 
    (, 
      (set-det) 
      (compile-flow-control $HeadIs $RetResult 
        (transpose $Convert) $Converted)))

  (= 
    (compile-flow-control $HeadIs $RetResult 
      (transpose $Convert) $Converted $Code) 
    (, 
      (set-det) 
      (maplist 
        (each-result $HeadIs $RetResult) $Convert $Converted) 
      (list-to-disjuncts $Converted $Code)))


  (= 
    (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
    (, 
      (=~ $Convert 
        (if $Cond $Then)) 
      (set-det) 
      (f2p $HeadIs $CondResult $Cond $CondCode) 
      (f2p $HeadIs $RetResult $Then $ThenCode) 
      (= $Converted 
        (, $CondCode 
          (is-True $CondResult) $ThenCode)))); dif_functors(HeadIs,Convert),



  (= 
    (each-result $HeadIs $RetResult $Convert $Converted) 
    (, 
      (f2p $HeadIs $OneResult $Convert $Code1) 
      (into-equals $OneResult $RetResult $Code2) 
      (combine-code $Code1 $Code2 $Converted)))


  (= 
    (compile-flow-control $HeadIs $RetResult $Converter $Converted) 
    (, 
      (de-eval $Converter $Convert) 
      (set-det) 
      (compile-flow-control $HeadIs $RetResult $Convert $Converted)))

  (= 
    (compile-flow-control $HeadIs $Result $Convert $Converted) 
    (, 
      (fail) 
      (functor $Convert $Func $PA) 
      (functional-predicate-arg $Func $PA $Nth) 
      (=~ $Convert 
        (Cons  $Func $PredArgs)) 
      (nth1 $Nth $PredArgs $Result $FuncArgs) 
      (= $RetResult $Result) 
      (=~ $AsFunct 
        (Cons  $Func $FuncArgs)) 
      (compile-flow-control $HeadIs $RetResult $AsFunct $Converted)))


  (= 
    (dif-functors $HeadIs $_) 
    (, 
      (var $HeadIs) 
      (set-det) 
      (fail)))
  (= 
    (dif-functors $HeadIs $_) 
    (, 
      (not (compound $HeadIs)) 
      (set-det)))
  (= 
    (dif-functors $HeadIs $Convert) 
    (, 
      (compound $HeadIs) 
      (compound $Convert) 
      (compound-name-arity $HeadIs $F $A) 
      (compound-name-arity $Convert $F $A)))


  (= 
    (is-compiled-and $AND) 
    (member $AND 
      (:: , and)))


  (= flowc True)


 
  (discontiguous (/ f2p 4))


  (= 
    (f2p $HeadIs $Convert $Convert True) 
    (, 
      (or 
        (is-ftVar $Convert) 
        (number $Convert)) 
      (set-det))); Check if Convert is a variable

; If Convert is a variable, the corresponding predicate is just eval(Convert, RetResult)
  (= 
    (f2p $HeadIs $RetResult $Convert $RetResultConverted) 
    (, 
      (is-ftVar $Convert) 
      (set-det) 
      (into-equals $RetResult $Convert $RetResultConverted))); Check if Convert is a variable

    ; Converted = eval(Convert, RetResult).  ; Set Converted to eval(Convert, RetResult)
  (= 
    (f2p $HeadIs $RetResult $Convert $RetResultConverted) 
    (, 
      (number $Convert) 
      (set-det) 
      (into-equals $RetResult $Convert $RetResultConverted)))

  (= 
    (f2p $HeadIs $RetResult $Convert $Converted) 
    (, 
      (is-arity-0 $Convert $F) 
      (set-det) 
      (= $Converted 
        (u-assign 
          (:: $F) $RetResult)) 
      (set-det))); HeadIs\=@=Convert,




  (= 
    (f2p $HeadIs $RetResult $EvalConvert $Converted) 
    (, 
      (=~ $EvalConvert 
        (eval $Convert)) 
      (set-det) 
      (must-det-ll (f2p $HeadIs $RetResult $Convert $Converted))))/*f2p(HeadIs,RetResult, ConvertL, (Converted,RetResultL=RetResult)) :- is_list(ConvertL),
   maplist(f2p_assign(HeadIs),RetResultL,ConvertL, ConvertedL),
   list_to_conjuncts(ConvertedL,Converted).*/
; If Convert is an "eval" function, we convert it to the equivalent "is" predicate.


  (= 
    (f2p $HeadIs $RetResult $Convert $Converted) 
    (, 
      (compound $Convert) 
      (not (compound-name-arity $Convert $_ 0)) 
      (compile-flow-control $HeadIs $RetResult $Convert $Converted) 
      (set-det)))

  (= 
    (f2p $HeadIs $RetResult $Convert $Converted) 
    (, 
      (compound $Convert) 
      (= $Convert 
        (u-assign $C $Var)) 
      (compound-non-cons $C) 
      (into-list-args $C $CC) 
      (set-det) 
      (f2p $HeadIs $RetResult 
        (u-assign $CC $Var) $Converted)))

  (= 
    (f2p $HeadIs $RetResult $Convert $Converted) 
    (, 
      (compound $Convert) 
      (= $Convert 
        (u-assign $C $Var)) 
      (is-list $C) 
      (= $Converted $Convert) 
      (set-det)))

  (= 
    (f2p $HeadIs $RetResult $Convert $Converted) 
    (, 
      (atom $Convert) 
      (functional-predicate-arg $Convert $Nth $Nth2) 
      (== $Nth 1) 
      (== $Nth2 1) 
      (\=@= $HeadIs $Convert) 
      (= $Convert $F) 
      (set-det) 
      (must-det-ll (, (do-predicate-function-canonical $FP $F) (compound-name-list $Converted $FP (:: $RetResult))))))

; If Convert is a number or an atom, it is considered as already converted.
  (= 
    (f2p $HeadIs $RetResult $Convert 
      (= $RetResult $Convert)) 
    (, 
      (once (or (number $Convert) (or (atom $Convert) (data-term $Convert)))) 
      (set-det))); HeadIs\=@=Convert,
; Check if Convert is a number or an atom
  ; Set RetResult to Convert as it is already in predicate form

; If Convert is an "is" function, we convert it to the equivalent "is" predicate.
  (= 
    (f2p $HeadIs $RetResult 
      (is $Convert) 
      (, $Converted 
        (is $RetResult $Result))) 
    (, 
      (set-det) 
      (must-det-ll (f2p $HeadIs $Result $Convert $Converted))))

; If Convert is an "or" function, we convert it to the equivalent ";" (or) predicate.
  (= 
    (f2p $HeadIs $RetResult 
      (or $AsPredI $Convert) 
      (or $AsPredO $Converted)) 
    (, 
      (set-det) 
      (must-det-ll (, (f2p $HeadIs $RetResult $AsPredI $AsPredO) (f2p $HeadIs $RetResult $Convert $Converted)))))
  (= 
    (f2p $HeadIs $RetResult 
      (or $AsPredI $Convert) 
      (or $AsPredO $Converted)) 
    (, 
      (set-det) 
      (must-det-ll (, (f2p $HeadIs $RetResult $AsPredI $AsPredO) (f2p $HeadIs $RetResult $Convert $Converted)))))

; If Convert is a "," (and) function, we convert it to the equivalent "," (and) predicate.
  (= 
    (f2p $HeadIs $RetResult 
      (, $AsPredI $Convert) 
      (, $AsPredO $Converted)) 
    (, 
      (set-det) 
      (must-det-ll (, (f2p $HeadIs $RtResult $AsPredI $AsPredO) (f2p $HeadIs $RetResult $Convert $Converted)))))

; If Convert is a ":-" (if) function, we convert it to the equivalent ":-" (if) predicate.
  (= 
    (f2p $HeadIs $RetResult $Convert $Converted) 
    (, 
      (= $Convert 
        (= $H $B)) 
      (set-det) 
      (= $RetResult 
        (= $H $B)) 
      (= $Converted True)))

  (= 
    (f2p $HeadIs $RetResult 
      (= $N $V) $Code) 
    (, 
      (set-det) 
      (into-equals $N $V $Code)))



  (= 
    (into-equals $RetResultL $RetResult $Equals) 
    (into-u-assign $RetResultL $RetResult $Equals))

  (= 
    (into-u-assign $RetResultL $RetResult True) 
    (, 
      (is-ftVar $RetResultL) 
      (is-ftVar $RetResult) 
      (= $RetResult $RetResultL) 
      (set-det)))
  (= 
    (into-u-assign $RetResultL $RetResult $Code) 
    (, 
      (var $RetResultL) 
      (= $Code 
        (u-assign $RetResult $RetResultL))))
  (= 
    (into-u-assign $RetResultL $RetResult $Code) 
    (= $Code 
      (u-assign $RetResultL $RetResult)))



; If Convert is a list, we convert it to its termified form and then proceed with the functs_to_preds conversion.

  (= 
    (f2p $HeadIs $RetResult $Convert $Converted) 
    (, 
      (is-list $Convert) 
      (once (, (sexpr-s2p $Convert $IS) (not (=@= $IS $Convert)))) 
      (set-det) 
      (must-det-ll (f2p $HeadIs $RetResult $IS $Converted)))); Check if Convert is a list and not in predicate form
  ; Proceed with the conversion of the predicate form of the list.

  (= 
    (f2p $HeadIs $RetResult $ConvertL $Converted) 
    (, 
      (is-list $ConvertL) 
      (maplist 
        (f2p-assign $HeadIs) $RetResultL $ConvertL $ConvertedL) 
      (list-to-conjuncts $ConvertedL $Conjs) 
      (into-u-assign $RetResultL $RetResult $Code) 
      (combine-code $Conjs $Code $Converted)))



  (= 
    (f2p $HeadIs $RetResultL $ConvertL $Converted) 
    (, 
      (is-list $ConvertL) 
      (= $ConvertL 
        (:: $Convert)) 
      (f2p $HeadIs $RetResult $Convert $Code) 
      (set-det) 
      (into-equals $RetResultL 
        (:: $RetResult) $Equals) 
      (combine-code $Code $Equals $Converted)))


; If any sub-term of Convert is a function, convert that sub-term and then proceed with the conversion.
  (= 
    (f2p $HeadIs $RetResult $Convert $Converted) 
    (, 
      (rev-sub-sterm $AsFunction $Convert) 
      (callable $AsFunction) 
      (compile-flow-control $HeadIs $Result $AsFunction $AsPred) 
      (\=@= $HeadIs $AsFunction) 
      (set-det) 
      (subst $Convert $AsFunction $Result $Converting) 
      (f2p $HeadIs $RetResult 
        (, $AsPred $Converting) $Converted))); Get the deepest sub-term AsFunction of Convert
;  sub_term(AsFunction, Convert), AsFunction\==Convert,
; Check if AsFunction is callable
; Substitute AsFunction by Result in Convert
  ; Proceed with the conversion of the remaining terms

; If any sub-term of Convert is a function, convert that sub-term and then proceed with the conversion.
  (= 
    (f2p $HeadIs $RetResult $Convert $Converted) 
    (, 
      (rev-sub-sterm $AsFunction $Convert) 
      (callable $AsFunction) 
      (is-function $AsFunction $Nth) 
      (\=@= $HeadIs $AsFunction) 
      (funct-with-result-is-nth-of-pred $HeadIs $AsFunction $Result $Nth $AsPred) 
      (subst $Convert $AsFunction $Result $Converting) 
      (f2p $HeadIs $RetResult 
        (, $AsPred $Converting) $Converted))); Get the deepest sub-term AsFunction of Convert
; Check if AsFunction is callable
; Check if AsFunction is a function and get the position Nth where the result is stored/retrieved
; Convert AsFunction to a predicate AsPred
; Substitute AsFunction by Result in Convert
  ; Proceed with the conversion of the remaining terms

; If AsFunction is a recognized function, convert it to a predicate.
  (= 
    (f2p $HeadIs $RetResult $AsFunction $AsPred) 
    (, 
      (is-function $AsFunction $Nth) 
      (funct-with-result-is-nth-of-pred $HeadIs $AsFunction $RetResult $Nth $AsPred) 
      (not (, (compound $AsFunction) (arg $_ $AsFunction $Arg) (is-function $Arg $_))) 
      (set-det))); HeadIs\=@=AsFunction,
; Check if AsFunction is a recognized function and get the position Nth where the result is stored/retrieved


; If any sub-term of Convert is an eval/2, convert that sub-term and then proceed with the conversion.
  (= 
    (f2p $HeadIs $RetResult $Convert $Converted) 
    (, 
      (rev-sub-sterm0 $ConvertFunction $Convert) 
      (callable $ConvertFunction) 
      (= $ConvertFunction 
        (eval $AsFunction $Result)) 
      (ignore (is-function $AsFunction $Nth)) 
      (funct-with-result-is-nth-of-pred $HeadIs $AsFunction $Result $Nth $AsPred) 
      (subst $Convert $ConvertFunction $Result $Converting) 
      (f2p $HeadIs $RetResult 
        (, $AsPred $Converting) $Converted))); Get the deepest sub-term AsFunction of Convert
; Check if AsFunction is callable
; Convert AsFunction to a predicate AsPred
; Substitute AsFunction by Result in Convert
  ; Proceed with the conversion of the remaining terms

  (= 
    (f2p $HeadIs $RetResult 
      (u-assign $Convert $Res) 
      (u-assign $Convert $Res)) 
    (set-det))/* MAYBE USE ?
; If Convert is a compound term, we need to recursively convert its arguments.
f2p(HeadIs,RetResult, Convert, Converted) :- fail,
    compound(Convert), !,
    Convert =~ [Functor|Args],  ; Deconstruct Convert to functor and arguments
    maplist(convert_argument, Args, ConvertedArgs),  ; Recursively convert each argument
    Converted =~ [Functor|ConvertedArgs],  ; Reconstruct Converted with the converted arguments
    (callable(Converted) -> f2p(HeadIs,RetResult, Converted, _); true).  ; If Converted is callable, proceed with its conversion
; Helper predicate to convert an argument of a compound term
convert_argument(Arg, ConvertedArg) :-
    (callable(Arg) -> ftp(_, _, Arg, ConvertedArg); ConvertedArg = Arg).
*/
; The catch-all If no specific case is matched, consider Convert as already converted.

  (= 
    (f2p $HeadIs $RetResult $Convert $Code) 
    (into-u-assign $Convert $RetResult $Code))




  (= 
    (data-term $Convert) 
    (, 
      (self-eval $Convert) 
      (set-det)))



  (= 
    (de-eval 
      (eval $X) $X) 
    (, 
      (compound $X) 
      (set-det)))


  (= 
    (call1 $G) 
    (call $G))

  (= 
    (call2 $G) 
    (call $G))

  (= 
    (call3 $G) 
    (call $G))

  (= 
    (call4 $G) 
    (call $G))

  (= 
    (call5 $G) 
    (call $G))


  (= 
    (trace-break) 
    (, 
      (trace) 
      (break)))


  (= 
    (u-assign $FList $R) 
    (, 
      (var $FList) 
      (nonvar $R) 
      (set-det) 
      (u-assign $R $FList)))
  (= 
    (u-assign $FList $R) 
    (, 
      (=@= $FList $R) 
      (set-det) 
      (= $FList $R)))
  (= 
    (u-assign $FList $R) 
    (, 
      (number $FList) 
      (var $R) 
      (set-det) 
      (= $R $FList)))
  (= 
    (u-assign $FList $R) 
    (, 
      (self-eval $FList) 
      (var $R) 
      (set-det) 
      (= $R $FList)))
  (= 
    (u-assign $FList $R) 
    (, 
      (var $FList) 
      (set-det) 
      (freeze $FList 
        (u-assign $FList $R))))/*trace,*/

  (= 
    (u-assign 
      (Cons  $V $VI) 
      (Cons  $V $VO)) 
    (, 
      (nonvar $V) 
      (is-metta-data-functor $Eq $V) 
      (set-det) 
      (maplist eval-args $VI $VO)))
  (= 
    (u-assign 
      (= $F $List) $R) 
    (, 
      (set-det) 
      (= $R 
        (= $F $List))))
  (= 
    (u-assign $FList $R) 
    (, 
      (not (compound $FList)) 
      (var $R) 
      (set-det) 
      (= $R $FList)))
  (= 
    (u-assign 
      (Cons  $F $List) $R) 
    (, 
      (== $F :-) 
      (set-det) 
      (trace-break) 
      (as-tf 
        (get-atoms  &self 
          (= $F $List)) $R)))
  (= 
    (u-assign 
      (Cons  $F $List) $R) 
    (, 
      (atom $F) 
      (append $List 
        (:: $R) $ListR) 
      (catch 
        (quietly (apply $F $ListR)) 
        (error 
          (existence-error procedure 
            (/ $F $_)) $_) 
        (catch 
          (quietly (as-tf (apply $F $List) $R)) 
          (error 
            (existence-error procedure 
              (/ $F $_)) $_) 
          (quietly (catch (eval-args (Cons  $F $List) $R) $_ (= $R (Cons  $F $List)))))) 
      (set-det)))
  (= 
    (u-assign $FList $RR) 
    (, 
      (iz-conz $FList) 
      (set-det) 
      (as-tf $FList $RR)))
  (= 
    (u-assign $FList $RR) 
    (or 
      (each-then 
        (, 
          (compound-non-cons $FList) 
          (u-assign-c $FList $RR)) True) 
      (=~ $FList $RR)))


  (= 
    (u-assign-c $FList $RR) 
    (, 
      (functor $FList $F $_) 
      (catch 
        (quietlY (call $FList $R)) 
        (error 
          (existence-error procedure 
            (/ $F $_)) $_) 
        (catch 
          (quietlY (as-tf $FList $R)) 
          (error 
            (existence-error procedure 
              (/ $F $_)) $_) 
          (quietlY (, (p2m $FList (Cons  $F $List)) (catch (eval-args (Cons  $F $List) $R) $_ (=~ $R (Cons  $F $List))))))) 
      (set-det) 
      (= $R $RR)))
  (= 
    (u-assign-c $FList $R) 
    (, 
      (compound $FList) 
      (=~ $FList $R)))


  (= 
    (quietlY $G) 
    (call $G))


  (= 
    (call-fr $G $Result $FA) 
    (, 
      (current-predicate $FA) 
      (set-det) 
      (call $G $Result)))
  (= 
    (call-fr $G $Result $_) 
    (= $Result $G))

; This predicate is responsible for converting functions to their equivalent predicates.
; It takes a function 'AsFunction' and determines the predicate 'AsPred' which will be
; equivalent to the given function, placing the result of the function at the 'Nth' position
; of the predicate arguments. The 'Result' will be used to store the result of the 'AsFunction'.
;
; It handles cases where 'AsFunction' is a variable and when it's an atom or a compound term.
; For compound terms, it decomposes them to get the functor and arguments and then reconstructs
; the equivalent predicate with the 'Result' at the 'Nth' position.
;
; Example:
; funct_with_result_is_nth_of_pred(HeadIs,+(1, 2), Result, 3, +(1, 2, Result)).


  (= 
    (into-callable $Pred $AsPred) 
    (, 
      (is-ftVar $Pred) 
      (set-det) 
      (= $AsPred 
        (holds $Pred))))
  (= 
    (into-callable $Pred $AsPred) 
    (, 
      (= $Pred $AsPred) 
      (set-det)))
  (= 
    (into-callable $Pred $AsPred) 
    (, 
      (iz-conz $Pred) 
      (set-det) 
      (= $AsPred 
        (holds $Pred))))
  (= 
    (into-callable $Pred $AsPred) 
    (, 
      (= $Pred 
        (call-fr $_ $_ $_)) 
      (set-det) 
      (= $AsPred $Pred)))
  (= 
    (into-callable $Pred $AsPred) 
    (, 
      (=~ $Pred $Cons) 
      (set-det) 
      (= $AsPred 
        (holds $Cons))))


  (= 
    (funct-with-result-is-nth-of-pred $HeadIs $AsFunction $Result $Nth $AsPred) 
    (, 
      (var $AsPred) 
      (set-det) 
      (funct-with-result-is-nth-of-pred0 $HeadIs $AsFunction $Result $Nth $Pred) 
      (into-callable $Pred $AsPred)))

  (= 
    (funct-with-result-is-nth-of-pred $HeadIs $AsFunction $Result $Nth $AsPred) 
    (, 
      (var $AsFunction) 
      (set-det) 
      (funct-with-result-is-nth-of-pred0 $HeadIs $Function $Result $Nth $AsPred) 
      (into-callable $Function $AsFunction)))

  (= 
    (funct-with-result-is-nth-of-pred $HeadIs $AsFunction $Result $Nth $AsPred) 
    (funct-with-result-is-nth-of-pred0 $HeadIs $AsFunction $Result $Nth $AsPred))

; Handles the case where AsFunction is a variable.
; It creates a compound term 'AsPred' and places the 'Result' at the 'Nth' position
; of the predicate arguments, and the 'AsFunction' represents the functional form with
; arguments excluding the result.

  (= 
    (funct-with-result-is-nth-of-pred0 $HeadIs $AsFunction $Result $Nth $AsPred) 
    (, 
      (is-ftVar $AsFunction) 
      (set-det) 
      (compound $AsPred) 
      (compound-name-list $AsPred $FP $PredArgs) 
      (nth1 $Nth $PredArgs $Result $FuncArgs) 
      (do-predicate-function-canonical $FP $F) 
      (=~ $AsFunction 
        (:: $F $FuncArgs))))

; Handles the case where 'AsFunction' is not a variable.
; It decomposes 'AsFunction' to get the functor and arguments (FuncArgs) of the function
; and then it constructs the equivalent predicate 'AsPred' with 'Result' at the 'Nth'
; position of the predicate arguments.
  (= 
    (funct-with-result-is-nth-of-pred0 $HeadIs $AsFunctionO $Result $Nth $AsPred) 
    (, 
      (de-eval $AsFunctionO $AsFunction) 
      (set-det) 
      (funct-with-result-is-nth-of-pred0 $HeadIs $AsFunction $Result $Nth $AsPred)))

  (= 
    (funct-with-result-is-nth-of-pred0 $HeadIs $AsFunction $Result $Nth $AsPred) 
    (, 
      (nonvar $AsFunction) 
      (compound $AsFunction) 
      (not (is-arity-0 $AsFunction $_)) 
      (functor $AsFunction $F $A) 
      (\=@= $HeadIs $AsFunction) 
      (not (if-then (, (compound $HeadIs) (or (is-arity-0 $HeadIs $HF) (functor $HeadIs $HF $_))) (== $HF $F))) 
      (if-then-else 
        (into-u-assign $AsFunction $Result $AsPred) True 
        (, 
          (is $AA 
            (+ $A 1)) 
          (= $FAA 
            (/ $F $AA)) 
          (not (current-predicate $FAA)) 
          (set-det) 
          (= $AsPred 
            (call-fr $AsFunction $Result $FAA))))))


  (= 
    (funct-with-result-is-nth-of-pred0 $HeadIs $AsFunction $Result $Nth $AsPred) 
    (, 
      (if-then-else 
        (atom $AsFunction) 
        (=~ $AsFunction 
          (Cons  $F $FuncArgs)) 
        (compound-name-list $AsFunction $F $FuncArgs)) 
      (ignore (if-then-else (var $Nth) (is-function $AsFunction $Nth) True)) 
      (nth1 $Nth $PredArgs $Result $FuncArgs) 
      (is $AA 
        (+ $Nth 1)) 
      (not (current-predicate (/ $F $AA))) 
      (do-predicate-function-canonical $FP $F) 
      (=~ $AsPred 
        (Cons  $FP $PredArgs)))); It places 'Result' at the 'Nth' position
 ; It forms the predicate 'AsPred' by joining the functor with the modified arguments list.



  (= 
    (funct-with-result-is-nth-of-pred0 $HeadIs $AsFunction $Result $Nth $AsPred) 
    (, 
      (nonvar $AsFunction) 
      (=~ $AsFunction 
        (Cons  $F $FuncArgs)) 
      (do-predicate-function-canonical $FP $F) 
      (length $FuncArgs $Len) 
      (ignore (if-then-else (var $Nth) (is-function $AsFunction $Nth) True)) 
      (if-then-else 
        (, 
          (number $Nth) 
          (> $Nth 
            (+ $Len 1))) 
        (throw (error index-out-of-bounds $_)) True) 
      (if-then-else 
        (var $Nth) 
        (, 
          (between 1 $Len $From1) 
          (is $Nth 
            (+ 
              (- $Len $From1) 1))) True) 
      (nth1 $Nth $PredArgs $Result $FuncArgs) 
      (=~ $AsPred 
        (Cons  $FP $PredArgs))))

; optionally remove next line
  (= 
    (funct-with-result-is-nth-of-pred0 $HeadIs $AsFunction $_ $_ $_) 
    (, 
      (var $AsFunction) 
      (throw (error instantiation-error $_))))

; The remove_funct_arg/3 predicate is a utility predicate that removes
; the Nth argument from a predicate term, effectively converting a
; predicate to a function. The first argument is the input predicate term,
; the second is the position of the argument to be removed, and the third
; is the output function term.

  (= 
    (remove-funct-arg $AsPred $Nth $AsFunction) 
    (, 
      (=~ $AsPred 
        (Cons  $F $PredArgs)) 
      (nth1 $Nth $PredArgs $Result $FuncArgs) 
      (do-predicate-function-canonical $F $FF) 
      (compound-name-list $AsFunction $FF $FuncArgs))); Decompose AsPred into its functor and arguments.
; Remove the Nth element from PredArgs, getting the list FuncArgs.
; Construct AsFunction using the functor and the list FuncArgs.


; rev_sub_sterm/2 predicate traverses through a given Term
; and finds a sub-term within it. The sub-term is unifiable with ST.
; This is a helper predicate used in conjunction with others to inspect
; and transform terms.


  (= 
    (rev-sub-sterm $ST $Term) 
    (, 
      (rev-sub-sterm0 $ST $Term) 
      (\=@= $ST $Term)))

  (= 
    (rev-sub-sterm0 $_ $Term) 
    (, 
      (never-subterm $Term) 
      (set-det) 
      (fail)))
  (= 
    (rev-sub-sterm0 $ST $Term) 
    (, 
      (=~ $Term 
        (if $Cond $Then $Else)) 
      (set-det) 
      (rev-sub-sterm0 $ST $Cond)))
  (= 
    (rev-sub-sterm0 $ST $Term) 
    (, 
      (=~ $Term 
        (if-error $Cond $Then $Else)) 
      (set-det) 
      (rev-sub-sterm0 $ST $Cond)))
  (= 
    (rev-sub-sterm0 $ST $Term) 
    (, 
      (=~ $Term 
        (if-decons $Cond $Then $Else)) 
      (set-det) 
      (rev-sub-sterm0 $ST $Cond)))
  (= 
    (rev-sub-sterm0 $ST $Term) 
    (, 
      (=~ $Term 
        (chain $Expr $Var $Next)) 
      (set-det) 
      (rev-sub-sterm0 $ST $Expr)))
  (= 
    (rev-sub-sterm0 $ST $Term) 
    (, 
      (is-list $Term) 
      (set-det) 
      (rev-member $E $Term) 
      (rev-sub-sterm0 $ST $E))); If Term is a list, it reverses the list and searches for a member
; in the reversed list that is unifiable with ST.

  (= 
    (rev-sub-sterm0 $ST $Term) 
    (, 
      (compound $Term) 
      (compound-name-list $Term $_ $Args) 
      (rev-sub-sterm0 $ST $Args))); If Term is a compound term, it gets its arguments and then recursively
; searches in those arguments for a sub-term unifiable with ST.

  (= 
    (rev-sub-sterm0 $ST $ST) 
    (, 
      (nonvar $ST) 
      (\== $ST Nil) 
      (callable $ST))); If ST is non-var, not an empty list, and callable, it unifies
; ST with Term if it is unifiable.



  (= 
    (never-subterm $Term) 
    (is-ftVar $Term))
  (= 
    (never_subterm  ()) True)
  (= 
    (never_subterm  Nil) True)
;never_subterm(F):- atom(F),not_function(F,0).

; rev_member/2 predicate is a helper predicate used to find a member
; of a list. It is primarily used within rev_sub_sterm/2 to
; traverse through lists and find sub-terms. It traverses the list
; from the end to the beginning, reversing the order of traversal.

  (= 
    (rev-member $E 
      (Cons  $_ $L)) 
    (rev-member $E $L))
  (= 
    (rev_member  $E 
      (Cons  $E $_)) True)

; Continuing from preds_to_functs/2
; Converts a given predicate representation to its equivalent function representation

  (= 
    (preds-to-functs $Convert $Converted) 
    (, 
      (verbose-unify $Convert) 
      (preds-to-functs0 $Convert $Converted))); Verbose_unify/1 here may be used for debugging or to display detailed unification information
; Calls the auxiliary predicate preds_to_functs0/2 to perform the actual conversion


; if Convert is a variable, Converted will be the same variable

  (= 
    (preds-to-functs0 $Convert $Converted) 
    (, 
      (is-ftVar $Convert) 
      (set-det) 
      (= $Converted $Convert)))

; Converts the rule (Head :- Body) to its function equivalent
  (= 
    (preds-to-functs0 
      (= $Head $Body) $Converted) 
    (, 
      (set-det) 
      (pred-to-funct $Head $AsFunction $Result) 
      (conjuncts-to-list $Body $List) 
      (reverse $List $RevList) 
      (append $Left 
        (Cons  $BE $Right) $RevList) 
      (compound $BE) 
      (arg $Nth $BE $ArgRes) 
      (sub-var $Result $ArgRes) 
      (remove-funct-arg $BE $Nth $AsBodyFunction) 
      (append $Left 
        (Cons  
          (eval $AsBodyFunction $Result) $Right) $NewRevList) 
      (reverse $NewRevList $NewList) 
      (list-to-conjuncts $NewList $NewBody) 
      (preds-to-functs0 $NewBody $ConvertedBody) 
      (into-equals $AsFunction $ConvertedBody $Converted))); The rule is converted by transforming Head to a function AsFunction and the Body to ConvertedBody
;ignore(Result = '$VAR'('HeadRes')),
; The final Converted term is constructed


; Handles the case where Convert is a conjunction, and AsPred is not not_function.
; It converts predicates to functions inside a conjunction
  (= 
    (preds-to-functs0 
      (, $AsPred $Convert) $Converted) 
    (, 
      (not (not-function $AsPred)) 
      (pred-to-funct $AsPred $AsFunction $Result) 
      (sub-var $Result $Convert) 
      (set-det) 
      (subst $Convert $Result $AsFunction $Converting) 
      (preds-to-functs0 $Converting $Converted))); The function equivalent of AsPred replaces Result in Convert


; Handles the special case where eval/2 is used and returns the function represented by the first argument of eval/2
  (= 
    (preds-to-functs0 
      (eval $AsFunction $Result) $AsFunction) 
    (set-det))

; Handles the general case where Convert is a conjunction.
; It converts the predicates to functions inside a conjunction
  (= 
    (preds-to-functs0 
      (, $AsPred $Converting) 
      (, $AsPred $Converted)) 
    (, 
      (set-det) 
      (preds-to-functs0 $Converting $Converted)))

; Handles the case where AsPred is a compound term that can be converted to a function
  (= 
    (preds-to-functs0 $AsPred 
      (eval $AsFunction $Result)) 
    (, 
      (pred-to-funct $AsPred $AsFunction $Result) 
      (set-det)))

; any other term remains unchanged
  (= 
    (preds_to_functs0  $X $X) True)

; Converts a given predicate AsPred to its equivalent function term AsFunction

  (= 
    (pred-to-funct $AsPred $AsFunction $Result) 
    (, 
      (compound $AsPred) 
      (functor $AsPred $F $A) 
      (functional-predicate-arg $F $A $Nth) 
      (set-det) 
      (arg $Nth $AsPred $Result) 
      (remove-funct-arg $AsPred $Nth $AsFunction))); Checks if AsPred is a compound term
; Retrieves the functor F and arity A of AsPred
; Finds the Nth argument where the result should be
; Retrieves the result from the Nth argument of AsPred
 ; Constructs the function AsFunction by removing the Nth argument from AsPred

; If not found in functional_predicate_arg/3, it tries to construct AsFunction by removing the last argument from AsPred
  (= 
    (pred-to-funct $AsPred $AsFunction $Result) 
    (, 
      (compound $AsPred) 
      (set-det) 
      (functor $AsPred $_ $Nth) 
      (arg $Nth $AsPred $Result) 
      (remove-funct-arg $AsPred $Nth $AsFunction)))

; body_member/4 is utility predicate to handle manipulation of body elements in the clause, but the exact implementation details and usage are not provided in the given code.

  (= 
    (body-member $Body $BE $NewBE $NewBody) 
    (, 
      (conjuncts-to-list $Body $List) 
      (reverse $List $RevList) 
      (append $Left 
        (Cons  $BE $Right) $RevList) 
      (append $Left 
        (Cons  $NewBE $Right) $NewRevList) 
      (reverse $NewRevList $NewList) 
      (list-to-conjuncts $NewList $NewBody)))
; combine_clauses/3 is the main predicate combining clauses with similar heads and bodies.
; HeadBodiesList is a list of clauses (Head:-Body)
; NewHead will be the generalized head representing all clauses in HeadBodiesList
; NewCombinedBodies will be the combined bodies of all clauses in HeadBodiesList.

  (= 
    (combine-clauses $HeadBodiesList $NewHead $NewCombinedBodies) 
    (, 
      (if-then-else 
        (= $HeadBodiesList Nil) 
        (, 
          (= $NewCombinedBodies False) 
          (= $NewHead $_)) 
        (, 
          (findall $Head 
            (member 
              (= $Head $_) $HeadBodiesList) $Heads) 
          (least-general-head $Heads $LeastHead) 
          (functor $LeastHead $F $A) 
          (functor $NewHead $F $A) 
          (transform-and-combine-bodies $HeadBodiesList $NewHead $NewCombinedBodies))) 
      (not (not (, (= $Print (:: (= converting $HeadBodiesList) (= newHead $NewHead))) (numbervars $Print 0 $_ Nil) (fbug $Print) (in-cmt (portray-clause (= $NewHead $NewCombinedBodies)))))) 
      (set-det))); If HeadBodiesList is empty, then NewCombinedBodies is 'false' and NewHead is an anonymous variable.
; Find all Heads in HeadBodiesList and collect them in the list Heads
; Find the least general head among the collected Heads
; Transform and combine bodies according to the new head found


; Predicate to find the least general unified head (LGU) among the given list of heads.
; Heads is a list of head terms, and LeastGeneralHead is the least general term that unifies all terms in Heads.

  (= 
    (least-general-head $Heads $LeastGeneralHead) 
    (lgu $Heads $LeastGeneralHead))

; the LGU of a single head is the head itself.

  (= 
    (lgu 
      (:: $Head) $Head) 
    (set-det))
; find the LGU of the head and the rest of the list.
  (= 
    (lgu 
      (Cons  $H1 $T) $LGU) 
    (, 
      (lgu $T $TempLGU) 
      (generalization $H1 $TempLGU $LGU))); Find generalization between head H1 and temporary LGU


; generalization/3 finds the generalization of two heads, Head1 and Head2, which is represented by GeneralizedHead.
; This predicate is conceptual and will require more complex processing depending on the actual structures of the heads.

  (= 
    (generalization $Head1 $Head2 $GeneralizedHead) 
    (, 
      (functor $Head1 $Name $Arity) 
      (functor $Head2 $Name $Arity) 
      (functor $GeneralizedHead $Name $Arity) 
      (generalize-args $Arity $Head1 $Head2 $GeneralizedHead))); Ensure the functor names and arities are the same between Head1 and Head2.
; Generalize the arguments of the heads.


; no more arguments to generalize.

  (= 
    (generalize-args 0 $_ $_ $_) 
    (set-det))
; generalize the corresponding arguments of the heads.
  (= 
    (generalize-args $N $Head1 $Head2 $GeneralizedHead) 
    (, 
      (arg $N $Head1 $Arg1) 
      (arg $N $Head2 $Arg2) 
      (if-then-else 
        (= $Arg1 $Arg2) 
        (arg $N $GeneralizedHead $Arg1) 
        (arg $N $GeneralizedHead $_)) 
      (is $N1 
        (- $N 1)) 
      (generalize-args $N1 $Head1 $Head2 $GeneralizedHead))); If the corresponding arguments are equal, use them. Otherwise, create a new variable.
; Continue with the next argument.


; transform_and_combine_bodies/3 takes a list of clause heads and bodies, a new head, and produces a combined body representing all the original bodies.
; The new body is created according to the transformations required by the new head.

  (= 
    (transform-and-combine-bodies 
      (Cons  
        (= $Head $Body) $T) $NewHead $CombinedBodies) 
    (, 
      (transform $Head $NewHead $Body $TransformedBody) 
      (combine-bodies $T $NewHead $TransformedBody $CombinedBodies))); Transform the body according to the new head.
; Combine the transformed body with the rest.



  (= 
    (combine_bodies  () $_ $Combined $Combined) True)/* OLD
; Define predicate combine_clauses to merge multiple MeTTa clauses with the same head.
; It receives a list of clauses as input and returns a combined clause.
combine_clauses([Clause], Clause) :- !.  ; If there's only one clause, return it as is.
combine_clauses(Clauses, (Head :- Body)) :-  ; If there are multiple clauses, combine them.
    Clauses = [(Head :- FirstBody)|RestClauses],  ; Decompose the list into the first clause and the rest.
    combine_bodies(RestClauses, FirstBody, Body).  ; Combine the bodies of all the clauses.

; Helper predicate to combine the bodies of a list of clauses.
; The base case is when there are no more clauses to combine; the combined body is the current body.
combine_bodies([], Body, Body).
combine_bodies([(Head :- CurrentBody)|RestClauses], PrevBody, Body) :-
    ; Combine the current body with the previous body using a conjunction (,).
    combine_two_bodies(PrevBody, CurrentBody, CombinedBody),
    ; Recursively combine the rest of the bodies.
    combine_bodies(RestClauses, CombinedBody, Body).

; Predicate to combine two bodies.
; Handles the combination of different MeTTa constructs like conjunctions, disjunctions, etc.
combine_two_bodies((A, B), (C, D), (A, B, C, D)) :- !.  ; Combine conjunctions.
combine_two_bodies((A; B), (C; D), (A; B; C; D)) :- !.  ; Combine disjunctions.
combine_two_bodies(A, B, (A, B)).  ; Combine simple terms using conjunction.
*/
; if there are no more bodies, the accumulated Combined is the final CombinedBodies.

; combine the transformed body with the accumulated bodies.
  (= 
    (combine-bodies 
      (Cons  
        (= $Head $Body) $T) $NewHead $Acc $CombinedBodies) 
    (, 
      (transform $Head $NewHead $Body $TransformedBody) 
      (= $NewAcc 
        (or $Acc $TransformedBody)) 
      (combine-bodies $T $NewHead $NewAcc $CombinedBodies))); Create a disjunction between the accumulated bodies and the transformed body.


; combine_code/3 combines Guard and Body to produce either Guard, Body, or a conjunction of both, depending on the values of Guard and Body.

  (= 
    (combine-code $Guard $Body $Guard) 
    (, 
      (== $Body True) 
      (set-det)))
  (= 
    (combine-code $Guard $Body $Body) 
    (, 
      (== $Guard True) 
      (set-det)))
  (= 
    (combine_code  $Guard $Body 
      (,  $Guard $Body)) True)

; create_unifier/3 creates a unification code that unifies OneHead with NewHead.
; If OneHead and NewHead are structurally equal, then they are unified and the unification Guard is 'true'.
; Otherwise, the unification code is 'metta_unify(OneHead,NewHead)'.


  (= 
    (create-unifier $OneHead $NewHead $Guard) 
    (, 
      (=@= $OneHead $NewHead) 
      (= $OneHead $NewHead) 
      (set-det) 
      (= $Guard True)))
  (= 
    (create-unifier $OneHead $NewHead $Guard) 
    (, 
      (compound $OneHead) 
      (compound-name-list $OneHead $_ $Args1) 
      (compound-name-list $NewHead $_ $Args2) 
      (create-unifier-goals $Args1 $Args2 $Guard) 
      (set-det)))
  (= 
    (create_unifier  $OneHead $NewHead 
      (u  $OneHead $NewHead)) True)


  (= 
    (create-unifier-goals 
      (:: $V1) 
      (:: $V2) 
      (u $V1 $V2)) 
    (set-det))
  (= 
    (create-unifier-goals 
      (Cons  $V1 $Args1) 
      (Cons  $V2 $Args2) $RightGuard) 
    (, 
      (set-det) 
      (create-unifier-goals $Args1 $Args2 $Guard) 
      (combine-code 
        (u $V1 $V2) $Guard $RightGuard)))
  (= 
    (create_unifier_goals  () () true) True)


; transform/4 combines unification code with Body to produce NewBody according to the transformations required by NewHead.
; It uses create_unifier/3 to generate the unification code between OneHead and NewHead.

  (= 
    (transform $OneHead $NewHead $Body $NewBody) 
    (, 
      (create-unifier $OneHead $NewHead $Guard) 
      (combine-code $Guard $Body $NewBody)))




; ===============================
;  Compile in memory buffer
; ===============================


  (= 
    (add-assertion $NewAssertion) 
    (, 
      (expand-to-hb $NewAssertion $H $_) 
      (functor $H $F $A) 
      (functor $HH $F $A) 
      (add-atom  &self $NewAssertion) 
      (findall 
        (= $HH $B) 
        (get-atoms  &self 
          (= $HH $B)) $Prev) 
      (abolish (/ $F $A)) 
      (create-and-consult-temp-file 
        (/ $F $A) $Prev))); Get the current clauses of my_predicate/1
; Create a temporary file and add the new assertion along with existing clauses


; Predicate to create a temporary file and write the tabled predicate

  (= 
    (create-and-consult-temp-file 
      (/ $PredName $Arity) $PredClauses) 
    (, 
      (tmp-file-stream text $TempFileName $TempFileStream) 
      (format $TempFileStream ':- multifile((~q)/~w).~n' 
        (:: $PredName $Arity)) 
      (format $TempFileStream ':- dynamic((~q)/~w).~n' 
        (:: $PredName $Arity)) 
      (if-t 
        (option-value tabling True) 
        (format $TempFileStream ':- ~q.~n' 
          (:: (table (/ $PredName $Arity))))) 
      (maplist 
        (write-clause $TempFileStream) $PredClauses) 
      (close $TempFileStream) 
      (consult $TempFileName) 
      (delete-file $TempFileName) 
      (add-atom  &self 
        (metta_compiled_predicate  $PredName $Arity)))); Generate a unique temporary memory buffer
; Write the tabled predicate to the temporary file
;if_t( \+ option_value('tabling',false),
; Close the temporary file
; Consult the temporary file
; Delete the temporary file after consulting


; Helper predicate to write a clause to the file

  (= 
    (write-clause $Stream $Clause) 
    (, 
      (subst-vars $Clause $Can) 
      (write-canonical $Stream $Can) 
      (write $Stream .) 
      (nl $Stream)))



