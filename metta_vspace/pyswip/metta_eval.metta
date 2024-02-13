;
; post match modew
;:- style_check(-singleton).


  (= 
    (self-eval0 $X) 
    (, 
      (not (callable $X)) 
      (set-det)))
  (= 
    (self-eval0 $X) 
    (, 
      (is-valid-nb-state $X) 
      (set-det)))
;self_eval0(X):- string(X),!.
;self_eval0(X):- number(X),!.
;self_eval0([]).
  (= 
    (self-eval0 $X) 
    (, 
      (is-metta-declaration $X) 
      (set-det)))
  (= 
    (self-eval0 (Cons  $F $X)) 
    (, 
      (set-det) 
      (is-list $X) 
      (length $X $Len) 
      (set-det) 
      (nonvar $F) 
      (is-self-eval-l-fa $F $Len) 
      (set-det)))
  (= 
    (self-eval0 $X) 
    (, 
      (typed-list $X $_ $_) 
      (set-det)))
;self_eval0(X):- compound(X),!.
;self_eval0(X):- is_ref(X),!,fail.
  (= 
    (self_eval0  True) True) 
  (= 
    (self_eval0  False) True) ; self_eval0('F').
  (= 
    (self_eval0  ) True)
  (= 
    (self-eval0 $X) 
    (, 
      (atom $X) 
      (set-det) 
      (not (nb-current $X $_)) 
      (set-det)))


  (= 
    (coerce $Type $Value $Result) 
    (, 
      (nonvar $Value) 
      (= $Value 
        (Cons  $Echo $EValue)) 
      (== $Echo echo) 
      (= $EValue 
        (:: $RValue)) 
      (set-det) 
      (coerce $Type $RValue $Result)))
  (= 
    (coerce $Type $Value $Result) 
    (, 
      (var $Type) 
      (set-det) 
      (= $Value $Result) 
      (freeze $Type 
        (coerce $Type $Value $Result))))
  (= 
    (coerce Atom $Value $Result) 
    (, 
      (set-det) 
      (= $Value $Result)))
  (= 
    (coerce Bool $Value $Result) 
    (, 
      (var $Value) 
      (set-det) 
      (= $Value $Result) 
      (freeze $Value 
        (coerce Bool $Value $Result))))
  (= 
    (coerce Bool $Value $Result) 
    (, 
      (is-list $Value) 
      (set-det) 
      (as-tf 
        (call-true $Value) $Result) 
      (set-list-value $Value $Result)))
   

  (= 
    (set-list-value $Value $Result) 
    (, 
      (nb-setarg 1 $Value echo) 
      (nb-setarg 1 $Value 
        (:: $Result))))


  (= 
    (is_self_eval_l_fa  S 1) True)
; eval_20(Eq,RetType,Depth,Self,['quote',Eval],RetVal):- !, Eval = RetVal, check_returnval(Eq,RetType,RetVal).
  (= 
    (is_self_eval_l_fa  quote $_) True)
  (= 
    (is_self_eval_l_fa  {...} $_) True)
  (= 
    (is_self_eval_l_fa  [...] $_) True)


  (= 
    (self-eval $X) 
    (notrace (self-eval0 $X)))


  (set-prolog-flag access-level system)

  (= 
    (hyde (/ $F $A)) 
    (, 
      (functor $P $F $A) 
      (redefine-system-predicate $P) 
      ($hide (/ $F $A)) 
      ($iso (/ $F $A))))

  (hyde (/ option-else 2))
  (hyde (/ atom 1))
  (hyde (/ quietly 1))
;:- 'hyde'(fake_notrace/1).
  (hyde (/ var 1))
  (hyde (/ is-list 1))
  (hyde (/ copy-term 2))
  (hyde (/ nonvar 1))
  (hyde (/ quietly 1))
;:- 'hyde'(option_value/2).



  (= 
    (is-metta-declaration (Cons  $F $_)) 
    (, 
      (== $F ->) 
      (set-det)))
  (= 
    (is-metta-declaration (Cons  $F (Cons  $H (Cons  $_ $T)))) 
    (, 
      (== $T Nil) 
      (is-metta-declaration-f $F $H)))


  (= 
    (is-metta-declaration-f $F $H) 
    (, 
      (== $F :<) 
      (set-det) 
      (nonvar $H)))
  (= 
    (is-metta-declaration-f $F $H) 
    (, 
      (== $F :>) 
      (set-det) 
      (nonvar $H)))
  (= 
    (is-metta-declaration-f $F $H) 
    (, 
      (== $F =) 
      (set-det) 
      (is-list $H) 
      (not (, (current-self $Space) (is-user-defined-head-f $Space $F)))))

; is_metta_declaration([F|T]):- is_list(T), is_user_defined_head([F]),!.


  (nb-setval self-space &self)

  (= 
    (evals-to $XX $Y) 
    (, 
      (=@= $Y $XX) 
      (set-det)))
  (= 
    (evals-to $XX $Y) 
    (, 
      (== $Y True) 
      (set-det) 
      (is-True $XX) 
      (set-det)))

;current_self(Space):- nb_current(self_space,Space).


  (= 
    (do-expander = $_ $X $X) 
    (set-det))
  (= 
    (do-expander : $_ $X $Y) 
    (each-then 
      (, 
        (set-det) 
        (get-type $X $Y)) 
      (= $X $Y)))


  (= 
    (get-type $Arg $Type) 
    (get-type $Arg $Type))



  (= 
    (eval-true $X) 
    (, 
      (compound $X) 
      (set-det) 
      (call $X)))
  (= 
    (eval-true $X) 
    (, 
      (eval-args $X $Y) 
      (once (or (var $Y) (not (is-False $Y))))))


  (= 
    (eval-args $X $Y) 
    (, 
      (current-self $Self) 
      (eval-args 100 $Self $X $Y)))
  (= 
    (eval-args $Depth $Self $X $Y) 
    (eval-args = $_ $Depth $Self $X $Y))
  (= 
    (eval-args $Eq $RetType $Depth $Self $X $Y) 
    (eval $Eq $RetType $Depth $Self $X $Y))


  (= 
    (eval $Depth $Self $X $Y) 
    (eval = $RetType $Depth $Self $X $Y))/*
eval_args(Eq,RetTyp e,Depth,Self,X,Y):-
   locally(set_MeTTa_flag(gc,true),
      rtrace_on_existence_error(
     eval(Eq,RetType,Depth,Self,X,Y))).
*/
;eval(Eq,RetType,Depth,_Self,X,_Y):- forall(between(6,Depth,_),write(' ')),writeqln(eval(Eq,RetType,X)),fail.


  (= 
    (eval $Eq $RetType $Dpth $Slf $X $Y) 
    (, 
      (var $X) 
      (nonvar $Y) 
      (set-det) 
      (= $X $Y)))
  (= 
    (eval $Eq $RetType $Dpth $Slf $X $Y) 
    (, 
      (notrace (self-eval $X)) 
      (set-det) 
      (= $Y $X)))
  (= 
    (eval $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (notrace (nonvar $Y)) 
      (var $RetType) 
      (get-type $Depth $Self $Y $RetType) 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $X $Y)))
  (= 
    (eval $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (notrace (nonvar $Y)) 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $X $XX) 
      (evals-to $XX $Y)))


  (= 
    (eval $Eq $RetType $Dpth $Slf 
      (Cons  $X $T) $Y) 
    (, 
      (== $T Nil) 
      (number $X) 
      (set-det) 
      (do-expander $Eq $RetType $X $YY) 
      (= $Y 
        (:: $YY))))

  (= 
    (eval $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (atom $Eq) 
      (\== $Eq =) 
      (\== $Eq match) 
      (set-det) 
      (call $Eq = $RetType $Depth $Self $X $Y)))/*
eval(Eq,RetType,Depth,Self,[F|X],Y):-
  (F=='superpose' ; ( option_value(no_repeats,false))),
  fake_notrace((D1 is Depth-1)),!,
  eval_11(Eq,RetType,D1,Self,[F|X],Y).
*/




  (= 
    (eval $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (set-det) 
      (eval-11 $Eq $RetType $Depth $Self $X $Y)));fake_notrace(allow_repeats_eval_(X)),

  (= 
    (eval $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (nop (notrace (no-repeats-var $YY) (is $D1 (- $Depth 1)))) 
      (set-det) 
      (eval-11 $Eq $RetType $D1 $Self $X $Y) 
      (notrace (not (\= $Y $YY)))))


  (= 
    (allow-repeats-eval- $_) 
    (set-det))
  (= 
    (allow-repeats-eval- $_) 
    (, 
      (option-value no-repeats False) 
      (set-det)))
  (= 
    (allow-repeats-eval- $X) 
    (, 
      (not (is-list $X)) 
      (set-det) 
      (fail)))
  (= 
    (allow-repeats-eval- (Cons  $F $_)) 
    (, 
      (atom $F) 
      (allow-repeats-eval-f $F)))

  (= 
    (allow_repeats_eval_f  superpose) True)
  (= 
    (allow_repeats_eval_f  collapse) True)


  (= 
    (debugging-metta $G) 
    (fake-notrace (if-then-else (is-debugging eval) (ignore $G) True)))



  (nodebug (metta eval))



  (= 
    (w-indent $Depth $Goal) 
    (not (not (fake-notrace (ignore (, (format ~N) (setup-call-cleanup (forall (between $Depth 101 $_) (write   )) $Goal (format ~N))))))))

  (= 
    (indentq $Depth $Term) 
    (not (not (fake-notrace (ignore (, (format ~N) (setup-call-cleanup (forall (between $Depth 101 $_) (write   )) (format ~q (:: $Term)) (format ~N))))))))


  (= 
    (indentq $DR $EX $AR 
      (retval $Term)) 
    (, 
      (nonvar $Term) 
      (set-det) 
      (indentq $DR $EX $AR $Term)))
  (= 
    (indentq $DR $EX $AR $Term) 
    (not (not (color-g-mesg #2f2f2f (fake-notrace (ignore (, (format ~N;) (format '~` t~d~5|:' (:: $EX)) (format '~` t~d~8|' (:: $DR)) (forall (between 1 $DR $_) (write      |)) (write -) (write $AR) (with-indents False (write-src $Term)) (format ~N))))))))



  (= 
    (with-debug $Flag $Goal) 
    (, 
      (is-debugging $Flag) 
      (set-det) 
      (call $Goal)))
  (= 
    (with-debug $Flag $Goal) 
    (, 
      (flag eval-num $_ 0) 
      (setup-call-cleanup 
        (set-debug $Flag True) 
        (call $Goal) 
        (set-debug $Flag False))))


  (= 
    (flag-to-var $Flag $Var) 
    (, 
      (atom $Flag) 
      (not (atom-concat trace-on- $_ $Flag)) 
      (set-det) 
      (atom-concat trace-on- $Flag $Var)))
  (= 
    (flag-to-var 
      (metta $Flag) $Var) 
    (, 
      (set-det) 
      (nonvar $Flag) 
      (flag-to-var $Flag $Var)))
  (= 
    (flag-to-var $Flag $Var) 
    (= $Flag $Var))


  (= 
    (set-debug $Flag $Val) 
    (, 
      (not (atom $Flag)) 
      (flag-to-var $Flag $Var) 
      (atom $Var) 
      (set-det) 
      (set-debug $Var $Val)))
  (= 
    (set-debug $Flag True) 
    (, 
      (set-det) 
      (debug (metta $Flag)) 
      (flag-to-var $Flag $Var) 
      (set-option-value $Var True)))
  (= 
    (set-debug $Flag False) 
    (, 
      (nodebug (metta $Flag)) 
      (flag-to-var $Flag $Var) 
      (set-option-value $Var False)))

  (= 
    (if-trace 
      (or $Flag True) $Goal) 
    (, 
      (set-det) 
      (real-notrace (catch-err (ignore $Goal) $E (fbug (--> $E (if-trace (or $Flag True) $Goal)))))))
  (= 
    (if-trace $Flag $Goal) 
    (real-notrace (catch-err (ignore (, (is-debugging $Flag) $Goal)) $E (fbug (--> $E (if-trace $Flag $Goal))))))


;maybe_efbug(SS,G):- efbug(SS,G)*-> if_trace(eval,fbug(SS=G)) ; fail.

  (= 
    (maybe-efbug $_ $G) 
    (call $G))
;efbug(P1,G):- call(P1,G).

  (= 
    (efbug $_ $G) 
    (call $G))




  (= 
    (is-debugging $Flag) 
    (, 
      (var $Flag) 
      (set-det) 
      (fail)))
  (= 
    (is-debugging (or $A $B)) 
    (, 
      (set-det) 
      (or 
        (is-debugging $A) 
        (is-debugging $B))))
  (= 
    (is-debugging (, $A $B)) 
    (, 
      (set-det) 
      (is-debugging $A) 
      (is-debugging $B)))
  (= 
    (is-debugging (not $Flag)) 
    (, 
      (set-det) 
      (not (is-debugging $Flag))))
  (= 
    (is-debugging $Flag) 
    (, 
      (== $Flag False) 
      (set-det) 
      (fail)))
  (= 
    (is-debugging $Flag) 
    (, 
      (== $Flag True) 
      (set-det)))
  (= 
    (is-debugging $Flag) 
    (, 
      (debugging 
        (metta $Flag) $TF) 
      (set-det) 
      (== $TF True)))
  (= 
    (is-debugging $Flag) 
    (, 
      (debugging $Flag $TF) 
      (set-det) 
      (== $TF True)))
  (= 
    (is-debugging $Flag) 
    (, 
      (flag-to-var $Flag $Var) 
      (if-then-else 
        (option-value $Var True) True 
        (if-then 
          (\== $Flag $Var) 
          (is-debugging $Var)))))


  (nodebug (metta overflow))



  (= 
    (eval-00 $Eq $RetType $Dpth $Slf $X $Y) 
    (, 
      (self-eval $X) 
      (set-det) 
      (= $Y $X)))
  (= 
    (eval-00 $Eq $RetType $Depth $Slf $X $Y) 
    (, 
      (< $Depth 1) 
      (set-det) 
      (= $X $Y) 
      (if-then-else 
        (not trace-on-overflow) True 
        (, 
          (flag eval-num $_ 0) 
          (debug (metta eval))))))
  (= 
    (eval-00 $Eq $RetType $Depth $Self $X $YO) 
    (, 
      (is $Depth2 
        (- $Depth 1)) 
      (copy-term $X $XX) 
      (eval-20 $Eq $RetType $Depth $Self $X $M) 
      (if-then-else 
        (, 
          (\=@= $M $XX) 
          (not (self-eval $M))) 
        (eval-00 $Eq $RetType $Depth2 $Self $M $Y) 
        (= $Y $M)) 
      (once (if-or-else (subst-args $Eq $RetType $Depth2 $Self $Y $YO) (if-or-else (finish-eval $Depth2 $Self $Y $YO) (= $Y $YO))))))




  (= 
    (eval-11 $Eq $RetType $Dpth $Slf $X $Y) 
    (, 
      (self-eval $X) 
      (set-det) 
      (= $Y $X)))
  (= 
    (eval-11 $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (fail) 
      (not (is-debugging eval)) 
      (set-det) 
      (is $D1 
        (- $Depth 1)) 
      (eval-00 $Eq $RetType $D1 $Self $X $Y)))
  (= 
    (eval-11 $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (fake-notrace (, (flag eval-num $EX0 (+ $EX0 1)) (is $EX (mod $EX0 500)) (is $D1 (- $Depth 1)) (is $DR (- 99 $D1)) (= $PrintRet $_))) 
      (option-else trace-length $Max 100) 
      (option-else trace-depth $DMax 30) 
      (quietly (if-t (, (nop stop-rtrace) (> $EX $Max)) (, (set-debug eval False) (is $MaxP1 (+ $Max 1)) (nop (format '; Switched off tracing. For a longer trace: !(pragma! trace-length ~w)' (:: $MaxP1))) (nop (, (start-rtrace) (rtrace)))))) 
      (nop (notrace (no-repeats-var $YY))) 
      (if-t 
        (< $DR $DMax) 
        (if-trace eval 
          (, 
            (= $PrintRet 1) 
            (indentq $DR $EX --> 
              (eval $X))))) 
      (= $Ret 
        (retval fail)) 
      (call-cleanup 
        (, 
          (or 
            (each-then 
              (eval-00 $Eq $RetType $D1 $Self $X $Y) True) 
            (, 
              (fail) 
              (trace) 
              (eval-00 $Eq $RetType $D1 $Self $X $Y))) 
          (fake-notrace (, (not (\= $Y $YY)) (nb-setarg 1 $Ret $Y)))) 
        (if-then-else 
          (== $PrintRet 1) 
          (indentq $DR $EX <-- $Ret) 
          (fake-notrace (ignore (, (\=@= $Y $X) (if-t (< $DR $DMax) (if-trace eval (indentq $DR $EX <-- $Ret)))))))) 
      (if-then-else 
        (\=@= $Ret 
          (retval fail)) True 
        (, 
          (fail) 
          (trace) 
          (eval-00 $Eq $RetType $D1 $Self $X $Y) 
          (fail)))));set_debug(overflow,false),




; eval_15(Eq,RetType,Depth,Self,X,Y):- !, eval_20(Eq,RetType,Depth,Self,X,Y).


  (= 
    (eval-15 $Eq $RetType $Depth $Self $X $Y) 
    (or 
      (each-then 
        (, 
          (eval-20 $Eq $RetType $Depth $Self $X $Y) 
          (if-t 
            (var $Y) 
            (fbug (, (eval-20 $Eq $RetType $Depth $Self $X $Y) (var $Y)))) 
          (nonvar $Y)) True) 
      (, 
        (eval-failed $Depth $Self $X $Y) 
        (fail))))









  (discontiguous (/ eval-20 6))
  (discontiguous (/ eval-40 6))
;:- discontiguous eval_30fz/5.
;:- discontiguous eval_31/5.
;:- discontiguous eval_60/5.


  (= 
    (eval-20 $Eq $RetType $Dpth $Slf $Name $Y) 
    (, 
      (atom $Name) 
      (set-det) 
      (if-then-else 
        (nb-current $Name $X) 
        (do-expander $Eq $RetType $X $Y) 
        (= $Y $Name))))


  (= 
    (eval-20 $Eq $RetType $Dpth $Slf $X $Y) 
    (, 
      (self-eval $X) 
      (set-det) 
      (do-expander $Eq $RetType $X $Y)))

; =================================================================
; =================================================================
; =================================================================
;  VAR HEADS/ NON-LISTS
; =================================================================
; =================================================================
; =================================================================

  (= 
    (eval-20 $Eq $RetType $Dpth $Slf 
      (Cons  $X $T) $Y) 
    (, 
      (== $T Nil) 
      (not (callable $X)) 
      (set-det) 
      (do-expander $Eq $RetType $X $YY) 
      (= $Y 
        (:: $YY))))
;eval_20(Eq,RetType,_Dpth,Self,[X|T],Y):- T==[],  atom(X),
;   \+ is_user_defined_head_f(Self,X),
;   do_expander(Eq,RetType,X,YY),!,Y=[YY].

  (= 
    (eval-20 $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (atom $Eq) 
      (\== $Eq =) 
      (set-det) 
      (call $Eq = $RetType $Depth $Self $X $Y)))


  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (Cons  $V $VI) $VVO) 
    (, 
      (not (is-list $VI)) 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $VI $VM) 
      (if-then-else 
        (\== $VM $VI) 
        (eval $Eq $RetType $Depth $Self 
          (Cons  $V $VM) $VVO) 
        (, 
          (eval $Eq $RetType $Depth $Self $V $VV) 
          (if-then-else 
            (\== $V $VV) 
            (eval $Eq $RetType $Depth $Self 
              (Cons  $VV $VI) $VVO) 
            (= $VVO 
              (Cons  $V $VI)))))))

  (= 
    (eval-20 $Eq $RetType $Dpth $Slf $X $Y) 
    (, 
      (not (is-list $X)) 
      (set-det) 
      (do-expander $Eq $RetType $X $Y)))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (Cons  $V $VI) 
      (Cons  $V $VO)) 
    (, 
      (var $V) 
      (is-list $VI) 
      (set-det) 
      (maplist 
        (eval $Eq $ArgRetType $Depth $Self) $VI $VO)))

  (= 
    (eval-20 $_ $_ $_ $_ 
      (:: echo $Value) $Value) 
    (set-det))
  (= 
    (eval-20 = $Type $_ $_ 
      (:: coerce $Type $Value) $Result) 
    (, 
      (set-det) 
      (coerce $Type $Value $Result)))

; =================================================================
; =================================================================
; =================================================================
;  TRACE/PRINT
; =================================================================
; =================================================================
; =================================================================

  (= 
    (eval-20 $Eq $RetType $Dpth $Slf 
      (:: repl!) $Y) 
    (, 
      (set-det) 
      (repl) 
      (check-returnval $Eq $RetType $Y)))
;eval_20(Eq,RetType,Depth,Self,['enforce',Cond],Res):- !, enforce_true(Eq,RetType,Depth,Self,Cond,Res).
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: 
        (set-det) $Cond) $Res) 
    (, 
      (set-det) 
      (call (eval $Eq $RetType $Depth $Self $Cond $Res))))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: rtrace! $Cond) $Res) 
    (, 
      (set-det) 
      (rtrace (eval $Eq $RetType $Depth $Self $Cond $Res))))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: trace $Cond) $Res) 
    (, 
      (set-det) 
      (with-debug eval 
        (eval $Eq $RetType $Depth $Self $Cond $Res))))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: time $Cond) $Res) 
    (, 
      (set-det) 
      (time-eval 
        (eval $Cond) 
        (eval $Eq $RetType $Depth $Self $Cond $Res))))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: print $Cond) $Res) 
    (, 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $Cond $Res) 
      (format ~N) 
      (print $Res) 
      (format ~N)))
; !(println! $1)
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (Cons  println! $Cond) $Res) 
    (, 
      (set-det) 
      (maplist 
        (eval $Eq $RetType $Depth $Self) $Cond 
        (Cons  $Res $Out)) 
      (format ~N) 
      (maplist write-src 
        (Cons  $Res $Out)) 
      (format ~N)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (Cons  trace! 
        (Cons  $A $Cond)) $Res) 
    (, 
      (set-det) 
      (maplist 
        (eval $Eq $RetType $Depth $Self) 
        (Cons  $A $Cond) 
        (Cons  $AA $Result)) 
      (last $Result $Res) 
      (format ~N) 
      (maplist write-src 
        (:: $AA)) 
      (format ~N)))

;eval_20(Eq,RetType,Depth,Self,['trace!',A,B],C):- !,eval(Eq,RetType,Depth,Self,B,C),format('~N'),fbug(['trace!',A,B]=C),format('~N').
;eval_20(Eq,RetType,_Dpth,_Slf,['trace!',A],A):- !, format('~N'),fbug(A),format('~N').

  (= 
    (eval-20 $Eq $RetType $Dpth $Slf $List $YY) 
    (, 
      (is-list $List) 
      (maplist self-eval $List) 
      (= $List 
        (Cons  $H $_)) 
      (not (atom $H)) 
      (set-det) 
      (= $Y $List) 
      (do-expander $Eq $RetType $Y $YY)))

  (= 
    (eval-20 $Eq $ListOfRetType $Depth $Self 
      (:: TupleConcat $A $B) $OO) 
    (, 
      (fail) 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $A $AA) 
      (eval $Eq $RetType $Depth $Self $B $BB) 
      (append $AA $BB $OO)))
  (= 
    (eval-20 $Eq $OuterRetType $Depth $Self 
      (:: range $A $B) $OO) 
    (, 
      (or 
        (is-list $A) 
        (is-list $B)) 
      (eval $Eq $RetType $Depth $Self $A $AA) 
      (eval $Eq $RetType $Depth $Self $B $BB) 
      (\=@= 
        (+ $AA $BB) 
        (+ $A $B)) 
      (eval-20 $Eq $OuterRetType $Depth $Self 
        (:: range $AA $BB) $OO) 
      (set-det)))


;eval_20(Eq,RetType,Depth,Self,['colapse'|List], Flat):- !, maplist(eval(Eq,RetType,Depth,Self),List,Res),flatten(Res,Flat).

  (= 
    (eval-20 $Eq $OuterRetType $Depth $Self 
      (:: $P $_ $B) $_) 
    (, 
      (== $P /) 
      (== $B 0) 
      (set-det) 
      (fail)))


; =================================================================
; =================================================================
; =================================================================
;  UNIT TESTING/assert<STAR>
; =================================================================
; =================================================================
; =================================================================


  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: assertTrue $X) $TF) 
    (, 
      (set-det) 
      (eval $Eq $RetType $Depth $Self 
        (:: assertEqual $X True) $TF)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: assertFalse $X) $TF) 
    (, 
      (set-det) 
      (eval $Eq $RetType $Depth $Self 
        (:: assertEqual $X False) $TF)))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: assertEqual $X $Y) $RetVal) 
    (, 
      (set-det) 
      (loonit-assert-source-tf 
        (:: assertEqual $X $Y) 
        (, 
          (bagof-eval $Eq $RetType $Depth $Self $X $XX) 
          (bagof-eval $Eq $RetType $Depth $Self $Y $YY)) 
        (equal-enough-for-test $XX $YY) $TF) 
      (if-then-else 
        (== $TF True) 
        (return-empty $RetVal) 
        (= $RetVal 
          (:: got $XX 
            (:: expected $YY))))))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: assertNotEqual $X $Y) $RetVal) 
    (, 
      (set-det) 
      (loonit-assert-source-tf 
        (:: assertEqual $X $Y) 
        (, 
          (bagof-eval $Eq $RetType $Depth $Self $X $XX) 
          (bagof-eval $Eq $RetType $Depth $Self $Y $YY)) 
        (not (equal-enough $XX $YY)) $TF) 
      (if-then-else 
        (== $TF True) 
        (return-empty $RetVal) 
        (= $RetVal 
          (:: got $XX expected $YY)))))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: assertEqualToResult $X $Y) $RetVal) 
    (, 
      (set-det) 
      (loonit-assert-source-tf 
        (:: assertEqualToResult $X $Y) 
        (, 
          (bagof-eval $Eq $RetType $Depth $Self $X $XX) 
          (sort $Y $YY)) 
        (equal-enough-for-test $XX $YY) $TF) 
      (if-then-else 
        (== $TF True) 
        (return-empty $RetVal) 
        (= $RetVal 
          (:: got $XX expected $YY)))))



  (= 
    (loonit-assert-source-tf $Src $Goal $Check $TF) 
    (, 
      (copy-term $Goal $OrigGoal) 
      (flag eval-num $_ 0) 
      (loonit-asserts $Src 
        (time-eval '
; EVAL TEST
;' $Goal) $Check) 
      (as-tf $Check $TF) 
      (set-det) 
      (ignore (, (once (or (, (= $TF True) (trace-on-pass)) (, (= $TF False) (trace-on-fail)))) (with-debug (metta eval) (time-eval Trace $OrigGoal))))))


  (= 
    (sort-result $Res $Res) 
    (, 
      (not (compound $Res)) 
      (set-det)))
  (= 
    (sort-result 
      (Cons  $And $Res1) $Res) 
    (, 
      (is-and $And) 
      (set-det) 
      (sort-result $Res1 $Res)))
  (= 
    (sort-result 
      (Cons  $T 
        (Cons  $And $Res1)) $Res) 
    (, 
      (is-and $And) 
      (set-det) 
      (sort-result 
        (Cons  $T $Res1) $Res)))
  (= 
    (sort-result 
      (Cons  $H $T) 
      (Cons  $HH $TT)) 
    (, 
      (set-det) 
      (sort-result $H $HH) 
      (sort-result $T $TT)))
  (= 
    (sort_result  $Res $Res) True)


  (= 
    (unify_enough  $L $L) True)
  (= 
    (unify-enough $L $C) 
    (, 
      (into-list-args $L $LL) 
      (into-list-args $C $CC) 
      (unify-lists $CC $LL)))

;unify_lists(C,L):- \+ compound(C),!,L=C.
;unify_lists(L,C):- \+ compound(C),!,L=C.

  (= 
    (unify-lists $L $L) 
    (set-det))
  (= 
    (unify-lists 
      (Cons  $C $CC) 
      (Cons  $L $LL)) 
    (, 
      (unify-enough $L $C) 
      (set-det) 
      (unify-lists $CC $LL)))


  (= 
    (equal-enough $R $V) 
    (, 
      (is-list $R) 
      (is-list $V) 
      (sort $R $RR) 
      (sort $V $VV) 
      (set-det) 
      (equal-enouf $RR $VV) 
      (set-det)))
  (= 
    (equal-enough $R $V) 
    (, 
      (copy-term $R $RR) 
      (copy-term $V $VV) 
      (equal-enouf $R $V) 
      (set-det) 
      (=@= $R $RR) 
      (=@= $V $VV)))

;s_empty(X):- var(X),!.

  (= 
    (s-empty $X) 
    (, 
      (var $X) 
      (set-det) 
      (fail)))

  (= 
    (is_empty  ) True)
  (= 
    (is_empty  ()) True)
  (= 
    (is-empty (:: $X)) 
    (, 
      (set-det) 
      (is-empty $X)))

  (= 
    (has-let-star $Y) 
    (sub-var let* $Y))


  (= 
    (equal-enough-for-test $X $Y) 
    (, 
      (is-empty $X) 
      (set-det) 
      (is-empty $Y)))
  (= 
    (equal-enough-for-test $X $Y) 
    (, 
      (has-let-star $Y) 
      (set-det) 
      (not (is-empty $X))))
  (= 
    (equal-enough-for-test $X $Y) 
    (, 
      (must-det-ll (, (subst-vars $X $XX) (subst-vars $Y $YY))) 
      (set-det) 
      (equal-enough-for-test2 $XX $YY) 
      (set-det)))

  (= 
    (equal-enough-for-test2 $X $Y) 
    (equal-enough $X $Y))


  (= 
    (equal-enouf $R $V) 
    (, 
      (is-ftVar $R) 
      (is-ftVar $V) 
      (= $R $V) 
      (set-det)))
  (= 
    (equal-enouf $X $Y) 
    (, 
      (is-empty $X) 
      (set-det) 
      (is-empty $Y)))
  (= 
    (equal-enouf $X $Y) 
    (, 
      (symbol $X) 
      (symbol $Y) 
      (atom-concat & $_ $X) 
      (atom-concat Grounding $_ $Y)))
  (= 
    (equal-enouf $R $V) 
    (, 
      (=@= $R $V) 
      (= $R $V) 
      (set-det)))
  (= 
    (equal-enouf $_ $V) 
    (, 
      (=@= $V ...) 
      (set-det)))
  (= 
    (equal-enouf $L $C) 
    (, 
      (is-list $L) 
      (into-list-args $C $CC) 
      (set-det) 
      (equal-enouf-l $CC $L)))
  (= 
    (equal-enouf $C $L) 
    (, 
      (is-list $L) 
      (into-list-args $C $CC) 
      (set-det) 
      (equal-enouf-l $CC $L)))
;equal_enouf(R,V):- (var(R),var(V)),!, R=V.
  (= 
    (equal-enouf $R $V) 
    (, 
      (or 
        (var $R) 
        (var $V)) 
      (set-det) 
      (== $R $V)))
  (= 
    (equal-enouf $R $V) 
    (, 
      (number $R) 
      (number $V) 
      (set-det) 
      (is $RV 
        (abs (- $R $V))) 
      (< $RV 0.03)))
  (= 
    (equal-enouf $R $V) 
    (, 
      (atom $R) 
      (set-det) 
      (atom $V) 
      (has-unicode $R) 
      (has-unicode $V)))
  (= 
    (equal-enouf $R $V) 
    (, 
      (or 
        (not (compound $R)) 
        (not (compound $V))) 
      (set-det) 
      (== $R $V)))
  (= 
    (equal-enouf $L $C) 
    (, 
      (into-list-args $L $LL) 
      (into-list-args $C $CC) 
      (set-det) 
      (equal-enouf-l $CC $LL)))


  (= 
    (equal-enouf-l 
      (Cons  $S1 
        (Cons  $V1 $_)) 
      (Cons  $S2 
        (Cons  $V2 $_))) 
    (, 
      (== $S1 State) 
      (== $S2 State) 
      (set-det) 
      (equal-enouf $V1 $V2)))
  (= 
    (equal-enouf-l $C $L) 
    (, 
      (not (compound $C)) 
      (set-det) 
      (=@= $L $C)))
  (= 
    (equal-enouf-l $L $C) 
    (, 
      (not (compound $C)) 
      (set-det) 
      (=@= $L $C)))
  (= 
    (equal-enouf-l 
      (Cons  $C $CC) 
      (Cons  $L $LL)) 
    (, 
      (set-det) 
      (equal-enouf $L $C) 
      (set-det) 
      (equal-enouf-l $CC $LL)))



  (= 
    (has-unicode $A) 
    (, 
      (atom-codes $A $Cs) 
      (member $N $Cs) 
      (> $N 127) 
      (set-det)))


  (= 
    (set_last_error  $_) True)

; =================================================================
; =================================================================
; =================================================================
;  SPACE EDITING
; =================================================================
; =================================================================
; =================================================================


  (= 
    (eval-20 $Eq $RetType $Dpth $Slf 
      (:: new-space) $Space) 
    (, 
      (set-det) 
      (new-space $Space) 
      (check-returnval $Eq $RetType $Space)))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (Cons  $Op 
        (Cons  $Space $Args)) $Res) 
    (, 
      (is-space-op $Op) 
      (set-det) 
      (eval-space-start $Eq $RetType $Depth $Self 
        (Cons  $Op 
          (Cons  $Space $Args)) $Res)))



  (= 
    (eval-space-start $Eq $RetType $Depth $Self 
      (:: $Op $Other $Atom) $Res) 
    (, 
      (or 
        (== $Atom Nil) 
        (or 
          (== $Atom ) 
          (== $Atom Nil))) 
      (set-det) 
      (return-empty False $Res) 
      (check-returnval $Eq $RetType $Res)))

  (= 
    (eval-space-start $Eq $RetType $Depth $Self 
      (Cons  $Op 
        (Cons  $Other $Args)) $Res) 
    (, 
      (into-space $Depth $Self $Other $Space) 
      (eval-space $Eq $RetType $Depth $Self 
        (Cons  $Op 
          (Cons  $Space $Args)) $Res)))



  (= 
    (eval-space $Eq $RetType $Dpth $Slf 
      (:: add-atom $Space $PredDecl) $Res) 
    (, 
      (set-det) 
      (do-metta python load $Space $PredDecl $TF) 
      (return-empty $TF $Res) 
      (check-returnval $Eq $RetType $Res)))

  (= 
    (eval-space $Eq $RetType $Dpth $Slf 
      (:: remove-atom $Space $PredDecl) $Res) 
    (, 
      (set-det) 
      (do-metta python unload $Space $PredDecl $TF) 
      (return-empty $TF $Res) 
      (check-returnval $Eq $RetType $Res)))

  (= 
    (eval-space $Eq $RetType $Dpth $Slf 
      (:: atom-count $Space) $Count) 
    (, 
      (set-det) 
      (ignore (= $RetType Number)) 
      (ignore (= $Eq =)) 
      (findall $Atom 
        (get-metta-atom-from $Space $Atom) $Atoms) 
      (length $Atoms $Count)))

  (= 
    (eval-space $Eq $RetType $Dpth $Slf 
      (:: atom-replace $Space $Rem $Add) $TF) 
    (, 
      (set-det) 
      (copy-term $Rem $RCopy) 
      (as-tf 
        (, 
          (metta-atom-iter-ref $Space $RCopy $Ref) 
          (=@= $RCopy $Rem) 
          (erase $Ref) 
          (do-metta $Space load $Add)) $TF) 
      (check-returnval $Eq $RetType $TF)))

  (= 
    (eval-space $Eq $RetType $Dpth $Slf 
      (:: get-atoms $Space) $Atom) 
    (, 
      (set-det) 
      (ignore (= $RetType Atom)) 
      (get-metta-atom-from $Space $Atom) 
      (check-returnval $Eq $RetType $Atom)))

; Match-ELSE
  (= 
    (eval-space $Eq $RetType $Depth $Self 
      (:: match $Other $Goal $Template $Else) $Template) 
    (, 
      (set-det) 
      (or 
        (each-then 
          (, 
            (eval-space $Eq $RetType $Depth $Self 
              (:: match $Other $Goal $Template) $Template) 
            (not (return-empty Nil $Template))) True) 
        (= $Template $Else))))
; Match-TEMPLATE

  (= 
    (eval-space $Eq $RetType $Depth $Self 
      (:: match $Other $Goal $Template) $Res) 
    (, 
      (set-det) 
      (metta-atom-iter $Eq $Depth $Self $Other $Goal) 
      (= $Template $Res)))


  (= 
    (metta-atom-iter $Eq $Depth $Slf $Other 
      (:: $Equal 
        (Cons  $F $H) $B)) 
    (, 
      (== $Eq $Equal) 
      (set-det) 
      (add-atom  $Other 
        ($Eq 
          (Cons  $F $H) $B)))); trace,


  (= 
    (metta-atom-iter $Eq $Depth $_ $_ $_) 
    (, 
      (< $Depth 3) 
      (set-det) 
      (fail)))/*
metta_atom_iter(Eq,Depth,Self,Other,[Equal,[F|H],B]):- Eq == Equal,!,  ; trace,
   metta_defn(Eq,Other,[F|H],BB),
   eval_sometimes(Eq,_RetType,Depth,Self,B,BB).
*/

  (= 
    (metta-atom-iter $Eq $Depth $Self $Other 
      (Cons  $And $Y)) 
    (, 
      (atom $And) 
      (is-and $And) 
      (set-det) 
      (if-then-else 
        (== $Y Nil) True 
        (, 
          (is $D2 
            (- $Depth 1)) 
          (= $Y 
            (Cons  $H $T)) 
          (metta-atom-iter $Eq $D2 $Self $Other $H) 
          (metta-atom-iter $Eq $D2 $Self $Other 
            (Cons  $And $T))))))

;metta_atom_iter(Eq,Depth,_Slf,Other,X):- dcall0000000000(eval_args_true(Eq,_RetType,Depth,Other,X)).
  (= 
    (metta-atom-iter $Eq $Depth $Slf $Other $X) 
    (, 
      (dcall0000000000 (eval-args-true $Eq $RetType $Depth $Other $XX)) 
      (= $X $XX)));copy_term(X,XX),




  (= 
    (eval-args-true-r $Eq $RetType $Depth $Self $X $TF1) 
    (or 
      (, 
        (eval-ne $Eq $RetType $Depth $Self $X $TF1) 
        (not (is-False $TF1))) 
      (, 
        (not (is-False $TF1)) 
        (metta-atom-true $Eq $Depth $Self $Self $X))))


  (= 
    (eval-args-true $Eq $RetType $Depth $Self $X) 
    (or 
      (metta-atom-true $Eq $Depth $Self $Self $X) 
      (, 
        (nonvar $X) 
        (eval-ne $Eq $RetType $Depth $Self $X $TF1) 
        (not (is-False $TF1)))))


  (= 
    (metta-atom-true $Eq $Dpth $Slf $Other $H) 
    (get-metta-atom $Eq $Other $H))
; is this OK?
  (= 
    (metta-atom-true $Eq $Depth $Self $Other $H) 
    (, 
      (nonvar $H) 
      (add-atom  $Other 
        ($Eq $H $B)) 
      (is $D2 
        (- $Depth 1)) 
      (eval-args-true $Eq $_ $D2 $Self $B)))
; is this OK?
  (= 
    (metta-atom-true $Eq $Depth $Self $Other $H) 
    (, 
      (\== $Other $Self) 
      (nonvar $H) 
      (add-atom  $Other 
        ($Eq $H $B)) 
      (is $D2 
        (- $Depth 1)) 
      (eval-args-true $Eq $_ $D2 $Other $B)))




  (= 
    (metta-atom-iter-ref $Other $H $Ref) 
    (clause 
      (asserted-metta-atom $Other $H) True $Ref))


; =================================================================
; =================================================================
; =================================================================
;  CASE/SWITCH
; =================================================================
; =================================================================
; =================================================================
; Macro: case

  (nodebug (metta case))


  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (Cons  $P 
        (Cons  $X $More)) $YY) 
    (, 
      (is-list $X) 
      (= $X 
        (:: $_ $_ $_)) 
      (simple-math $X) 
      (eval-selfless-2 $X $XX) 
      (\=@= $X $XX) 
      (set-det) 
      (eval-20 $Eq $RetType $Depth $Self 
        (Cons  $P 
          (Cons  $XX $More)) $YY)))
; if there is only a void then always return nothing for each Case
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: case $A 
        (:: (:: $Void $_))) $Res) 
    (, 
      (== %void% $Void) 
      (eval $Eq $UnkRetType $Depth $Self $A $_) 
      (set-det) 
      (= $Res Nil)))

; if there is nothing for case just treat like a collapse
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: case $A Nil) $Empty) 
    (, 
      (set-det) 
      (once (eval $Eq $RetType2 $Depth $Self $A $_)) 
      (return-empty Nil $Empty)));forall(eval(Eq,_RetType2,Depth,Self,Expr,_),true),


; Macro: case
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (Cons  case 
        (Cons  $A 
          (Cons  $CL $T))) $Res) 
    (, 
      (set-det) 
      (must-det-ll (== $T Nil)) 
      (into-case-list $CL $CASES) 
      (findall 
        (- $Key $Value) 
        (, 
          (nth0 $Nth $CASES $Case0) 
          (is-case $Key $Case0 $Value) 
          (if-trace 
            (metta case) 
            (, 
              (format ~N) 
              (writeqln (= (c $Nth $Key) $Value))))) $KVs) 
      (set-det) 
      (eval-case $Eq $RetType $Depth $Self $A $KVs $Res)))


  (= 
    (eval-case $Eq $CaseRetType $Depth $Self $A $KVs $Res) 
    (, 
      (or 
        (each-then 
          (, 
            (eval $Eq $UnkRetType $Depth $Self $A $AA) 
            (if-trace case 
              (writeqln (= case $A))) 
            (if-trace 
              (metta case) 
              (writeqln (= switch $AA))) 
            (if-then-else 
              (select-case $Depth $Self $AA $KVs $Value) True 
              (, 
                (member 
                  (- $Void $Value) $KVs) 
                (== $Void %void%)))) True) 
        (, 
          (member 
            (- $Void $Value) $KVs) 
          (== $Void %void%))) 
      (eval $Eq $CaseRetType $Depth $Self $Value $Res)))

  
  (= 
    (select-case $Depth $Self $AA $Cases $Value) 
    (if-then-else 
      (best-key $AA $Cases $Value) True 
      (, 
        (maybe-special-keys $Depth $Self $Cases $CasES) 
        (if-then-else 
          (best-key $AA $CasES $Value) True 
          (, 
            (member 
              (- $Void $Value) $CasES) 
            (== $Void %void%))))))

  
  (= 
    (best-key $AA $Cases $Value) 
    (if-then-else 
      (, 
        (member 
          (- $Match $Value) $Cases) 
        (== $AA $Match)) True 
      (if-then-else 
        (, 
          (member 
            (- $Match $Value) $Cases) 
          (=@= $AA $Match)) True 
        (, 
          (member 
            (- $Match $Value) $Cases) 
          (= $AA $Match)))))

	
  (= 
    (into-case-list $CASES $CASES) 
    (, 
      (is-list $CASES) 
      (set-det)))
		
  (= 
    (is-case $AA 
      (:: $AA $Value) $Value) 
    (set-det))
		
  (= 
    (is_case  $AA 
      (Cons  $AA $Value) $Value) True)

   
  (= 
    (maybe-special-keys $Depth $Self 
      (Cons  
        (- $K $V) $KVI) 
      (Cons  
        (- $AK $V) $KVO)) 
    (, 
      (eval $Depth $Self $K $AK) 
      (\=@= $K $AK) 
      (set-det) 
      (maybe-special-keys $Depth $Self $KVI $KVO)))
   
  (= 
    (maybe-special-keys $Depth $Self 
      (Cons  $_ $KVI) $KVO) 
    (maybe-special-keys $Depth $Self $KVI $KVO))
   
  (= 
    (maybe_special_keys  $Depth $Self () ()) True)


; =================================================================
; =================================================================
; =================================================================
;  COLLAPSE/SUPERPOSE
; =================================================================
; =================================================================
; =================================================================



;[collapse,[1,2,3]]

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: collapse $List) $Res) 
    (, 
      (set-det) 
      (bagof-eval $Eq $RetType $Depth $Self $List $Res)))

  (= 
    (eval-20 $Eq $RetType $Depth $Self $PredDecl $Res) 
    (, 
      (= $Do_more_defs 
        (do-more-defs True)) 
      (get-atoms  &self 
        (= 
          (eval_21  $Eq $RetType $Depth $Self $PredDecl $Res) $Body)) 
      (== $Do_more_defs 
        (do-more-defs True)) 
      (call-ndet $Body $DET) 
      (nb-setarg 1 $Do_more_defs False) 
      (if-then-else 
        (== $DET True) 
        (set-det) True)))


  (= 
    (eval-21 $Eq $RetType $Depth $Self 
      (:: fb-member $Res $List) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (fb-member $Res $List) $TF)))
  (= 
    (eval-21 $Eq $RetType $Depth $Self 
      (:: fb-member $List) $Res) 
    (, 
      (set-det) 
      (fb-member $Res $List)))


  (= 
    (eval-21 $Eq $RetType $Depth $Self 
      (:: CollapseCardinality $List) $Len) 
    (, 
      (set-det) 
      (bagof-eval $Eq $RetType $Depth $Self $List $Res) 
      (length $Res $Len)))
  (= 
    (eval-21 $Eq $RetType $Depth $Self 
      (:: TupleCount $List) $Len) 
    (, 
      (set-det) 
      (bagof-eval $Eq $RetType $Depth $Self $List $Res) 
      (length $Res $Len)))/*
eval_21(_Eq,_RetType,_Depth,_Self,['TupleCount', [N]],N):- number(N),!.


*/

  (= 
    (eval-21 $Eq $RetType $Depth $Self 
      (:: tuple-count $List) $Len) 
    (, 
      (set-det) 
      (length $List $Len)))

;[superpose,[1,2,3]]

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: superpose $List) $Res) 
    (, 
      (set-det) 
      (or 
        (each-then 
          (, 
            (is-user-defined-head $Eq $Self $List) 
            (eval $Eq $RetType $Depth $Self $List $UList) 
            (\=@= $List $UList)) 
          (eval-20 $Eq $RetType $Depth $Self 
            (:: superpose $UList) $Res)) 
        (or 
          (each-then 
            (, 
              (member $E $List) 
              (eval $Eq $RetType $Depth $Self $E $Res)) True) 
          (return-empty Nil $Res))) 
      (not (= $Res ))))

;[sequential,[1,2,3]]
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: sequential $List) $Res) 
    (, 
      (set-det) 
      (or 
        (each-then 
          (, 
            (fail) 
            (is-user-defined-head $Eq $Self $List) 
            (eval $Eq $RetType $Depth $Self $List $UList) 
            (\=@= $List $UList)) 
          (eval-20 $Eq $RetType $Depth $Self 
            (:: sequential $UList) $Res)) 
        (or 
          (each-then 
            (, 
              (member $E $List) 
              (eval-ne $Eq $RetType $Depth $Self $E $Res)) True) 
          (return-empty Nil $Res)))))



  (= 
    (get-sa-p1 $P3 $E $Cmpd $SA) 
    (, 
      (compound $Cmpd) 
      (get-sa-p2 $P3 $E $Cmpd $SA)))

  (= 
    (get-sa-p2 $P3 $E $Cmpd 
      (call $P3 $N1 $Cmpd)) 
    (arg $N1 $Cmpd $E))
  (= 
    (get-sa-p2 $P3 $E $Cmpd $SA) 
    (, 
      (arg $_ $Cmpd $Arg) 
      (get-sa-p1 $P3 $E $Arg $SA)))

  (= 
    (eval20-failed $Eq $RetType $Depth $Self $Term $Res) 
    (, 
      (fake-notrace (, (get-sa-p1 setarg $ST $Term $P1) (compound $ST) (= $ST (:: $F $List)) (== $F superpose) (nonvar $List) (call $P1 $Var))) 
      (set-det) 
      (member $Var $List) 
      (eval $Eq $RetType $Depth $Self $Term $Res))); ST\==Term,
;maplist(atomic,List),
;max_counting(F,20),




  (= 
    (sub_sterm  $Sub $Sub) True)
  (= 
    (sub-sterm $Sub $Term) 
    (sub-sterm1 $Sub $Term))

  (= 
    (sub-sterm1 $_ $List) 
    (, 
      (not (compound $List)) 
      (set-det) 
      (fail)))
  (= 
    (sub-sterm1 $Sub $List) 
    (, 
      (is-list $List) 
      (set-det) 
      (member $SL $List) 
      (sub-sterm $Sub $SL)))
  (= 
    (sub-sterm1 $_ 
      (Cons  $_ $_)) 
    (, 
      (set-det) 
      (fail)))
  (= 
    (sub-sterm1 $Sub $Term) 
    (, 
      (arg $_ $Term $SL) 
      (sub-sterm $Sub $SL)))

  (= 
    (eval20-failed-2 $Eq $RetType $Depth $Self $Term $Res) 
    (, 
      (fake-notrace (, (get-sa-p1 setarg $ST $Term $P1) (compound $ST) (= $ST (:: $F $List)) (== $F collapse) (nonvar $List) (call $P1 $Var))) 
      (set-det) 
      (bagof-eval $Eq $RetType $Depth $Self $List $Var) 
      (eval $Eq $RetType $Depth $Self $Term $Res)));maplist(atomic,List),



; =================================================================
; =================================================================
; =================================================================
;  NOP/EQUALITU/DO
; =================================================================
; =================================================================
; ================================================================

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: nop) $_) 
    (, 
      (set-det) 
      (fail)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: empty) $_) 
    (, 
      (set-det) 
      (fail)))
  (= 
    (eval-20 $Eq $RetType1 $Depth $Self 
      (:: nop $Expr) $Empty) 
    (, 
      (set-det) 
      (ignore (eval = $RetType2 $Depth $Self $Expr $_)) 
      (return-empty Nil $Empty)))

  (= 
    (eval-20 $Eq $RetType1 $Depth $Self 
      (:: do $Expr) $Empty) 
    (, 
      (set-det) 
      (forall 
        (eval $Eq $RetType2 $Depth $Self $Expr $_) True) 
      (return-empty Nil $Empty)));eval_ne(Eq,_RetType2,Depth,Self,Expr,_),!,


  (= 
    (eval-20 $Eq $RetType1 $Depth $Self 
      (:: call $S) $TF) 
    (, 
      (set-det) 
      (eval-call $S $TF)))


  (= 
    (max-counting $F $Max) 
    (if-then-else 
      (, 
        (flag $F $X 
          (+ $X 1)) 
        (< $X $Max)) True 
      (, 
        (flag $F $_ 10) 
        (set-det) 
        (fail))))
; =================================================================
; =================================================================
; =================================================================
;  if/If
; =================================================================
; =================================================================
; =================================================================




  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: if $Cond $Then $Else) $Res) 
    (, 
      (set-det) 
      (eval $Eq Bool $Depth $Self $Cond $TF) 
      (if-then-else 
        (is-True $TF) 
        (eval $Eq $RetType $Depth $Self $Then $Res) 
        (eval $Eq $RetType $Depth $Self $Else $Res))))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: If $Cond $Then $Else) $Res) 
    (, 
      (set-det) 
      (eval $Eq Bool $Depth $Self $Cond $TF) 
      (if-then-else 
        (is-True $TF) 
        (eval $Eq $RetType $Depth $Self $Then $Res) 
        (eval $Eq $RetType $Depth $Self $Else $Res))))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: If $Cond $Then) $Res) 
    (, 
      (set-det) 
      (eval $Eq Bool $Depth $Self $Cond $TF) 
      (if-then-else 
        (is-True $TF) 
        (eval $Eq $RetType $Depth $Self $Then $Res) 
        (, 
          (set-det) 
          (fail) 
          (= $Res Nil) 
          (set-det)))))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: if $Cond $Then) $Res) 
    (, 
      (set-det) 
      (eval $Eq Bool $Depth $Self $Cond $TF) 
      (if-then-else 
        (is-True $TF) 
        (eval $Eq $RetType $Depth $Self $Then $Res) 
        (, 
          (set-det) 
          (fail) 
          (= $Res Nil) 
          (set-det)))))


  (= 
    (eval-20 $Eq $RetType $Dpth $Slf 
      (:: $_ $Nothing) $NothingO) 
    (, 
      (== Nothing $Nothing) 
      (set-det) 
      (do-expander $Eq $RetType $Nothing $NothingO)))

; =================================================================
; =================================================================
; =================================================================
;  LET/LET*
; =================================================================
; =================================================================
; =================================================================




  (= 
    (eval-until-unify $Eq $RetType $Dpth $Slf $X $X) 
    (set-det))
  (= 
    (eval-until-unify $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (eval-until-eq $Eq $RetType $Depth $Self $X $Y) 
      (set-det)))


  (= 
    (eval-until-eq $Eq $RetType $Dpth $Slf $X $Y) 
    (, 
      (= $X $Y) 
      (check-returnval $Eq $RetType $Y)))
;eval_until_eq(Eq,RetType,Depth,Self,X,Y):- var(Y),!,eval_in_steps_or_same(Eq,RetType,Depth,Self,X,XX),Y=XX.
;eval_until_eq(Eq,RetType,Depth,Self,Y,X):- var(Y),!,eval_in_steps_or_same(Eq,RetType,Depth,Self,X,XX),Y=XX.
  (= 
    (eval-until-eq $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (not (is-list $Y)) 
      (set-det) 
      (eval-in-steps-some-change $Eq $RetType $Depth $Self $X $XX) 
      (= $Y $XX)))
  (= 
    (eval-until-eq $Eq $RetType $Depth $Self $Y $X) 
    (, 
      (not (is-list $Y)) 
      (set-det) 
      (eval-in-steps-some-change $Eq $RetType $Depth $Self $X $XX) 
      (= $Y $XX)))
  (= 
    (eval-until-eq $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (eval-in-steps-some-change $Eq $RetType $Depth $Self $X $XX) 
      (eval-until-eq $Eq $RetType $Depth $Self $Y $XX)))
  (= 
    (eval-until-eq $Eq $RetType $Dpth $Slf $X $Y) 
    (, 
      (length $X $Len) 
      (not (length $Y $Len)) 
      (set-det) 
      (fail)))
  (= 
    (eval-until-eq $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (nth1 $N $X $EX $RX) 
      (nth1 $N $Y $EY $RY) 
      (= $EX $EY) 
      (set-det) 
      (maplist 
        (eval-until-eq $Eq $RetType $Depth $Self) $RX $RY)))
  (= 
    (eval-until-eq $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (nth1 $N $X $EX $RX) 
      (nth1 $N $Y $EY $RY) 
      (or 
        (var $EX) 
        (var $EY)) 
      (eval-until-eq $Eq $RetType $Depth $Self $EX $EY) 
      (maplist 
        (eval-until-eq $Eq $RetType $Depth $Self) $RX $RY)))
  (= 
    (eval-until-eq $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (nth1 $N $X $EX $RX) 
      (nth1 $N $Y $EY $RY) 
      (h 
        (or 
          (is-list $EX) 
          (is-list $EY)) 
        (eval-until-eq $Eq $RetType $Depth $Self $EX $EY)) 
      (maplist 
        (eval-until-eq $Eq $RetType $Depth $Self) $RX $RY)))

 
  (= 
    (eval-1change $Eq $RetType $Depth $Self $EX $EXX) 
    (, 
      (eval-20 $Eq $RetType $Depth $Self $EX $EXX) 
      (\=@= $EX $EXX)))


  (= 
    (eval-complete-change $Eq $RetType $Depth $Self $EX $EXX) 
    (, 
      (eval $Eq $RetType $Depth $Self $EX $EXX) 
      (\=@= $EX $EXX)))


  (= 
    (eval-in-steps-some-change $Eq $RetType $Dpth $Slf $EX $_) 
    (, 
      (not (is-list $EX)) 
      (set-det) 
      (fail)))
  (= 
    (eval-in-steps-some-change $Eq $RetType $Depth $Self $EX $EXX) 
    (eval-1change $Eq $RetType $Depth $Self $EX $EXX))
  (= 
    (eval-in-steps-some-change $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (append $L 
        (Cons  $EX $R) $X) 
      (is-list $EX) 
      (eval-in-steps-some-change $Eq $RetType $Depth $Self $EX $EXX) 
      (\=@= $EX $EXX) 
      (append $L 
        (Cons  $EXX $R) $XX) 
      (eval-in-steps-or-same $Eq $RetType $Depth $Self $XX $Y)))


  (= 
    (eval-in-steps-or-same $Eq $RetType $Depth $Self $X $Y) 
    (eval-in-steps-some-change $Eq $RetType $Depth $Self $X $Y))
  (= 
    (eval-in-steps-or-same $Eq $RetType $Dpth $Slf $X $Y) 
    (, 
      (= $X $Y) 
      (check-returnval $Eq $RetType $Y)))

  ; (fail,return_empty([],Template))).



  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: let $A $A5 $AA) $OO) 
    (, 
      (set-det) 
      (eval $Eq $RetTypeV $Depth $Self $A5 $AR) 
      (= $A $AR) 
      (eval $Eq $RetType $Depth $Self $AA $OO)));(var(A)->true;trace),


;eval_20(Eq,RetType,Depth,Self,['let',A,A5,AA],AAO):- !,eval(Eq,RetType,Depth,Self,A5,A),eval(Eq,RetType,Depth,Self,AA,AAO).
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: let* Nil $Body) $RetVal) 
    (, 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $Body $RetVal)))
;eval_20(Eq,RetType,Depth,Self,['let*',[[Var,Val]|LetRest],Body],RetVal):- !,
;   eval_until_unify(Eq,_RetTypeV,Depth,Self,Val,Var),
;   eval_20(Eq,RetType,Depth,Self,['let*',LetRest,Body],RetVal).
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: let* 
        (Cons  
          (:: $Var $Val) $LetRest) $Body) $RetVal) 
    (, 
      (set-det) 
      (eval-20 $Eq $RetType $Depth $Self 
        (:: let $Var $Val 
          (:: let* $LetRest $Body)) $RetVal)))


; =================================================================
; =================================================================
; =================================================================
;  CONS/CAR/CDR
; =================================================================
; =================================================================
; =================================================================




  (= 
    (into-pl-list $Var $Var) 
    (, 
      (var $Var) 
      (set-det)))
  (= 
    (into-pl-list $Nil Nil) 
    (, 
      (== $Nil Nil) 
      (set-det)))
  (= 
    (into-pl-list 
      (:: $Cons $H $T) 
      (Cons  $HH $TT)) 
    (, 
      (== $Cons Cons) 
      (set-det) 
      (into-pl-list $H $HH) 
      (into-pl-list $T $TT) 
      (set-det)))
  (= 
    (into_pl_list  $X $X) True)


  (= 
    (into-metta-cons $Var $Var) 
    (, 
      (var $Var) 
      (set-det)))
  (= 
    (into-metta-cons Nil Nil) 
    (set-det))
  (= 
    (into-metta-cons 
      (:: $Cons $A $B) 
      (:: Cons $AA $BB)) 
    (, 
      (== Cons $Cons) 
      (no-cons-reduce) 
      (set-det) 
      (into-metta-cons $A $AA) 
      (into-metta-cons $B $BB)))
  (= 
    (into-metta-cons 
      (Cons  $H $T) 
      (:: Cons $HH $TT)) 
    (, 
      (into-metta-cons $H $HH) 
      (into-metta-cons $T $TT) 
      (set-det)))
  (= 
    (into_metta_cons  $X $X) True)


  (= 
    (into-listoid $AtomC $Atom) 
    (, 
      (= $AtomC 
        (:: $Cons $H $T)) 
      (== $Cons Cons) 
      (set-det) 
      (= $Atom 
        (:: $H 
          (:: $T)))))
  (= 
    (into-listoid $AtomC $Atom) 
    (, 
      (is-list $AtomC) 
      (set-det) 
      (= $Atom $AtomC)))
  (= 
    (into-listoid $AtomC $Atom) 
    (, 
      (typed-list $AtomC $_ $Atom) 
      (set-det)))


  (if (not (current-predicate (/ typed-list 3))))

  (= 
    (typed-list $Cmpd $Type $List) 
    (, 
      (compound $Cmpd) 
      (\= $Cmpd 
        (Cons  $_ $_)) 
      (compound-name-arguments $Cmpd $Type 
        (Cons  $List $_)) 
      (is-list $List)))

  (endif)

;eval_20(Eq,RetType,Depth,Self,['colapse'|List], Flat):- !, maplist(eval(Eq,RetType,Depth,Self),List,Res),flatten(Res,Flat).

;eval_20(Eq,RetType,Depth,Self,['flatten'|List], Flat):- !, maplist(eval(Eq,RetType,Depth,Self),List,Res),flatten(Res,Flat).



  (= 
    (eval-20 $Eq $RetType $Dpth $Slf 
      (:: car-atom $Atom) $CAR_Y) 
    (, 
      (set-det) 
      (= $Atom 
        (Cons  $CAR $_)) 
      (set-det) 
      (do-expander $Eq $RetType $CAR $CAR_Y)))
  (= 
    (eval-20 $Eq $RetType $Dpth $Slf 
      (:: cdr-atom $Atom) $CDR_Y) 
    (, 
      (set-det) 
      (= $Atom 
        (Cons  $_ $CDR)) 
      (set-det) 
      (do-expander $Eq $RetType $CDR $CDR_Y)))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: Cons $A $B) 
      (:: Cons $AA $BB)) 
    (, 
      (no-cons-reduce) 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $A $AA) 
      (eval $Eq $RetType $Depth $Self $B $BB)))

;eval_20(_Eq,_RetType,Depth,Self,['::'|PL],MeTTa):-  maplist(as_MeTTa(Depth,Self),PL,MeTTa),!.
;eval_20(_Eq,_RetType,Depth,Self,['@'|PL],MeTTa):- as_MeTTa(Depth,Self,['@'|PL],MeTTa),!.

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: Cons $A $B) 
      (Cons  $AA $BB)) 
    (, 
      (not no-cons-reduce) 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $A $AA) 
      (eval $Eq $RetType $Depth $Self $B $BB)))



; =================================================================
; =================================================================
; =================================================================
;  STATE EDITING
; =================================================================
; =================================================================
; =================================================================

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: change-state! $StateExpr $UpdatedValue) $Ret) 
    (, 
      (set-det) 
      (call-in-shared-space (, (eval $Eq $RetType $Depth $Self $StateExpr $StateMonad) (eval $Eq $RetType $Depth $Self $UpdatedValue $Value) (change-state! $Depth $Self $StateMonad $Value $Ret)))))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: new-state $UpdatedValue) $StateMonad) 
    (, 
      (set-det) 
      (call-in-shared-space (, (eval $Eq $RetType $Depth $Self $UpdatedValue $Value) (new-state $Depth $Self $Value $StateMonad)))))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: get-state $StateExpr) $Value) 
    (, 
      (set-det) 
      (call-in-shared-space (, (eval $Eq $RetType $Depth $Self $StateExpr $StateMonad) (get-state $StateMonad $Value)))))


  (= 
    (call-in-shared-space $G) 
    (call-in-thread main $G))

; eval_20(Eq,RetType,Depth,Self,['get-state',Expr],Value):- !, eval(Eq,RetType,Depth,Self,Expr,State), arg(1,State,Value).




  (= 
    (check-type) 
    (, 
      (option-else typecheck $TF False) 
      (== $TF True)))


  (dynamic (/ is-registered-state 1))
  (flush-output)
  (setenv RUST-BACKTRACE full)

; Function to check if an value is registered as a state name
  (dynamic (/ is-registered-state 1))

  (= 
    (is-nb-state $G) 
    (if-then-else 
      (is-valid-nb-state $G) True 
      (, 
        (is-registered-state $G) 
        (nb-current $G $S) 
        (is-valid-nb-state $S))))



  (multifile (/ state-type-method 3))
  (dynamic (/ state-type-method 3))

  (= 
    (state_type_method  is_nb_state new_state init_state) True)
  (= 
    (state_type_method  is_nb_state clear_state clear_nb_values) True)
  (= 
    (state_type_method  is_nb_state add_value add_nb_value) True)
  (= 
    (state_type_method  is_nb_state remove_value change-state!) True)
  (= 
    (state_type_method  is_nb_state replace_value replace_nb_value) True)
  (= 
    (state_type_method  is_nb_state value_count value_nb_count) True)
  (= 
    (state_type_method  is_nb_state get-state get-state) True)
  (= 
    (state_type_method  is_nb_state value_iter value_nb_iter) True)
;state_type_method(is_nb_state,query,state_nb_query).

; Clear all values from a state

  (= 
    (clear-nb-values $StateNameOrInstance) 
    (, 
      (fetch-or-create-state $StateNameOrInstance $State) 
      (nb-setarg 1 $State Nil)))



; Function to confirm if a term represents a state

  (= 
    (is-valid-nb-state $State) 
    (, 
      (compound $State) 
      (functor $State State $_)))

; Find the original name of a given state

  (= 
    (state-original-name $State $Name) 
    (, 
      (is-registered-state $Name) 
      (call-in-shared-space (nb-current $Name $State))))

; Register and initialize a new state

  (= 
    (init-state $Name) 
    (, 
      (= $State 
        (State $_ $_)) 
      (asserta (is-registered-state $Name)) 
      (call-in-shared-space (nb-setval $Name $State))))

; Change a value in a state

  (= 
    (change-state! $Depth $Self $StateNameOrInstance $UpdatedValue $Out) 
    (, 
      (fetch-or-create-state $StateNameOrInstance $State) 
      (arg 2 $State $Type) 
      (if-then-else 
        (, 
          (check-type) 
          (not (get-type $Depth $Self $UpdatedValue $Type))) 
        (= $Out 
          (:: Error $UpdatedValue BadType)) 
        (, 
          (nb-setarg 1 $State $UpdatedValue) 
          (= $Out $State)))))

; Fetch all values from a state

  (= 
    (get-state $StateNameOrInstance $Values) 
    (, 
      (fetch-or-create-state $StateNameOrInstance $State) 
      (arg 1 $State $Values)))


  (= 
    (new-state $Depth $Self $Init 
      (State $Init $Type)) 
    (if-then-else check-type 
      (get-type $Depth $Self $Init $Type) True))

  (= 
    (new-state $Init 
      (State $Init $Type)) 
    (if-then-else check-type 
      (get-type 10 &self $Init $Type) True))


  (= 
    (fetch-or-create-state $Name) 
    (fetch-or-create-state $Name $_))
; Fetch an existing state or create a new one

  (= 
    (fetch-or-create-state $State $State) 
    (, 
      (is-valid-nb-state $State) 
      (set-det)))
  (= 
    (fetch-or-create-state $NameOrInstance $State) 
    (, 
      (if-then-else 
        (atom $NameOrInstance) 
        (if-then-else 
          (is-registered-state $NameOrInstance) 
          (nb-current $NameOrInstance $State) 
          (, 
            (init-state $NameOrInstance) 
            (nb-current $NameOrInstance $State))) 
        (if-then-else 
          (is-valid-nb-state $NameOrInstance) 
          (= $State $NameOrInstance) 
          (writeln 'Error: Invalid input.'))) 
      (is-valid-nb-state $State)))

; =================================================================
; =================================================================
; =================================================================
;  GET-TYPE
; =================================================================
; =================================================================
; =================================================================


  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: get-type $Val) $TypeO) 
    (, 
      (set-det) 
      (eval-get-type $Eq $RetType $Depth $Self $Val $TypeO)))



  (= 
    (eval-get-type $Eq $RetType $Depth $Self $Val $TypeO) 
    (, 
      (get-type $Depth $Self $Val $Type) 
      (ground $Type) 
      (\== $Type Nil) 
      (\== $Type $Val) 
      (set-det) 
      (do-expander $Eq $RetType $Type $TypeO)))




  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: length $L) $Res) 
    (, 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $L $LL) 
      (set-det) 
      (if-then-else 
        (is-list $LL) 
        (length $LL $Res) 
        (= $Res 1))))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: CountElement $L) $Res) 
    (, 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $L $LL) 
      (set-det) 
      (if-then-else 
        (is-list $LL) 
        (length $LL $Res) 
        (= $Res 1))))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: get-metatype $Val) $TypeO) 
    (, 
      (set-det) 
      (get-metatype $Val $TypeO)))


  (= 
    (get-metatype $Val $Want) 
    (, 
      (get-metatype0 $Val $Was) 
      (set-det) 
      (= $Want $Was)))

  (= 
    (get-metatype0 $Val Variable) 
    (var $Val))
  (= 
    (get-metatype0 $Val Symbol) 
    (symbol $Val))
  (= 
    (get-metatype0 $Val Expression) 
    (is-list $Val))
  (= 
    (get_metatype0  $Val Grounded) True)





; =================================================================
; =================================================================
; =================================================================
;  IMPORT/BIND
; =================================================================
; =================================================================
; =================================================================

  (= 
    (nb-bind $Name $Value) 
    (, 
      (nb-current $Name $Was) 
      (same-term $Value $Was) 
      (set-det)))
  (= 
    (nb-bind $Name $Value) 
    (, 
      (call-in-shared-space (nb-setval $Name $Value)) 
      (set-det)))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: import! $Other $File) $RetVal) 
    (, 
      (set-det) 
      (into-space $Depth $Self $Other $Space) 
      (include-metta $Space $File) 
      (set-det) 
      (return-empty $Space $RetVal) 
      (check-returnval $Eq $RetType $RetVal))) ;RetVal=[].
  (= 
    (eval-20 $Eq $RetType $Depth $Slf 
      (:: bind! $Other 
        (:: new-space)) $RetVal) 
    (, 
      (atom $Other) 
      (set-det) 
      (add-atom  &self 
        (was_asserted_space  $Other)) 
      (return-empty Nil $RetVal) 
      (check-returnval $Eq $RetType $RetVal)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: bind! $Other $Expr) $RetVal) 
    (, 
      (set-det) 
      (must-det-ll (, (into-name $Self $Other $Name) (set-det) (eval $Eq $RetType $Depth $Self $Expr $Value) (nb-bind $Name $Value) (return-empty $Value $RetVal))) 
      (check-returnval $Eq $RetType $RetVal)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: pragma! $Other $Expr) $RetVal) 
    (, 
      (set-det) 
      (must-det-ll (, (into-name $Self $Other $Name) (nd-ignore (, (eval $Eq $RetType $Depth $Self $Expr $Value) (set-option-value-interp $Name $Value))) (return-empty $Value $RetVal) (check-returnval $Eq $RetType $RetVal)))))
  (= 
    (eval-20 $Eq $RetType $Dpth $Self 
      (:: transfer! $File) $RetVal) 
    (, 
      (set-det) 
      (must-det-ll (, (include-metta $Self $File) (return-empty $Self $RetVal) (check-returnval $Eq $RetType $RetVal)))))



  (= 
    (fromNumber $Var1 $Var2) 
    (, 
      (var $Var1) 
      (var $Var2) 
      (set-det) 
      (freeze $Var1 
        (fromNumber $Var1 $Var2)) 
      (freeze $Var2 
        (fromNumber $Var1 $Var2))))
  (= 
    (fromNumber 0 Z) 
    (set-det))
  (= 
    (fromNumber $N 
      (:: S $Nat)) 
    (, 
      (integer $N) 
      (is $M 
        (- $N 1)) 
      (set-det) 
      (fromNumber $M $Nat)))


  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: fromNumber $NE) $RetVal) 
    (, 
      (set-det) 
      (eval = Number $Depth $Self $NE $N) 
      (fromNumber $N $RetVal) 
      (check-returnval $Eq $RetType $RetVal)))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: dedup! $Eval) $RetVal) 
    (, 
      (set-det) 
      (term-variables 
        (+ $Eval $RetVal) $Vars) 
      (no-repeats-var $YY) 
      (set-det) 
      (eval-20 $Eq $RetType $Depth $Self $Eval $RetVal) 
      (= $YY $Vars)))



  (= 
    (nd-ignore $Goal) 
    (or 
      (each-then 
        (call $Goal) True) True))









; =================================================================
; =================================================================
; =================================================================
;  AND/OR
; =================================================================
; =================================================================
; =================================================================


  (= 
    (is-True $T) 
    (, 
      (atomic $T) 
      (\== $T False) 
      (\== $T 0)))


  (= 
    (is-and $S) 
    (, 
      (not (atom $S)) 
      (set-det) 
      (fail)))
  (= 
    (is_and  ,) True)
  (= 
    (is-and $S) 
    (is-and $S $_))

  (= 
    (is-and $S $_) 
    (, 
      (not (atom $S)) 
      (set-det) 
      (fail)))
  (= 
    (is_and  and True) True)
  (= 
    (is_and  and2 True) True)
  (= 
    (is_and  #COMMA True) True) 
  (= 
    (is_and  , True) True)  ; is_and('And').


  (= 
    (is-comma $C) 
    (, 
      (var $C) 
      (set-det) 
      (fail)))
  (= 
    (is_comma  ,) True)
  (= 
    (is_comma  {}) True)


  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: $And $X) $True) 
    (, 
      (is-comma $And) 
      (set-det) 
      (eval-args $Eq $RetType $Depth $Self $X $True)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: $And $X $Y) $TF) 
    (, 
      (is-comma $And) 
      (set-det) 
      (eval-args $Eq $RetType $Depth $Self $X $_) 
      (eval-args $Eq $RetType $Depth $Self $Y $TF)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (Cons  $And 
        (Cons  $X $Y)) $TF) 
    (, 
      (is-comma $And) 
      (set-det) 
      (eval-args $Eq $RetType $Depth $Self $X $_) 
      (eval-args $Eq $RetType $Depth $Self 
        (Cons  $And $Y) $TF)))


  (= 
    (eval-20 $Eq $RetType $Dpth $Slf 
      (:: $And) $True) 
    (, 
      (is-and $And $True) 
      (set-det) 
      (check-returnval $Eq $RetType $True)))
;eval_20(Eq,RetType,Depth,Self,[And,X,Y],TF):-  is_and(And,True),!,
; as_tf(( eval_args(Eq,RetType,Depth,Self,X,True),eval_args(Eq,RetType,Depth,Self,Y,True)),TF).
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: $And $X) $TF) 
    (, 
      (is-and $And $True) 
      (set-det) 
      (as-tf 
        (eval-args $Eq $RetType $Depth $Self $X $True) $TF)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (Cons  $And 
        (Cons  $X $Y)) $TF) 
    (, 
      (is-and $And $True) 
      (set-det) 
      (as-tf 
        (eval-args $Eq $RetType $Depth $Self $X $True) $TF1) 
      (if-then-else 
        (== $TF1 False) 
        (= $TF $TF1) 
        (eval-args $Eq $RetType $Depth $Self 
          (Cons  $And $Y) $TF))))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: or $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (or 
          (eval-args-true $Eq $RetType $Depth $Self $X) 
          (eval-args-true $Eq $RetType $Depth $Self $Y)) $TF)))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: not $X) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (not (eval-args-true $Eq $RetType $Depth $Self $X)) $TF)))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: number-of $X) $N) 
    (, 
      (set-det) 
      (bagof-eval $Eq $RetType $Depth $Self $X $ResL) 
      (length $ResL $N) 
      (ignore (= $RetType Number))))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: number-of $X $N) $TF) 
    (, 
      (set-det) 
      (bagof-eval $Eq $RetType $Depth $Self $X $ResL) 
      (length $ResL $N) 
      (true-type $Eq $RetType $TF)))


  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: limit! $N $E) $R) 
    (, 
      (set-det) 
      (eval-20 $Eq $RetType $Depth $Self 
        (:: limit $N $E) $R)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: limit $NE $E) $R) 
    (, 
      (set-det) 
      (eval = Number $Depth $Self $NE $N) 
      (limit $N 
        (eval-ne $Eq $RetType $Depth $Self $E $R))))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: max-time! $N $E) $R) 
    (, 
      (set-det) 
      (eval-20 $Eq $RetType $Depth $Self 
        (:: max-time $N $E) $R)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: max-time $NE $E) $R) 
    (, 
      (set-det) 
      (eval = Number $Depth $Self $NE $N) 
      (cwtl $N 
        (eval-ne $Eq $RetType $Depth $Self $E $R))))


; =================================================================
; =================================================================
; =================================================================
;  DATA FUNCTOR
; =================================================================
; =================================================================
; =================================================================

  (= 
    (eval20-failked $Eq $RetType $Depth $Self 
      (Cons  $V $VI) 
      (Cons  $V $VO)) 
    (, 
      (nonvar $V) 
      (is-metta-data-functor $V) 
      (is-list $VI) 
      (set-det) 
      (maplist 
        (eval $Eq $RetType $Depth $Self) $VI $VO)))


; =================================================================
; =================================================================
; =================================================================
;  EVAL FAILED
; =================================================================
; =================================================================
; =================================================================


  (= 
    (eval-failed $Depth $Self $T $TT) 
    (finish-eval $Depth $Self $T $TT))

;finish_eval(_,_,X,X):-!.


  (= 
    (finish-eval $Dpth $Slf $T $TT) 
    (, 
      (var $T) 
      (set-det) 
      (= $TT $T)))
  (= 
    (finish-eval $Dpth $Slf Nil Nil) 
    (set-det))
  (= 
    (finish-eval $Dpth $Slf 
      (Cons  $F $LESS) $Res) 
    (, 
      (once (eval-selfless (Cons  $F $LESS) $Res)) 
      (fake-notrace (\== (Cons  $F $LESS) $Res)) 
      (set-det)))
;finish_eval(Depth,Self,[V|Nil],[O]):- Nil==[], once(eval(Eq,RetType,Depth,Self,V,O)),V\=@=O,!.
  (= 
    (finish-eval $Depth $Self 
      (Cons  $H $T) 
      (Cons  $HH $TT)) 
    (, 
      (set-det) 
      (eval $Depth $Self $H $HH) 
      (finish-eval $Depth $Self $T $TT)))
  (= 
    (finish-eval $Depth $Self $T $TT) 
    (eval $Depth $Self $T $TT))

   ;eval(Eq,RetType,Depth,Self,X,Y):- eval_20(Eq,RetType,Depth,Self,X,Y)*->true;Y=[].

;eval_20(Eq,RetType,Depth,_,_,_):- Depth<1,!,fail.
;eval_20(Eq,RetType,Depth,_,X,Y):- Depth<3, !, ground(X), (Y=X).
;eval_20(Eq,RetType,_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X.

; Kills zero arity functions eval_20(Eq,RetType,Depth,Self,[X|Nil],[Y]):- Nil ==[],!,eval(Eq,RetType,Depth,Self,X,Y).



; =================================================================
; =================================================================
; =================================================================
;  METTLOG PREDEFS
; =================================================================
; =================================================================
; =================================================================



  (= 
    (eval-20 $Eq $RetType $Dpth $Slf 
      (:: arity $F $A) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (current-predicate (/ $F $A)) $TF) 
      (check-returnval $Eq $RetType $TF)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: CountElement $L) $Res) 
    (, 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $L $LL) 
      (set-det) 
      (if-then-else 
        (is-list $LL) 
        (length $LL $Res) 
        (= $Res 1)) 
      (check-returnval $Eq $RetType $Res)))
  (= 
    (eval-20 $Eq $RetType $Dpth $Slf 
      (:: make-list $List) $MettaList) 
    (, 
      (set-det) 
      (into-metta-cons $List $MettaList) 
      (check-returnval $Eq $RetType $MettaList)))


  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: maplist! $Pred $ArgL1) $ResL) 
    (, 
      (set-det) 
      (maplist 
        (eval-pred $Eq $RetType $Depth $Self $Pred) $ArgL1 $ResL)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: maplist! $Pred $ArgL1 $ArgL2) $ResL) 
    (, 
      (set-det) 
      (maplist 
        (eval-pred $Eq $RetType $Depth $Self $Pred) $ArgL1 $ArgL2 $ResL)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: maplist! $Pred $ArgL1 $ArgL2 $ArgL3) $ResL) 
    (, 
      (set-det) 
      (maplist 
        (eval-pred $Eq $RetType $Depth $Self $Pred) $ArgL1 $ArgL2 $ArgL3 $ResL)))

  
  (= 
    (eval-pred $Eq $RetType $Depth $Self $Pred $Arg1 $Res) 
    (eval $Eq $RetType $Depth $Self 
      (:: $Pred $Arg1) $Res))
  (= 
    (eval-pred $Eq $RetType $Depth $Self $Pred $Arg1 $Arg2 $Res) 
    (eval $Eq $RetType $Depth $Self 
      (:: $Pred $Arg1 $Arg2) $Res))
  (= 
    (eval-pred $Eq $RetType $Depth $Self $Pred $Arg1 $Arg2 $Arg3 $Res) 
    (eval $Eq $RetType $Depth $Self 
      (:: $Pred $Arg1 $Arg2 $Arg3) $Res))


  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: concurrent-maplist! $Pred $ArgL1) $ResL) 
    (, 
      (set-det) 
      (metta-concurrent-maplist 
        (eval-pred $Eq $RetType $Depth $Self $Pred) $ArgL1 $ResL)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: concurrent-maplist! $Pred $ArgL1 $ArgL2) $ResL) 
    (, 
      (set-det) 
      (concurrent-maplist 
        (eval-pred $Eq $RetType $Depth $Self $Pred) $ArgL1 $ArgL2 $ResL)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: concurrent-maplist! $Pred $ArgL1 $ArgL2 $ArgL3) $ResL) 
    (, 
      (set-det) 
      (concurrent-maplist 
        (eval-pred $Eq $RetType $Depth $Self $Pred) $ArgL1 $ArgL2 $ArgL3 $ResL)))
  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (Cons  concurrent-forall! 
        (Cons  $Gen 
          (Cons  $Test $Options))) $Empty) 
    (, 
      (set-det) 
      (maplist s2p $Options $POptions) 
      (call (with_self  (thread) (concurrent-forall (with_self  (user) (eval-ne $Eq $RetType $Depth $Self $Gen $_)) (with_self  (user) (forall (eval $Eq $RetType $Depth $Self $Test $_) True)) $POptions))) 
      (return-empty Nil $Empty)))

  (= 
    (eval-20 $Eq $RetType $Depth $Self 
      (:: hyperpose $ArgL) $Res) 
    (, 
      (set-det) 
      (metta-hyperpose $Eq $RetType $Depth $Self $ArgL $Res)))



  (= 
    (simple-math $Var) 
    (, 
      (attvar $Var) 
      (set-det) 
      (fail)))
  (= 
    (simple-math (Cons  $F $XY)) 
    (, 
      (set-det) 
      (atom $F) 
      (atom-length $F 1) 
      (is-list $XY) 
      (maplist simple-math $XY)))
  (= 
    (simple-math $X) 
    (, 
      (number $X) 
      (set-det)))



  (= 
    (eval-20 $Eq $RetType $Depth $Self $X $Y) 
    (or 
      (each-then 
        (eval-40 $Eq $RetType $Depth $Self $X $M) 
        (= $M $Y)) 
      (or 
        (each-then 
          (eval-failed $Depth $Self $X $Y) True) 
        (= $X $Y)))); finish_eval(Depth,Self,M,Y);



  (= 
    (eval-40 $Eq $RetType $Dpth $Slf 
      (:: extend-py! $Module) $Res) 
    (, 
      (set-det) 
      (extend-py! $Module $Res)))

  (= 
    (eval-40 $Eq $RetType $Depth $_ $X $Y) 
    (, 
      (< $Depth 3) 
      (set-det) 
      (fail) 
      (ground $X) 
      (= $Y $X)))/*
into_values(List,Many):- List==[],!,Many=[].
into_values([X|List],Many):- List==[],is_list(X),!,Many=X.
into_values(Many,Many).
eval_40(Eq,RetType,_Dpth,_Slf,Name,Value):- atom(Name), nb_current(Name,Value),!.
*/
; Macro Functions
;eval_20(Eq,RetType,Depth,_,_,_):- Depth<1,!,fail.

  (= 
    (eval-40 $Eq $RetType $Depth $Self 
      (Cons  $F $PredDecl) $Res) 
    (, 
      (fail) 
      (> $Depth 1) 
      (fake-notrace (, (sub-sterm1 $SSub $PredDecl) (ground $SSub) (= $SSub (Cons  $_ $Sub)) (is-list $Sub) (maplist atomic $SSub))) 
      (eval $Eq $RetType $Depth $Self $SSub $Repl) 
      (fake-notrace (, (\= $SSub $Repl) (subst $PredDecl $SSub $Repl $Temp))) 
      (eval $Eq $RetType $Depth $Self 
        (Cons  $F $Temp) $Res)))

; =================================================================
; =================================================================
; =================================================================
;  PLUS/MINUS
; =================================================================
; =================================================================
; =================================================================
  (= 
    (eval-40 $Eq $RetType $Dpth $Slf $LESS $Res) 
    (, 
      (eval-selfless $LESS $Res) 
      (fake-notrace (\== $LESS $Res)) 
      (set-det)))

  (= 
    (eval-40 $Eq $RetType $Depth $Self 
      (:: + $N1 $N2) $N) 
    (, 
      (number $N1) 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $N2 $N2Res) 
      (fake-notrace (catch-err (is $N (+ $N1 $N2Res)) $E (, (set-last-error (:: Error $N2Res Number)) (fail))))))
  (= 
    (eval-40 $Eq $RetType $Depth $Self 
      (:: - $N1 $N2) $N) 
    (, 
      (number $N1) 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $N2 $N2Res) 
      (fake-notrace (catch-err (is $N (- $N1 $N2Res)) $E (, (set-last-error (:: Error $N2Res Number)) (fail))))))
  (= 
    (eval-40 $Eq $RetType $Depth $Self 
      (:: * $N1 $N2) $N) 
    (, 
      (number $N1) 
      (set-det) 
      (eval $Eq $RetType $Depth $Self $N2 $N2Res) 
      (fake-notrace (catch-err (is $N (* $N1 $N2Res)) $E (, (set-last-error (:: Error $N2Res Number)) (fail))))))

  (= 
    (eval-40 $Eq $RetType $Depth $Self 
      (:: length $L) $Res) 
    (, 
      (set-det) 
      (eval $Depth $Self $L $LL) 
      (if-then-else 
        (is-list $LL) 
        (length $LL $Res) 
        (= $Res 1)) 
      (check-returnval $Eq $RetType $Res)))



  (= 
    (eval-40 $Eq $RetType $Depth $Self 
      (Cons  $P 
        (Cons  $A 
          (Cons  $X $More))) $YY) 
    (, 
      (is-list $X) 
      (= $X 
        (:: $_ $_ $_)) 
      (simple-math $X) 
      (eval-selfless-2 $X $XX) 
      (\=@= $X $XX) 
      (set-det) 
      (eval-40 $Eq $RetType $Depth $Self 
        (Cons  $P 
          (Cons  $A 
            (Cons  $XX $More))) $YY)))

  (= 
    (eval-40 $Eq $RetType $Dpth $Slf 
      (:: == $X $Y) $Res) 
    (, 
      (set-det) 
      (suggest-type $RetType Bool) 
      (eq-unify $Eq $SharedType $X $Y $Res)))


  (= 
    (eq-unify $Eq $SharedType $X $Y $TF) 
    (, 
      (as-tf 
        (=:= $X $Y) $TF) 
      (set-det)))
  (= 
    (eq-unify $Eq $SharedType $X $Y $TF) 
    (, 
      (as-tf 
        (#= $X $Y) $TF) 
      (set-det)))
  (= 
    (eq-unify $Eq $SharedType $X $Y $TF) 
    (as-tf 
      (eval-until-unify $Eq $SharedType $X $Y) $TF))



  (= 
    (suggest_type  $RetType $Bool) True)


  (= 
    (eval-40 $Eq $RetType $Depth $Self 
      (Cons  $AE $More) $Res) 
    (, 
      (fail) 
      (eval-70 $Eq $RetType $Depth $Self 
        (Cons  $AE $More) $Res) 
      (check-returnval $Eq $RetType $Res)));is_special_op(AE),!,


  (= 
    (eval-40 $Eq $RetType $Depth $Self 
      (Cons  $AE $More) $Res) 
    (, 
      (maplist 
        (must-eval-args $Eq $_ $Depth $Self) $More $Adjusted) 
      (eval-70 $Eq $RetType $Depth $Self 
        (Cons  $AE $Adjusted) $Res) 
      (check-returnval $Eq $RetType $Res))); fail,




  (= 
    (must-eval-args $Eq $RetType $Depth $Self $More $Adjusted) 
    (or 
      (each-then 
        (eval-args $Eq $RetType $Depth $Self $More $Adjusted) True) 
      (or 
        (each-then 
          (with-debug eval 
            (eval-args $Eq $RetType $Depth $Self $More $Adjusted)) True) 
        (, 
          (nl) 
          (writeq (eval-args $Eq $RetType $Depth $Self $More $Adjusted)) 
          (writeln .) 
          (if-then-else 
            (= $More $Adjusted) True 
            (, 
              (trace) 
              (throw (must-eval-args $Eq $RetType $Depth $Self $More $Adjusted))))))))




  (= 
    (eval-70 $Eq $RetType $Depth $Self $PredDecl $Res) 
    (, 
      (= $Do_more_defs 
        (do-more-defs True)) 
      (get-atoms  &self 
        (= 
          (eval_80  $Eq $RetType $Depth $Self $PredDecl $Res) $Body)) 
      (== $Do_more_defs 
        (do-more-defs True)) 
      (call-ndet $Body $DET) 
      (nb-setarg 1 $Do_more_defs False) 
      (if-then-else 
        (== $DET True) 
        (set-det) True)))

; =================================================================
; =================================================================
; =================================================================
; inherited by system
; =================================================================
; =================================================================
; =================================================================

  (= 
    (is-system-pred $S) 
    (, 
      (atom $S) 
      (atom-concat $_ 
        (set-det) $S)))
  (= 
    (is-system-pred $S) 
    (, 
      (atom $S) 
      (atom-concat $_ -fn $S)))
  (= 
    (is-system-pred $S) 
    (, 
      (atom $S) 
      (atom-concat $_ -p $S)))

; eval_80/6: Evaluates a Python function call within MeTTa.
; Parameters:
; - Eq: denotes get-type, match, or interpret call.
; - RetType: Expected return type of the MeTTa function.
; - Depth: Recursion depth or complexity control.
; - Self: Context or environment for the evaluation.
; - [MyFun|More]: List with MeTTa function and additional arguments.
; - RetVal: Variable to store the result of the Python function call.

  (= 
    (eval-80 $Eq $RetType $Depth $Self 
      (Cons  $MyFun $More) $RetVal) 
    (, 
      (metta-atom $Self 
        (:: registered-python-function $PyModule $PyFun $MyFun)) 
      (if-then-else 
        (, 
          (get-operator-typedef $Self $MyFun $Params $RetType) 
          (try-adjust-arg-types $RetType $Depth $Self 
            (Cons  $RetType $Params) 
            (Cons  $RetVal $More) 
            (Cons  $MVal $Adjusted))) True 
        (, 
          (maplist as-prolog $More $Adjusted) 
          (= $MVal $RetVal))) 
      (compound-name-arguments $Call $PyFun $Adjusted) 
      (if-trace 
        (or host python) 
        (print-tree (py-call (with_self  $PyModule $Call) $RetVal))) 
      (py-call 
        (with_self  $PyModule $Call) $MVal) 
      (check-returnval $Eq $RetType $RetVal))); MyFun as a registered Python function with its module and function name.
; Tries to fetch the type definition for MyFun, ignoring failures.
; Constructs a compound term for the Python function call with adjusted arguments.
; Optionally prints a debug tree of the Python call if tracing is enabled.
; Executes the Python function call and captures the result in MVal which propagates to RetVal.
; Checks the return value against the expected type and criteria.




;eval_80(_Eq,_RetType,_Dpth,_Slf,LESS,Res):- fake_notrace((once((eval_selfless(LESS,Res),fake_notrace(LESS\==Res))))),!.

; predicate inherited by system
  (= 
    (eval-80 $Eq $RetType $Depth $Self 
      (Cons  $AE $More) $TF) 
    (, 
      (once (, (is-system-pred $AE) (length $More $Len) (is-syspred $AE $Len $Pred))) 
      (not (, (atom $AE) (atom-concat $_ -fn $AE))) 
      (current-predicate (/ $Pred $Len)) 
      (maplist as-prolog $More $Adjusted) 
      (if-trace 
        (or host prolog) 
        (print-tree (apply $Pred $Adjusted))) 
      (catch-warn (efbug show-call (eval-call (apply $Pred $Adjusted) $TF))) 
      (check-returnval $Eq $RetType $TF)));fake_notrace( \+ is_user_defined_goal(Self,[AE|More])),!,
;adjust_args(Depth,Self,AE,More,Adjusted),



  (= 
    (show-ndet $G) 
    (call $G))
;show_ndet(G):- call_ndet(G,DET),(DET==true -> ! ; fbug(show_ndet(G))).


  (if (not (current-predicate (/ adjust-args 2))))

   
  (discontiguous (/ eval-80 6))


  (= 
    (is-user-defined-goal $Self $Head) 
    (is-user-defined-head $Self $Head))


  (endif)


  (= 
    (adjust-args-mp $Eq $RetType $Res $Res $Depth $Self $Pred $Len $AE $Args $Adjusted) 
    (, 
      (== $Args Nil) 
      (set-det) 
      (= $Adjusted $Args)))
  (= 
    (adjust-args-mp $Eq $RetType $Res $NewRes $Depth $Self $Pred $Len $AE $Args $Adjusted) 
    (, 
      (functor $P $Pred $Len) 
      (predicate-property $P 
        (meta-predicate $Needs)) 
      (account-needs 1 $Needs $Args $More) 
      (set-det) 
      (adjust-args $Eq $RetType $Res $NewRes $Depth $Self $AE $More $Adjusted)))
  (= 
    (adjust-args-mp $Eq $RetType $Res $NewRes $Depth $Self $Pred $Len $AE $Args $Adjusted) 
    (adjust-args $Eq $RetType $Res $NewRes $Depth $Self $AE $Args $Adjusted))


  (= 
    (acct  0 $A 
      (call  
        (eval  $A $_))) True)
  (= 
    (acct  : $A 
      (call  
        (eval  $A $_))) True)
  (= 
    (acct  $_ $A $A) True)

  (= 
    (account_needs  $_ $_ () ()) True)
  (= 
    (account-needs $N $Needs 
      (Cons  $A $Args) 
      (Cons  $M $More)) 
    (, 
      (arg $N $Needs $What) 
      (set-det) 
      (acct $What $A $M) 
      (plus 1 $N $NP1) 
      (account-needs $NP1 $Needs $Args $More)))


  (nodebug (metta call))


  (= 
    (s2ps $S $P) 
    (, 
      (== $S Nil) 
      (set-det) 
      (= $P Nil)))
  (= 
    (s2ps $S $P) 
    (, 
      (not (is-list $S)) 
      (set-det) 
      (= $P $S)))
  (= 
    (s2ps 
      (Cons  $F $S) $P) 
    (, 
      (atom $F) 
      (maplist s2ps $S $SS) 
      (join-s2ps $F $SS $P) 
      (set-det)))
  (= 
    (s2ps $S $S) 
    (set-det))

  (= 
    (join-s2ps Cons 
      (:: $H $T) 
      (Cons  $H $T)) 
    (set-det))
  (= 
    (join-s2ps $F $Args $P) 
    (, 
      (atom $F) 
      (=.. $P 
        (Cons  $F $Args))))


  (= 
    (eval-call $S $TF) 
    (, 
      (s2ps $S $P) 
      (set-det) 
      (fbug (eval-call $P $TF)) 
      (as-tf $P $TF)))


  (= 
    (eval-80 $Eq $RetType $Depth $Self 
      (Cons  $AE $More) $Res) 
    (, 
      (is-system-pred $AE) 
      (length 
        (Cons  $AE $More) $Len) 
      (is-syspred $AE $Len $Pred) 
      (not (, (atom $AE) (atom-concat $_ -p $AE))) 
      (is $Len1 
        (+ $Len 1)) 
      (current-predicate (/ $Pred $Len1)) 
      (maplist as-prolog $More $Adjusted) 
      (append $Adjusted 
        (:: $Res) $Args) 
      (set-det) 
      (if-trace 
        (or host prolog) 
        (print-tree (apply $Pred $Args))) 
      (efbug show-call 
        (catch-warn (apply $Pred $Args))) 
      (check-returnval $Eq $RetType $Res)));fake_notrace( \+ is_user_defined_goal(Self,[AE|More])),!,
;adjust_args(Depth,Self,AE,More,Adjusted),!,



  (if (not (current-predicate (/ check-returnval 3))))

  (= 
    (check_returnval  $_ $RetType $TF) True)

  (endif)

  (if (not (current-predicate (/ adjust-args 5))))

  (= 
    (adjust_args  $Depth $Self $V $VI $VI) True)

  (endif)

; user defined function
;eval_40(Eq,RetType,Depth,Self,[H|PredDecl],Res):-
 ;  fake_notrace(is_user_defined_head(Self,H)),!,
 ;  eval_60(Eq,RetType,Depth,Self,[H|PredDecl],Res).


  (= 
    (eval-80 $Eq $RetType $Depth $Self $PredDecl $Res) 
    (eval-60 $Eq $RetType $Depth $Self $PredDecl $Res))



  (= 
    (last-element $T $E) 
    (, 
      (not (compound $T)) 
      (set-det) 
      (= $E $T)))
  (= 
    (last-element $T $E) 
    (, 
      (is-list $T) 
      (last $T $L) 
      (last-element $L $E) 
      (set-det)))
  (= 
    (last-element $T $E) 
    (, 
      (compound-name-arguments $T $_ $List) 
      (last-element $List $E) 
      (set-det)))





  (= 
    (catch-warn $G) 
    (quietly (catch-err $G $E (, (fbug (--> (catch-warn $G) $E)) (fail)))))

  (= 
    (catch-nowarn $G) 
    (quietly (catch-err $G (error $_ $_) fail)))


; less Macro-ey Functions



  (= 
    (as-tf $G $TF) 
    (, 
      (\= $G 
        (Cons  $_ $_)) 
      (catch-nowarn (or (each-then (call $G) (= $TF True)) (= $TF False)))))
;eval_selfless_1(['==',X,Y],TF):- as_tf(X=:=Y,TF),!.
;eval_selfless_1(['==',X,Y],TF):- as_tf(X=@=Y,TF),!.


  (= 
    (is-assignment $V) 
    (, 
      (not (atom $V)) 
      (set-det) 
      (fail)))
  (= 
    (is_assignment  is) True) 
  (= 
    (is_assignment  is!) True)
  (= 
    (is_assignment  =) True) 
  (= 
    (is_assignment  ==) True)
  (= 
    (is_assignment  =:=) True)  
  (= 
    (is_assignment  :=) True)


  (= 
    (eval-selfless $E $R) 
    (eval-selfless-0 $E $R))


  (= 
    (eval-selfless-0 
      (:: $F $X $XY) $TF) 
    (, 
      (is-assignment $F) 
      (fake-notrace (args-to-mathlib (:: $X $XY) $Lib)) 
      (set-det) 
      (eval-selfless3 $Lib 
        (:: = $X $XY) $TF)))
  (= 
    (eval-selfless-0 
      (Cons  $F $XY) $TF) 
    (, 
      (eval-selfless-1 
        (Cons  $F $XY) $TF) 
      (set-det)))
  (= 
    (eval-selfless-0 $E $R) 
    (eval-selfless-2 $E $R))


  (= 
    (eval-selfless-1 
      (Cons  $F $XY) $TF) 
    (, 
      (not (ground $XY)) 
      (set-det) 
      (fake-notrace (args-to-mathlib $XY $Lib)) 
      (set-det) 
      (eval-selfless3 $Lib 
        (Cons  $F $XY) $TF)))
  (= 
    (eval-selfless-1 
      (:: > $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (> $X $Y) $TF)))
  (= 
    (eval-selfless-1 
      (:: < $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (< $X $Y) $TF)))
  (= 
    (eval-selfless-1 
      (:: => $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (>= $X $Y) $TF)))
  (= 
    (eval-selfless-1 
      (:: <= $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (=< $X $Y) $TF)))
  (= 
    (eval-selfless-1 
      (:: \= $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (dif $X $Y) $TF)))


  (= 
    (eval-selfless-2 
      (:: % $X $Y) $TF) 
    (, 
      (set-det) 
      (eval-selfless-2 
        (:: mod $X $Y) $TF)))
  (= 
    (eval-selfless-2 $LIS $Y) 
    (, 
      (fake-notrace (, (ground $LIS) (= $LIS (:: $F $_ $_)) (atom $F) (catch-warn (current-op $_ yfx $F)) (\= $LIS (:: $_)) (s2ps $LIS $IS))) 
      (fake-notrace (catch (is $Y $IS) $_ fail)) 
      (set-det)))



  (= 
    (eval-selfless3 $Lib $FArgs $TF) 
    (, 
      (maplist s2ps $FArgs $Next) 
      (set-det) 
      (compare-selfless0 $Lib $Next $TF)))


  (use-module (library clpfd))
  (with_self  
    (clpq) 
    (use-module (library clpq)))
  (with_self  
    (clpr) 
    (use-module (library clpr)))


  (= 
    (compare-selfless0 $_ 
      (Cons  $F $_) $TF) 
    (, 
      (not (atom $F)) 
      (set-det) 
      (fail)))
  (= 
    (compare-selfless0 cplfd 
      (:: = $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (#= $X $Y) $TF)))
  (= 
    (compare-selfless0 cplfd 
      (:: \= $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (#\= $X $Y) $TF)))
  (= 
    (compare-selfless0 cplfd 
      (:: > $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (#> $X $Y) $TF)))
  (= 
    (compare-selfless0 cplfd 
      (:: < $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (#< $X $Y) $TF)))
  (= 
    (compare-selfless0 cplfd 
      (:: => $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (#>= $X $Y) $TF)))
  (= 
    (compare-selfless0 cplfd 
      (:: <= $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (#=< $X $Y) $TF)))
  (= 
    (compare-selfless0 cplfd 
      (Cons  $F $Stuff) $TF) 
    (, 
      (atom-concat # $F $SharpF) 
      (=.. $P 
        (Cons  $SharpF $Stuff)) 
      (set-det) 
      (as-tf $P $TF)))
  (= 
    (compare-selfless0 $Lib 
      (:: \= $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (with_self  $Lib 
          { (\= $X $Y) }) $TF)))
  (= 
    (compare-selfless0 $Lib 
      (:: = $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (with_self  $Lib 
          { (= $X $Y) }) $TF)))
  (= 
    (compare-selfless0 $Lib 
      (:: > $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (with_self  $Lib 
          { (> $X $Y) }) $TF)))
  (= 
    (compare-selfless0 $Lib 
      (:: < $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (with_self  $Lib 
          { (< $X $Y) }) $TF)))
  (= 
    (compare-selfless0 $Lib 
      (:: => $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (with_self  $Lib 
          { (>= $X $Y) }) $TF)))
  (= 
    (compare-selfless0 $Lib 
      (:: <= $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (with_self  $Lib 
          { (=< $X $Y) }) $TF)))
  (= 
    (compare-selfless0 $Lib 
      (Cons  $F $Stuff) $TF) 
    (, 
      (=.. $P 
        (Cons  $F $Stuff)) 
      (set-det) 
      (as-tf 
        (with_self  $Lib 
          {$P }) $TF)))


  (= 
    (args-to-mathlib $XY $Lib) 
    (, 
      (sub-term $T $XY) 
      (var $T) 
      (get-attrs $T $XX) 
      (get-attrlib $XX $Lib)))
  (= 
    (args-to-mathlib $XY clpr) 
    (once (, (sub-term $T $XY) (float $T)))) ; Reals
  (= 
    (args-to-mathlib $XY clpq) 
    (once (, (sub-term $Rat $XY) (compound $Rat) (= $Rat (/ $_ $_)))))
  (= 
    (args_to_mathlib  $_ clpfd) True)



  (= 
    (get-attrlib $XX clpfd) 
    (, 
      (sub-var clpfd $XX) 
      (set-det)))
  (= 
    (get-attrlib $XX clpq) 
    (, 
      (sub-var clpq $XX) 
      (set-det)))
  (= 
    (get-attrlib $XX clpr) 
    (, 
      (sub-var clpr $XX) 
      (set-det)))

; =================================================================
; =================================================================
; =================================================================
;  USER DEFINED FUNCTIONS
; =================================================================
; =================================================================
; =================================================================


  (= 
    (call-ndet $Goal $DET) 
    (, 
      (call $Goal) 
      (deterministic $DET) 
      (if-then-else 
        (== $DET True) 
        (set-det) True)))


  (= 
    (eval-60 $Eq $RetType $Depth $Self $H $B) 
    (or 
      (each-then 
        (eval-64 $Eq $RetType $Depth $Self $H $B) True) 
      (, 
        (fail) 
        (eval-67 $Eq $RetType $Depth $Self $H $B))))/*
eval_60(Eq,_RetT,Depth,Self,[H|Args0],B):-
   \+ get_operator_typedef1(Self,H,_ParamTypes,_RType),!,
   maplist(eval_99(Eq,_,Depth,Self),Args0,Args),
   eval_65(Eq,RetType,Depth,Self,[H|Args],B),!.
*/
/*
eval_60(Eq,_RetT,Depth,Self,[H|Args0],B):- symbol(H),
  \+ fake_notrace((is_user_defined_head_f(Self,H))),
   \+ get_operator_typedef1(Self,H,_ParamTypes,_RType),!,
   maplist(eval_99(Eq,_,Depth,Self),Args0,Args),
   eval_65(Eq,RetType,Depth,Self,[H|Args],B),!.
*/



;eval_64(Eq,_RetType,_Dpth,Self,H,B):-  Eq='=',!, metta_defn(Eq,Self,H,B).

  (= 
    (eval-64 $Eq $RetType $Dpth $Self $H $B) 
    (, 
      (== $Eq match) 
      (set-det) 
      (call (metta-atom $Self $H)) 
      (= $B $H)))


  (= 
    (eval-64 $Eq $RetType $Depth $Self 
      (Cons  
        (Cons  $H $Start) $T1) $Y) 
    (, 
      (fake-notrace (, (is-user-defined-head-f $Self $H) (is-list $Start))) 
      (add-atom  $Self 
        ($Eq 
          (Cons  $H $Start) $Left)) 
      (\=@= 
        (Cons  $Left $T1) 
        (Cons  
          (Cons  $H $Start) $T1)) 
      (eval $Eq $RetType $Depth $Self 
        (Cons  $Left $T1) $Y)))

  (= 
    (eval-64 $Eq $RetType $Depth $Self 
      (Cons  $H $Args) $B) 
    (, 
      (= $Eq =) 
      (or 
        (each-then 
          (add-atom  $Self 
            ($Eq 
              (Cons  $H $Args) $B0)) True) 
        (, 
          (fail) 
          (= 
            (Cons  $H $Args) $B0))) 
      (light-eval $Depth $Self $B0 $B))); no weird template matchers
; forall(metta_defn(Eq,Self,[H|Template],_),
;    maplist(not_template_arg,Template)),

    ;(eval(Eq,RetType,Depth,Self,B,Y);metta_atom_iter(Depth,Self,Y)).
; Use the first template match

  (= 
    (eval-65 $Eq $RetType $Depth $Self 
      (Cons  $H $Args) $B) 
    (, 
      (= $Eq =) 
      (add-atom  $Self 
        ($Eq 
          (Cons  $H $Template) $B0)) 
      (= $Args $Template) 
      (light-eval $Depth $Self $B0 $B)))



  (= 
    (light_eval  $Depth $Self $B $B) True)


  (= 
    (not-template-arg $TArg) 
    (, 
      (var $TArg) 
      (set-det) 
      (not (attvar $TArg))))
  (= 
    (not-template-arg $TArg) 
    (, 
      (atomic $TArg) 
      (set-det)))
;not_template_arg(TArg):- is_list(TArg),!,fail.


; Has argument that is headed by the same function

  (= 
    (eval-67 $Eq $RetType $Depth $Self 
      (Cons  $H1 $Args) $Res) 
    (, 
      (fake-notrace (, (append $Left (Cons  (Cons  $H2 $H2Args) $Rest) $Args) (== $H2 $H1))) 
      (set-det) 
      (eval $Eq $RetType $Depth $Self 
        (Cons  $H2 $H2Args) $ArgRes) 
      (fake-notrace (, (\== $ArgRes (Cons  $H2 $H2Args)) (append $Left (Cons  $ArgRes $Rest) $NewArgs))) 
      (eval-60 $Eq $RetType $Depth $Self 
        (Cons  $H1 $NewArgs) $Res)))

  (= 
    (eval-67 $Eq $RetType $Depth $Self 
      (Cons  
        (Cons  $H $Start) $T1) $Y) 
    (, 
      (fake-notrace (, (is-user-defined-head-f $Self $H) (is-list $Start))) 
      (add-atom  $Self 
        ($Eq 
          (Cons  $H $Start) $Left)) 
      (eval $Eq $RetType $Depth $Self 
        (Cons  $Left $T1) $Y)))

; Has subterm to eval
  (= 
    (eval-67 $Eq $RetType $Depth $Self 
      (Cons  $F $PredDecl) $Res) 
    (, 
      (fail) 
      (> $Depth 1) 
      (quietly (sub-sterm1 $SSub $PredDecl)) 
      (fake-notrace (, (ground $SSub) (= $SSub (Cons  $_ $Sub)) (is-list $Sub) (maplist atomic $SSub))) 
      (eval $Eq $RetType $Depth $Self $SSub $Repl) 
      (fake-notrace (, (\= $SSub $Repl) (subst $PredDecl $SSub $Repl $Temp))) 
      (eval-60 $Eq $RetType $Depth $Self 
        (Cons  $F $Temp) $Res)))



; =================================================================
; =================================================================
; =================================================================
;  AGREGATES
; =================================================================
; =================================================================
; =================================================================


  (= 
    (cwdl $DL $Goal) 
    (, 
      (call-with-depth-limit $Goal $DL $R) 
      (if-then-else 
        (== $R depth-limit-exceeded) 
        (, 
          (set-det) 
          (fail)) True)))


  (= 
    (cwtl $DL $Goal) 
    (catch 
      (call-with-time-limit $DL $Goal) 
      (time-limit-exceeded $_) fail))

;bagof_eval(Eq,RetType,Depth,Self,X,L):- bagof_eval(Eq,RetType,_RT,Depth,Self,X,L).


;bagof_eval(Eq,RetType,Depth,Self,X,S):- bagof(E,eval_ne(Eq,RetType,Depth,Self,X,E),S)*->true;S=[].

  (= 
    (bagof-eval $Eq $RetType $Dpth $Slf $X $L) 
    (, 
      (typed-list $X $Type $L) 
      (set-det)))
  (= 
    (bagof-eval $Eq $RetType $Depth $Self $X $L) 
    (findall $E 
      (eval-ne $Eq $RetType $Depth $Self $X $E) $L))


  (= 
    (setof-eval $Depth $Self $X $L) 
    (setof-eval = $RT $Depth $Self $X $L))
  (= 
    (setof-eval $Eq $RetType $Depth $Self $X $S) 
    (, 
      (bagof-eval $Eq $RetType $Depth $Self $X $L) 
      (sort $L $S)))



  (= 
    (eval-ne $Eq $RetType $Depth $Self $X $E) 
    (, 
      (eval $Eq $RetType $Depth $Self $X $E) 
      (not (var $E)) 
      (not (is-empty $E))))



  (ensure-loaded metta-subst)


  (= 
    (solve-quadratic $A $B $I $J $K) 
    (#= 
      (* 
        (+ $X $A) 
        (+ $X $B)) 
      (+ 
        (+ 
          (* 
            (* $I $X) $X) 
          (* $J $X)) $K)));X in -1000..1000,  ; Define a domain for X
  ; Define the quadratic equation
    ;label([X]).  ; Find solutions for X

