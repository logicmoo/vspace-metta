;self_subst(X):- var(X),!.
;self_subst(X):- string(X),!.
;self_subst(X):- number(X),!.
;self_subst([]).

  (= 
    (self-subst $X) 
    (, 
      (not (callable $X)) 
      (set-det)))
  (= 
    (self-subst $X) 
    (, 
      (set-det) 
      (self-eval $X) 
      (set-det)))
  (= 
    (self-subst $X) 
    (, 
      (is-valid-nb-state $X) 
      (set-det)))
  (= 
    (self-subst $X) 
    (, 
      (is-list $X) 
      (set-det) 
      (fail)))
;self_subst(X):- compound(X),!.
;self_subst(X):- is_ref(X),!,fail.
  (= 
    (self-subst $X) 
    (, 
      (atom $X) 
      (set-det) 
      (not (nb-current $X $_)) 
      (set-det)))
  (= 
    (self_subst  True) True) 
  (= 
    (self_subst  False) True) 
  (= 
    (self_subst  F) True)



  (nb-setval self-space &self)

  (= 
    (substs-to $XX $Y) 
    (, 
      (== $Y $XX) 
      (set-det)))
  (= 
    (substs-to $XX $Y) 
    (, 
      (== $Y True) 
      (set-det) 
      (is-True $XX) 
      (set-det)))

;current_self(Space):- nb_current(self_space,Space).

  (= 
    (subst-args $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (atom $Eq) 
      (\== $Eq =) 
      (\== $Eq match) 
      (set-det) 
      (call $Eq = $RetType $Depth $Self $X $Y)))/*
subst_args(Eq,RetType,A,AA):-
  current_self(Space),
  subst_args(Eq,RetType,11,Space,A,AA).

;subst_args(Eq,RetType,Depth,_Self,X,_Y):- forall(between(6,Depth,_),write(' ')),writeqln(subst_args(Eq,RetType,X)),fail.
*/


 
  (style-check (- singleton))



;subst_args(Eq,RetType,_Dpth,_Slf,X,Y):- nonvar(Y),X=Y,!.
;subst_args(Eq,RetType,Depth,Self,X,Y):- nonvar(Y),!,subst_args(Eq,RetType,Depth,Self,X,XX),substs_to(XX,Y).

  (= 
    (subst-args $Eq $RetType $Dpth $Slf $X $Y) 
    (, 
      (self-subst $X) 
      (set-det) 
      (= $Y $X)))
  (= 
    (subst-args $Eq $RetType $Dpth $Slf 
      (Cons  $X $T) $Y) 
    (, 
      (== $T Nil) 
      (not (callable $X)) 
      (set-det) 
      (= $Y 
        (:: $X))))

  (= 
    (subst-args $Eq $RetType $Depth $Self 
      (Cons  $F $X) $Y) 
    (, 
      (mnotrace (is $D1 (- $Depth 1))) 
      (set-det) 
      (subst-args0 $Eq $RetType $D1 $Self 
        (Cons  $F $X) $Y))); (F=='superpose' ; ( option_value(no_repeats,false))),


  (= 
    (subst-args $Eq $RetType $Depth $Self $X $Y) 
    (subst-args0 $Eq $RetType $Depth $Self $X $Y))

  (nodebug (metta eval))/*
subst_args(Eq,RetType,Depth,Self,X,Y):-
  mnotrace((no_repeats_var(YY),
  D1 is Depth-1)),
  subst_args0(Eq,RetType,D1,Self,X,Y),
   mnotrace(( \+ (Y\=YY))).
*/



  (= 
    (subst-args0 $Eq $RetType $Dpth $Slf $X $Y) 
    (, 
      (self-subst $X) 
      (set-det) 
      (= $Y $X)))/*
debugging_metta(G):-is_debugging((eval))->ignore(G);true.
w_indent(Depth,Goal):-
  \+ \+ mnotrace(ignore(((
    format('~N'),
    setup_call_cleanup(forall(between(Depth,101,_),write('  ')),Goal, format('~N')))))).
indentq(DR,EX,Term):-
  \+ \+ mnotrace(ignore(((
    format('~N'),
    setup_call_cleanup(forall(between(Depth,101,_),write('  ')),format('~q',[Term]),
    format('~N')))))).


with_debug(Flag,Goal):- is_debugging(Flag),!, call(Goal).
with_debug(Flag,Goal):- flag(eval_num,_,0),
  setup_call_cleanup(set_debug(Flag,true),call(Goal),set_debug(Flag,flase)).

flag_to_var(Flag,Var):- atom(Flag), \+ atom_concat('trace-on-',_,Flag),!,atom_concat('trace-on-',Flag,Var).
flag_to_var(metta(Flag),Var):- !, nonvar(Flag), flag_to_var(Flag,Var).
flag_to_var(Flag,Var):- Flag=Var.

set_debug(Flag,Val):- \+ atom(Flag), flag_to_var(Flag,Var), atom(Var),!,set_debug(Var,Val).
set_debug(Flag,true):- !, debug(metta(Flag)),flag_to_var(Flag,Var),set_option_value(Var,true).
set_debug(Flag,false):- nodebug(metta(Flag)),flag_to_var(Flag,Var),set_option_value(Var,false).
if_trace((Flag;true),Goal):- !, notrace(( catch_err(ignore((Goal)),E,wdmsg(E-->if_trace((Flag;true),Goal))))).
if_trace(Flag,Goal):- notrace((catch_err(ignore((is_debugging(Flag),Goal)),E,wdmsg(E-->if_trace(Flag,Goal))))).


;maybe_efbug(SS,G):- efbug(SS,G)*-> if_trace(eval,wdmsg(SS=G)) ; fail.
maybe_efbug(_,G):- call(G).
;efbug(P1,G):- call(P1,G).
efbug(_,G):- call(G).



is_debugging(Flag):- var(Flag),!,fail.
is_debugging((A;B)):- !, (is_debugging(A) ; is_debugging(B) ).
is_debugging((A,B)):- !, (is_debugging(A) , is_debugging(B) ).
is_debugging(not(Flag)):- !,  \+ is_debugging(Flag).
is_debugging(Flag):- Flag== false,!,fail.
is_debugging(Flag):- Flag== true,!.
is_debugging(Flag):- debugging(metta(Flag),TF),!,TF==true.
is_debugging(Flag):- debugging(Flag,TF),!,TF==true.
is_debugging(Flag):- flag_to_var(Flag,Var),
   (option_value(Var,true)->true;(Flag\==Var -> is_debugging(Var))).

:- nodebug(metta(overflow)).

*/
;subst_args0(Eq,RetType,Depth,_Slf,X,Y):- Depth<1,!,X=Y, (\+ trace_on_overflow-> true; flag(eval_num,_,0),debug(metta(eval))).

  (= 
    (subst-args0 $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (is $Depth2 
        (- $Depth 1)) 
      (subst-args11 $Eq $RetType $Depth $Self $X $M) 
      (if-then-else 
        (\=@= $M $X) 
        (subst-args0 $Eq $RetType $Depth2 $Self $M $Y) 
        (= $Y $X))))


  (= 
    (subst-args11 $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (not (is-debugging subst-args)) 
      (set-det) 
      (is $D1 
        (- $Depth 1)) 
      (subst-args1 $Eq $RetType $D1 $Self $X $Y)))
  (= 
    (subst-args11 $Eq $RetType $Eq $RetType $Depth $Self $X $Y) 
    (, 
      (notrace (, (flag subst-args-num $EX (+ $EX 1)) (is $D1 (- $Depth 1)) (is $DR (- 99 $D1)) (= $PrintRet $_) (option-else trace-length $Max 100) (if-t (> $EX $Max) (, (set-debug subst-args False) (is $MaxP1 (+ $Max 1)) (set-debug overflow False) (format '; Switched off tracing. For a longer trace: !(pragma! trace-length ~w)' (:: $MaxP1)))) (nop (notrace (no-repeats-var $YY))) (if-t (< $DR 10) (if-trace subst-args (, (= $PrintRet 1) (indentq $DR $EX --> (subst $X))))) (= $Ret (retval fail)))) 
      (call-cleanup 
        (, 
          (subst-args1 $Eq $RetType $D1 $Self $X $Y) 
          (notrace (, (not (\= $Y $YY)) (nb-setarg 1 $Ret $Y)))) 
        (if-then-else 
          (== $PrintRet 1) 
          (indentq $DR $EX <-- $Ret) 
          (mnotrace (ignore (, (\=@= $Y $X) (if-t (< $DR 10) (if-trace subst-args (indentq $DR $EX <-- (s $Ret))))))))) 
      (if-then-else 
        (\=@= $Ret 
          (retval fail)) True 
        (, 
          (rtrace (subst-args-00 $Eq $RetType $D1 $Self $X $Y)) 
          (fail)))))


  (discontiguous (/ subst-args1 6))/*

subst_args11(Eq,RetType,_Dpth,_Slf,X,Y):- self_subst(X),!,Y=X.
subst_args11(Eq,RetType,Depth,Self,X,Y):- \+ debugging(metta(eval)),!, subst_args1(Eq,RetType,Depth,Self,X,Y).
subst_args11(Eq,RetType,Depth,Self,X,Y):-

notrace((

  flag(eval_num,EX,EX+1),
  D1 is Depth-1,
  DR is 99-D1,
  PrintRet = _,
  option_else('trace-length',Max,100),
  if_t((EX>Max), (set_debug(eval,false),MaxP1 is Max+1, set_debug(overflow,false),
      format('; Switched off tracing. For a longer trace: !(pragma! trace-length ~w)',[MaxP1]))),
  nop(notrace(no_repeats_var(YY))),

  if_t(DR<10,if_trace((eval),(PrintRet=1, indentq(DR,EX,'-->'(subst_args(Self,X,'$VAR'('RET'))))))),
  Ret=retval(fail))),

  call_cleanup((
    subst_args1(Eq,RetType,D1,Self,X,Y),
    mnotrace(( \+ (Y\=YY), nb_setarg(1,Ret,Y)))),
    mnotrace(ignore(((Y\=@=X,if_trace(metta(eval),indentq(DR,EX,'<--'(Ret)))))))),
  (Ret\=@=retval(fail)->true;(rtrace(subst_args0(Eq,RetType,D1,Self,X,Y)),fail)).
*/

  (discontiguous (/ subst-args2 6))


  (= 
    (subst-args1 $Eq $RetType $Depth $Self $X $Y) 
    (if-then-else 
      (var $Eq) 
      (, 
        (set-det) 
        (subst-args1 = $RetType $Depth $Self $X $Y)) 
      (, 
        (atom $Eq) 
        (\== $Eq =) 
        (\== $Eq match) 
        (set-det) 
        (call $Eq = $RetType $Depth $Self $X $Y))))

  (= 
    (subst-args1 $Eq $RetType $Dpth $Slf $Name $Value) 
    (, 
      (atom $Name) 
      (nb-current $Name $Value) 
      (set-det)))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (Cons  $V $VI) $VVO) 
    (, 
      (not (is-list $VI)) 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $VI $VM) 
      (if-then-else 
        (\== $VM $VI) 
        (subst-args $Eq $RetType $Depth $Self 
          (Cons  $V $VM) $VVO) 
        (, 
          (subst-args $Eq $RetType $Depth $Self $V $VV) 
          (if-then-else 
            (\== $V $VV) 
            (subst-args $Eq $RetType $Depth $Self 
              (Cons  $VV $VI) $VVO) 
            (= $VVO 
              (Cons  $V $VI)))))))

  (= 
    (subst-args1 $Eq $RetType $Dpth $Slf $X $Y) 
    (, 
      (not (is-list $X)) 
      (set-det) 
      (= $Y $X)))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (Cons  $V $VI) 
      (Cons  $V $VO)) 
    (, 
      (var $V) 
      (is-list $VI) 
      (set-det) 
      (maplist 
        (subst-args $Eq $RetType $Depth $Self) $VI $VO)))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: let $A $A5 $AA) $OO) 
    (, 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $A5 $AE) 
      (= $AE $A) 
      (subst-args $Eq $RetType $Depth $Self $AA $OO)));(var(A)->true;trace),

;subst_args1(Eq,RetType,Depth,Self,['let',A,A5,AA],AAO):- !,subst_args(Eq,RetType,Depth,Self,A5,A),subst_args(Eq,RetType,Depth,Self,AA,AAO).
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: let* Nil $Body) $RetVal) 
    (, 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $Body $RetVal)))
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: let* 
        (Cons  
          (:: $Var $Val) $LetRest) $Body) $RetVal) 
    (, 
      (set-det) 
      (subst-args1 $Eq $RetType $Depth $Self 
        (:: let $Var $Val 
          (:: let* $LetRest $Body)) $RetVal)))

    
  (= 
    (is_sl_op  >) True)  
  (= 
    (is_sl_op  <) True) ;  is_sl_op('>').
    
  (= 
    (is_sl_op  \=@=) True)


  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: $OP $N1 $N2) $TF) 
    (, 
      (is-sl-op $OP) 
      (set-det) 
      (or 
        (each-then 
          (, 
            (subst-args $Eq $RetType $Depth $Self $N1 $N1Res) 
            (subst-args $Eq $RetType $Depth $Self $N2 $N2Res) 
            (\=@= 
              (, $N1 $N2) 
              (, $N1Res $N2Res)) 
            (subst-args1 $Eq $RetType $Depth $Self 
              (:: $OP $N1Res $N2Res) $TF)) True) 
        (subst-selfless 
          (:: $OP $N1 $N2) $TF))))



  (= 
    (subst-args1 $Eq $RetType $Dpth $Slf 
      (:: repl!) True) 
    (, 
      (set-det) 
      (repl)))
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: 
        (set-det) $Cond) $Res) 
    (, 
      (set-det) 
      (call (subst-args $Eq $RetType $Depth $Self $Cond $Res))))
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: rtrace $Cond) $Res) 
    (, 
      (set-det) 
      (rtrace (subst-args $Eq $RetType $Depth $Self $Cond $Res))))
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: time $Cond) $Res) 
    (, 
      (set-det) 
      (time (subst-args $Eq $RetType $Depth $Self $Cond $Res))))
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: print $Cond) $Res) 
    (, 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $Cond $Res) 
      (format ~N) 
      (print $Res) 
      (format ~N)))
; !(println! $1)
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: println! $Cond) $Res) 
    (, 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $Cond $Res) 
      (format ~N) 
      (print $Res) 
      (format ~N)))

  (= 
    (subst-args1 $Eq $RetType $Dpth $Slf $List $Y) 
    (, 
      (is-list $List) 
      (maplist self-subst $List) 
      (= $List 
        (Cons  $H $_)) 
      (not (atom $H)) 
      (set-det) 
      (= $Y $List)))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: assertTrue $X) $TF) 
    (, 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self 
        (:: assertEqual $X True) $TF)))
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: assertFalse $X) $TF) 
    (, 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self 
        (:: assertEqual $X False) $TF)))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: assertEqual $X0 $Y0) $RetVal) 
    (, 
      (set-det) 
      (subst-vars $X0 $X) 
      (subst-vars $Y0 $Y) 
      (l1t-loonit-assert-source-tf 
        (:: assertEqual $X0 $Y0) 
        (, 
          (bagof-subst $Depth $Self $X $XX) 
          (bagof-subst $Depth $Self $Y $YY)) 
        (equal-enough-for-test $XX $YY) $TF) 
      (if-then-else 
        (== $TF True) 
        (return-empty $RetVal) 
        (= $RetVal 
          (:: got $XX expected $YY)))))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: assertNotEqual $X0 $Y0) $RetVal) 
    (, 
      (set-det) 
      (subst-vars $X0 $X) 
      (subst-vars $Y0 $Y) 
      (l1t-loonit-assert-source-tf 
        (:: assertNotEqual $X0 $Y0) 
        (, 
          (setof-subst $Depth $Self $X $XX) 
          (setof-subst $Depth $Self $Y $YY)) 
        (not (equal-enough $XX $YY)) $TF) 
      (if-then-else 
        (== $TF True) 
        (return-empty $RetVal) 
        (= $RetVal 
          (:: got $XX expected not $YY)))))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: assertEqualToResult $X0 $Y0) $RetVal) 
    (, 
      (set-det) 
      (subst-vars $X0 $X) 
      (subst-vars $Y0 $Y) 
      (l1t-loonit-assert-source-tf 
        (:: assertEqualToResult $X0 $Y0) 
        (, 
          (bagof-subst $Depth $Self $X $XX) 
          (= $Y $YY)) 
        (equal-enough-for-test $XX $YY) $TF) 
      (if-then-else 
        (== $TF True) 
        (return-empty $RetVal) 
        (= $RetVal 
          (:: got $XX expected $YY))) 
      (set-det)))



  (= 
    (l1t-loonit-assert-source-tf $Src $Goal $Check $TF) 
    (, 
      (copy-term $Goal $OrigGoal) 
      (l1t-loonit-asserts $Src 
        (time-eval '
; EVAL TEST
;' $Goal) $Check) 
      (as-tf $Check $TF) 
      (set-det) 
      (ignore (, (once (or (, (= $TF True) (is-debugging pass)) (, (= $TF False) (is-debugging fail)))) (with-debug eval (time-eval Trace $OrigGoal))))))


  (= 
    (l1t-loonit-asserts $Src $Goal $Check) 
    (loonit-asserts $Src $Goal $Check))



  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (Cons  $OP $ARGS) $Template) 
    (, 
      (is-space-op $OP) 
      (set-det) 
      (subst-args-as $Depth $Self 
        (Cons  $OP $ARGS) $Template)))/*
sort_result(Res,Res):- \+ compound(Res),!.
sort_result([And|Res1],Res):- is_and(And),!,sort_result(Res1,Res).
sort_result([T,And|Res1],Res):- is_and(And),!,sort_result([T|Res1],Res).
sort_result([H|T],[HH|TT]):- !, sort_result(H,HH),sort_result(T,TT).
sort_result(Res,Res).

unify_enough(L,L):-!.
unify_enough(L,C):- is_list(L),into_list_args(C,CC),!,unify_lists(CC,L).
unify_enough(C,L):- is_list(L),into_list_args(C,CC),!,unify_lists(CC,L).
unify_enough(C,L):- \+ compound(C),!,L=C.
unify_enough(L,C):- \+ compound(C),!,L=C.
unify_enough(L,C):- into_list_args(L,LL),into_list_args(C,CC),!,unify_lists(CC,LL).

unify_lists(C,L):- \+ compound(C),!,L=C.
unify_lists(L,C):- \+ compound(C),!,L=C.
unify_lists([C|CC],[L|LL]):- unify_enough(L,C),!,unify_lists(CC,LL).

equal_enough(R,V):- is_list(R),is_list(V),sort(R,RR),sort(V,VV),!,equal_enouf(RR,VV),!.
equal_enough(R,V):- copy_term(R,RR),copy_term(V,VV),equal_enouf(R,V),!,R=@=RR,V=@=VV.

equal_enough_for_test(X,Y):- must_det_ll((subst_vars(X,XX),subst_vars(Y,YY))),!,equal_enough(XX,YY),!.

equal_enouf(R,V):- R=@=V, !.
equal_enouf(_,V):- V=@='...',!.
equal_enouf(L,C):- is_list(L),into_list_args(C,CC),!,equal_enouf_l(CC,L).
equal_enouf(C,L):- is_list(L),into_list_args(C,CC),!,equal_enouf_l(CC,L).
;equal_enouf(R,V):- (var(R),var(V)),!, R=V.
equal_enouf(R,V):- (var(R);var(V)),!, R==V.
equal_enouf(R,V):- number(R),number(V),!, RV is abs(R-V), RV < 0.03 .
equal_enouf(R,V):- atom(R),!,atom(V), has_unicode(R),has_unicode(V).
equal_enouf(R,V):- (\+ compound(R) ; \+ compound(V)),!, R==V.
equal_enouf(L,C):- into_list_args(L,LL),into_list_args(C,CC),!,equal_enouf_l(CC,LL).

equal_enouf_l(C,L):- \+ compound(C),!,L=@=C.
equal_enouf_l(L,C):- \+ compound(C),!,L=@=C.
equal_enouf_l([C|CC],[L|LL]):- !, equal_enouf(L,C),!,equal_enouf_l(CC,LL).


has_unicode(A):- atom_codes(A,Cs),member(N,Cs),N>127,!.
set_last_error(_).

*/


; Definition of uses_op to validate operations

  (= 
    (is_space_op  match) True)
  (= 
    (is_space_op  get-atoms) True)
  (= 
    (is_space_op  add-atom) True)
  (= 
    (is_space_op  remove-atom) True)
  (= 
    (is_space_op  atom-count) True)
  (= 
    (is_space_op  atom-replace) True)


  (= 
    (subst-args-as $Depth $Self 
      (Cons  $OP $ARGS) $Template) 
    (, 
      (set-det) 
      (eval-20 = $_ $Depth $Self 
        (Cons  $OP $ARGS) $Template)))

  (= 
    (subst-args-as $Depth $Self 
      (:: match $Other $Goal $Template) $Template) 
    (, 
      (into-space $Self $Other $Space) 
      (set-det) 
      (metta-atom-iter-l1t $Eq $Depth $Space $Goal)))
  (= 
    (subst-args-as $Depth $Self 
      (:: match $Other $Goal $Template $Else) $Template) 
    (or 
      (each-then 
        (subst-args-as $Depth $Self 
          (:: match $Other $Goal $Template) $Template) True) 
      (= $Template $Else)))
  (= 
    (subst-args-as $Depth $Self 
      (:: get-atoms $Other) $PredDecl) 
    (, 
      (set-det) 
      (into-space $Self $Other $Space) 
      (metta-atom-iter-l1t $Eq $Depth $Space $PredDecl)))
  (= 
    (subst-args-as $Dpth $Self 
      (:: add-atom $Other $PredDecl) $TF) 
    (, 
      (set-det) 
      (into-space $Self $Other $Space) 
      (as-tf 
        (do-metta $Space load $PredDecl) $TF)))
  (= 
    (subst-args-as $Dpth $Self 
      (:: remove-atom $Other $PredDecl) $TF) 
    (, 
      (set-det) 
      (into-space $Self $Other $Space) 
      (as-tf 
        (do-metta $Space unload $PredDecl) $TF)))
  (= 
    (subst-args-as $Dpth $Self 
      (:: atom-count $Other) $Count) 
    (, 
      (set-det) 
      (into-space $Self $Other $Space) 
      (findall $_ 
        (add-atom  $Other 
          ($Eq $_ $_)) $L_as) 
      (length $L_as $C_as) 
      (findall $_ 
        (get-metta-atom $Eq $Space $_) $L2) 
      (length $L2 $C2) 
      (is $Count 
        (+ $C_as $C2))))
  (= 
    (subst-args-as $Dpth $Self 
      (:: atom-replace $Other $Rem $Add) $TF) 
    (, 
      (set-det) 
      (into-space $Self $Other $Space) 
      (copy-term $Rem $RCopy) 
      (as-tf 
        (, 
          (metta-atom-iter-l1t-ref $Space $RCopy $Ref) 
          (=@= $RCopy $Rem) 
          (erase $Ref) 
          (do-metta $Other load $Add)) $TF)))


  (= 
    (subst-args1 $Eq $RetType $Depth $Self $X $Res) 
    (, 
      (= $X 
        (Cons  $CaseSym $_)) 
      (== $CaseSym case) 
      (set-det) 
      (eval-20 = $_ $Depth $Self $X $Res)))

; Macro: case

  (= 
    (subst-args1-hide $Depth $Self $X $Res) 
    (, 
      (= $X 
        (:: $CaseSym $A $CL)) 
      (== $CaseSym case) 
      (set-det) 
      (into-case-l1t-list $CL $CASES) 
      (findall 
        (- $Key $Value) 
        (, 
          (nth0 $Nth $CASES $Case0) 
          (is-case-l1t $Key $Case0 $Value) 
          (if-trace case 
            (, 
              (format ~N) 
              (writeqln (= (c $Nth $Key) $Value))))) $KVs) 
      (set-det) 
      (or 
        (each-then 
          (, 
            (subst-args $Eq $RetType $Depth $Self $A $AA) 
            (if-trace case 
              (writeqln (= switch $AA))) 
            (if-then-else 
              (select-case-l1t $Depth $Self $AA $KVs $Value) True 
              (, 
                (member 
                  (- $Void $Value) $KVs) 
                (== $Void %void%)))) True) 
        (, 
          (member 
            (- $Void $Value) $KVs) 
          (== $Void %void%))) 
      (subst-args $Eq $RetType $Depth $Self $Value $Res)))

  
  (= 
    (select-case-l1t $Depth $Self $AA $Cases $Value) 
    (if-then-else 
      (best-key-l1t $AA $Cases $Value) True 
      (, 
        (maybe-special-key-l1ts $Depth $Self $Cases $CasES) 
        (if-then-else 
          (best-key-l1t $AA $CasES $Value) True 
          (, 
            (member 
              (- $Void $Value) $CasES) 
            (== $Void %void%))))))

  
  (= 
    (best-key-l1t $AA $Cases $Value) 
    (if-then-else 
      (, 
        (member 
          (- $Match $Value) $Cases) 
        (unify-enough $AA $Match)) True 
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
            (= $AA $Match))))))

		;into_case_l1t_list([[C|ASES0]],CASES):-  is_list(C),!, into_case_l1t_list([C|ASES0],CASES),!.
	
  (= 
    (into-case-l1t-list $CASES $CASES) 
    (, 
      (is-list $CASES) 
      (set-det)))
		
  (= 
    (is-case-l1t $AA 
      (:: $AA $Value) $Value) 
    (set-det))
		
  (= 
    (is_case_l1t  $AA 
      (Cons  $AA $Value) $Value) True)

   
  (= 
    (maybe-special-key-l1ts $Depth $Self 
      (Cons  
        (- $K $V) $KVI) 
      (Cons  
        (- $AK $V) $KVO)) 
    (, 
      (subst-args $Eq $RetType $Depth $Self $K $AK) 
      (\=@= $K $AK) 
      (set-det) 
      (maybe-special-key-l1ts $Depth $Self $KVI $KVO)))
   
  (= 
    (maybe-special-key-l1ts $Depth $Self 
      (Cons  $_ $KVI) $KVO) 
    (maybe-special-key-l1ts $Depth $Self $KVI $KVO))
   
  (= 
    (maybe_special_key_l1ts  $Depth $Self () ()) True)


;[collapse,[1,2,3]]

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: collapse $List) $Res) 
    (, 
      (set-det) 
      (bagof-subst $Depth $Self $List $Res)))
;[superpose,[1,2,3]]
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: superpose $List) $Res) 
    (, 
      (set-det) 
      (member $E $List) 
      (subst-args $Eq $RetType $Depth $Self $E $Res)))


  (= 
    (get-l1t-sa-p1 $P3 $E $Cmpd $SA) 
    (, 
      (compound $Cmpd) 
      (get-l1t-sa-p2 $P3 $E $Cmpd $SA)))

  (= 
    (get-l1t-sa-p2 $P3 $E $Cmpd 
      (call $P3 $N1 $Cmpd)) 
    (arg $N1 $Cmpd $E))
  (= 
    (get-l1t-sa-p2 $P3 $E $Cmpd $SA) 
    (, 
      (arg $_ $Cmpd $Arg) 
      (get-l1t-sa-p1 $P3 $E $Arg $SA)))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self $Term $Res) 
    (, 
      (fail) 
      (mnotrace (, (get-l1t-sa-p1 setarg $ST $Term $P1) (compound $ST) (= $ST (:: $F $List)) (== $F superpose) (nonvar $List) (call $P1 $Var))) 
      (set-det) 
      (member $Var $List) 
      (subst-args $Eq $RetType $Depth $Self $Term $Res))); ST\==Term,
;maplist(atomic,List),
;max_counting(F,20),


  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: nop) $_) 
    (, 
      (set-det) 
      (fail)))/*

sub_sterm(Sub,Sub).
sub_sterm(Sub,Term):- sub_sterm1(Sub,Term).
sub_sterm1(_  ,List):- \+ compound(List),!,fail.
sub_sterm1(Sub,List):- is_list(List),!,member(SL,List),sub_sterm(Sub,SL).
sub_sterm1(_  ,[_|_]):-!,fail.
sub_sterm1(Sub,Term):- arg(_,Term,SL),sub_sterm(Sub,SL).
*/
; =================================================================
; =================================================================
; =================================================================
;  NOP/EQUALITU/DO
; =================================================================
; =================================================================
; ================================================================

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: nop $Expr) $Empty) 
    (, 
      (set-det) 
      (ignore (subst-args $Eq $RetType $Depth $Self $Expr $_)) 
      (return-empty Nil $Empty)))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: do $Expr) $Empty) 
    (, 
      (set-det) 
      (forall 
        (subst-args $Eq $RetType $Depth $Self $Expr $_) True) 
      (return-empty Nil $Empty)))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: call $S) $TF) 
    (, 
      (set-det) 
      (eval-call $S $TF)))

; =================================================================
; =================================================================
; =================================================================
;  if/If
; =================================================================
; =================================================================
; =================================================================


  (= 
    (subst-args1 $Eq $RetType $Depth $Self $PredDecl $Res) 
    (, 
      (= $Do_more_defs 
        (do-more-defs True)) 
      (get-atoms  &self 
        (= 
          (eval_21  subst_args $RetType $Depth $Self $PredDecl $Res) $Body)) 
      (== $Do_more_defs 
        (do-more-defs True)) 
      (call $Body) 
      (nb-setarg 1 $Do_more_defs False) 
      (deterministic $TF) 
      (if-then-else 
        (== $TF True) 
        (set-det) True)))


  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: if $Cond $Then $Else) $Res) 
    (, 
      (set-det) 
      (subst-args $Eq Bool $Depth $Self $Cond $TF) 
      (if-then-else 
        (is-True $TF) 
        (subst-args $Eq $RetType $Depth $Self $Then $Res) 
        (subst-args $Eq $RetType $Depth $Self $Else $Res))))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: If $Cond $Then $Else) $Res) 
    (, 
      (set-det) 
      (subst-args $Eq Bool $Depth $Self $Cond $TF) 
      (if-then-else 
        (is-True $TF) 
        (subst-args $Eq $RetType $Depth $Self $Then $Res) 
        (subst-args $Eq $RetType $Depth $Self $Else $Res))))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: If $Cond $Then) $Res) 
    (, 
      (set-det) 
      (subst-args $Eq Bool $Depth $Self $Cond $TF) 
      (if-then-else 
        (is-True $TF) 
        (subst-args $Eq $RetType $Depth $Self $Then $Res) 
        (, 
          (set-det) 
          (fail) 
          (= $Res Nil) 
          (set-det)))))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: if $Cond $Then) $Res) 
    (, 
      (set-det) 
      (subst-args $Eq Bool $Depth $Self $Cond $TF) 
      (if-then-else 
        (is-True $TF) 
        (subst-args $Eq $RetType $Depth $Self $Then $Res) 
        (, 
          (set-det) 
          (fail) 
          (= $Res Nil) 
          (set-det)))))


  (= 
    (subst-args1 $Eq $RetType $Dpth $Slf 
      (:: $_ $Nothing) $NothingO) 
    (, 
      (== Nothing $Nothing) 
      (set-det) 
      (do-expander $Eq $RetType $Nothing $NothingO)))



  (= 
    (subst-args1 $Eq $RetType $Depth $Self $Term $Res) 
    (, 
      (fail) 
      (mnotrace (, (get-l1t-sa-p1 setarg $ST $Term $P1) (compound $ST) (= $ST (:: $F $List)) (== $F collapse) (nonvar $List) (call $P1 $Var))) 
      (set-det) 
      (setof-subst $Depth $Self $List $Var) 
      (subst-args $Eq $RetType $Depth $Self $Term $Res)));maplist(atomic,List),



;max_counting(F,Max):- flag(F,X,X+1),  X<Max ->  true; (flag(F,_,10),!,fail).


  (= 
    (subst-args1 $Eq $RetType $Dpth $Slf 
      (:: $_ $Nothing) $Nothing) 
    (, 
      (== Nothing $Nothing) 
      (set-det)))



  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (Cons  colapse $List) $Flat) 
    (, 
      (set-det) 
      (maplist 
        (subst-args $Eq $RetType $Depth $Self) $List $Res) 
      (flatten $Res $Flat)))
  (= 
    (subst-args1 $Eq $RetType $Dpth $Slf 
      (:: car-atom $Atom) $CAR) 
    (, 
      (set-det) 
      (= $Atom 
        (Cons  $CAR $_)) 
      (set-det)))
  (= 
    (subst-args1 $Eq $RetType $Dpth $Slf 
      (:: cdr-atom $Atom) $CDR) 
    (, 
      (set-det) 
      (= $Atom 
        (Cons  $_ $CDR)) 
      (set-det)))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: Cons $A $B) 
      (:: Cons $AA $BB)) 
    (, 
      (no-cons-reduce) 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $A $AA) 
      (subst-args $Eq $RetType $Depth $Self $B $BB)))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: Cons $A $B) 
      (Cons  $AA $BB)) 
    (, 
      (not no-cons-reduce) 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $A $AA) 
      (subst-args $Eq $RetType $Depth $Self $B $BB)))


  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: change-state! $StateExpr $UpdatedValue) $Ret) 
    (, 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $StateExpr $StateMonad) 
      (subst-args $Eq $RetType $Depth $Self $UpdatedValue $Value) 
      (change-state! $Depth $Self $StateMonad $Value $Ret)))
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: new-state $UpdatedValue) $StateMonad) 
    (, 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $UpdatedValue $Value) 
      (new-state $Depth $Self $Value $StateMonad)))
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: get-state $StateExpr) $Value) 
    (, 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $StateExpr $StateMonad) 
      (get-state $StateMonad $Value)))



; subst_args1(Eq,RetType,Depth,Self,['get-state',Expr],Value):- !, subst_args(Eq,RetType,Depth,Self,Expr,State), arg(1,State,Value).



; check_type:- option_else(typecheck,TF,'False'), TF=='True'.


  (dynamic (/ is-registered-state 1))
  (flush-output)
  (setenv RUST-BACKTRACE full)


  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: get-type $Val) $Type) 
    (, 
      (set-det) 
      (get-type-l1t $Depth $Self $Val $Type) 
      (ground $Type) 
      (\== $Type Nil) 
      (\== $Type $Val) 
      (set-det)))/*
; Function to check if an value is registered as a state name
:- dynamic(is_registered_state/1).

is_nb_state(G):-  is_valid_nb_state(G) -> true ;
                 is_registered_state(G),nb_current(G,S),is_valid_nb_state(S).


:- multifile(state_type_method/3).
:- dynamic(state_type_method/3).
space_type_method(is_nb_state,new_space,init_state).
space_type_method(is_nb_state,clear_space,clear_nb_values).
space_type_method(is_nb_state,add_atom,add_nb_value).
space_type_method(is_nb_state,remove_atom,'change-state!').
space_type_method(is_nb_state,replace_atom,replace_nb_value).
space_type_method(is_nb_state,atom_count,value_nb_count).
space_type_method(is_nb_state,get_atoms,'get-state').
space_type_method(is_nb_state,atom_iter,value_nb_iter).

state_type_method(is_nb_state,new_state,init_state).
state_type_method(is_nb_state,clear_state,clear_nb_values).
state_type_method(is_nb_state,add_value,add_nb_value).
state_type_method(is_nb_state,remove_value,'change-state!').
state_type_method(is_nb_state,replace_value,replace_nb_value).
state_type_method(is_nb_state,value_count,value_nb_count).
state_type_method(is_nb_state,'get-state','get-state').
state_type_method(is_nb_state,value_iter,value_nb_iter).
;state_type_method(is_nb_state,query,state_nb_query).

; Clear all values from a state
clear_nb_values(StateNameOrInstance) :-
    fetch_or_create_state(StateNameOrInstance, State),
    nb_setarg(1, State, []).



; Function to confirm if a term represents a state
is_valid_nb_state(State):- compound(State),functor(State,'State',_).

; Find the original name of a given state
state_original_name(State, Name) :-
    is_registered_state(Name),
    nb_current(Name, State).

; Register and initialize a new state
init_state(Name) :-
    State = 'State'(_,_),
    asserta(is_registered_state(Name)),
    nb_setval(Name, State).

; Change a value in a state
'change-state!'(Depth,Self,StateNameOrInstance, UpdatedValue, Out) :-
    fetch_or_create_state(StateNameOrInstance, State),
    arg(2, State, Type),
    ( (check_type,\+ get_type_l1t(Depth,Self,UpdatedValue,Type))
     -> (Out = ['Error', UpdatedValue, 'BadType'])
     ; (nb_setarg(1, State, UpdatedValue), Out = State) ).

; Fetch all values from a state
'get-state'(StateNameOrInstance, Values) :-
    fetch_or_create_state(StateNameOrInstance, State),
    arg(1, State, Values).

'new-state'(Depth,Self,Init,'State'(Init, Type)):- check_type->get_type_l1t(Depth,Self,Init,Type);true.

'new-state'(Init,'State'(Init, Type)):- check_type->get_type_l1t(10,'&self',Init,Type);true.

fetch_or_create_state(Name):- fetch_or_create_state(Name,_).
; Fetch an existing state or create a new one

fetch_or_create_state(State, State) :- is_valid_nb_state(State),!.
fetch_or_create_state(NameOrInstance, State) :-
    (   atom(NameOrInstance)
    ->  (is_registered_state(NameOrInstance)
        ->  nb_current(NameOrInstance, State)
        ;   init_state(NameOrInstance),
            nb_current(NameOrInstance, State))
    ;   is_valid_nb_state(NameOrInstance)
    ->  State = NameOrInstance
    ;   writeln('Error: Invalid input.')
    ),
    is_valid_nb_state(State).

*/


; mnotrace(G):- once(G).

  (= 
    (needs-subst $EvalMe) 
    (, 
      (is-list $EvalMe) 
      (set-det)))/*
is_decl_type(ST):- metta_type(_,_,Type),sub_term(T,Type),T=@=ST, \+ nontype(ST).
is_type(Type):- nontype(Type),!,fail.
is_type(Type):- is_decl_type(Type).
is_type(Type):- atom(Type).

nontype(Type):- var(Type),!.
nontype('->').
nontype(N):- number(N).

*/




  (= 
    (get-type-l1t $Dpth $Slf $Var %Undefined%) 
    (, 
      (var $Var) 
      (set-det)))
  (= 
    (get-type-l1t $Dpth $Slf $Val Number) 
    (, 
      (number $Val) 
      (set-det)))
  (= 
    (get-type-l1t $Depth $Self $Expr 
      (:: StateMonad $Type)) 
    (, 
      (is-valid-nb-state $Expr) 
      (get-state $Expr $Val) 
      (set-det) 
      (get-type-l1t $Depth $Self $Val $Type)))


  (= 
    (get-type-l1t $Depth $Self $EvalMe $Type) 
    (, 
      (needs-subst $EvalMe) 
      (subst-args $Eq $RetType $Depth $Self $EvalMe $Val) 
      (not (needs-subst $Val)) 
      (set-det) 
      (get-type-l1t $Depth $Self $Val $Type)))

  (= 
    (get-type-l1t $Dpth $Self 
      (Cons  $Fn $_) $Type) 
    (, 
      (symbol $Fn) 
      (metta-type $Self $Fn $List) 
      (last-element $List $Type) 
      (nonvar $Type) 
      (is-type $Type)))
  (= 
    (get-type-l1t $Dpth $Self $List $Type) 
    (, 
      (is-list $List) 
      (metta-type $Self $List $LType) 
      (last-element $LType $Type) 
      (nonvar $Type) 
      (is-type $Type)))

  (= 
    (get-type-l1t $Depth $Slf $Type $Type) 
    (, 
      (< $Depth 1) 
      (set-det)))
  (= 
    (get-type-l1t $Dpth $Self $List $Type) 
    (, 
      (is-list $List) 
      (metta-type $Self $Type 
        (Cons  -> $List))))
  (= 
    (get-type-l1t $Depth $Self $List $Types) 
    (, 
      (\== $List Nil) 
      (is-list $List) 
      (is $Depth2 
        (- $Depth 1)) 
      (maplist 
        (get-type-l1t $Depth2 $Self) $List $Types)))
  (= 
    (get-type-l1t $Dpth $Self $Fn $Type) 
    (, 
      (symbol $Fn) 
      (metta-type $Self $Fn $Type) 
      (set-det)))
;get_type_l1t(Depth,Self,Fn,Type):- nonvar(Fn),metta_type(Self,Fn,Type2),Depth2 is Depth-1,get_type_l1t(Depth2,Self,Type2,Type).
;get_type_l1t(Depth,Self,Fn,Type):- Depth>0,nonvar(Fn),metta_type(Self,Type,Fn),!. ;,!,last_element(List,Type).

  (= 
    (get-type-l1t $Depth $Self $Expr $Type) 
    (, 
      (is $Depth2 
        (- $Depth 1)) 
      (subst-args $Eq $RetType $Depth2 $Self $Expr $Val) 
      (\=@= $Expr $Val) 
      (get-type-l1t $Depth2 $Self $Val $Type)))


  (= 
    (get-type-l1t $Dpth $Slf $Val String) 
    (, 
      (string $Val) 
      (set-det)))
  (= 
    (get-type-l1t $Dpth $Slf $Val $Type) 
    (, 
      (is-decl-type $Val) 
      (= $Type $Val)))
  (= 
    (get-type-l1t $Dpth $Slf $Val Bool) 
    (, 
      (or 
        (== $Val False) 
        (== $Val True)) 
      (set-det)))
  (= 
    (get-type-l1t $Dpth $Slf $Val Symbol) 
    (symbol $Val))
;get_type_l1t(Depth,Self,[T|List],['List',Type]):- Depth2 is Depth-1,  is_list(List),get_type_l1t(Depth2,Self,T,Type),!,
;  forall((member(Ele,List),nonvar(Ele)),get_type_l1t(Depth2,Self,Ele,Type)),!.
;get_type_l1t(Depth,_Slf,Cmpd,Type):- compound(Cmpd), functor(Cmpd,Type,1),!.
  (= 
    (get-type-l1t $Dpth $Slf $Cmpd $Type) 
    (, 
      (not (ground $Cmpd)) 
      (set-det) 
      (= $Type Nil)))
  (= 
    (get_type_l1t  $Dpth $Slf $_ %Undefined%) 
    (empty))



  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: length $L) $Res) 
    (, 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $L $LL) 
      (set-det) 
      (if-then-else 
        (is-list $LL) 
        (length $LL $Res) 
        (= $Res 1))))
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: CountElement $L) $Res) 
    (, 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $L $LL) 
      (set-det) 
      (if-then-else 
        (is-list $LL) 
        (length $LL $Res) 
        (= $Res 1))))

  (= 
    (subst-args1 $Eq $RetType $Dpth $Self 
      (:: import! $Other $File) $RetVal) 
    (, 
      (into-space $Self $Other $Space) 
      (set-det) 
      (include-metta $Space $File) 
      (set-det) 
      (return-empty $Space $RetVal)))/*

is_feo_f('Cons').

is_seo_f('{...}').
is_seo_f('[...]').
is_seo_f('{}').
is_seo_f('[]').
is_seo_f('StateMonad').
is_seo_f('State').
is_seo_f('Event').
is_seo_f('Concept').
is_seo_f(N):- number(N),!.

*/
/*
subst_args1(Eq,RetType,Depth,Self,[F,A|Args],Res):-
   \+ self_subst(A),
   subst_args(Eq,RetType,Depth,Self,A,AA),AA\==A,
   subst_args(Eq,RetType,Depth,Self,[F,AA|Args],Res).


subst_args1(Eq,RetType,Depth,Self,[F,A1|AArgs],Res):- fail, member(F,['+']),
 cwdl(40,((
   append(L,[A|R],AArgs),
   \+ self_subst(A),
   subst_args(Eq,RetType,Depth,Self,A,AA),AA\==A,!,
   append(L,[AA|R],NewArgs), subst_args(Eq,RetType,Depth,Self,[F,A1|NewArgs],Res)))).
*/
/* ;;

; !(assertEqualToResult ((inc) 2) (3))
subst_args1(Eq,RetType,Depth,Self,[F|Args],Res):- is_list(F),
  metta_atom_iter_l1t(Eq,Depth,Self,['=',F,R]), subst_args(Eq,RetType,Depth,Self,[R|Args],Res).

subst_args1(Eq,RetType,Depth,Self,[F|Args],Res):- is_list(F), Args\==[],
  append(F,Args,FArgs),!,subst_args(Eq,RetType,Depth,Self,FArgs,Res).
*/
 ;RetVal=[].
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: bind! $Other $Expr) $RetVal) 
    (, 
      (into-name $Self $Other $Name) 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $Expr $Value) 
      (nb-setval $Name $Value) 
      (return-empty $Value $RetVal)))
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: pragma! $Other $Expr) $RetVal) 
    (, 
      (into-name $Self $Other $Name) 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $Expr $Value) 
      (set-option-value $Name $Value) 
      (return-empty $Value $RetVal)))
  (= 
    (subst-args1 $Eq $RetType $Dpth $Self 
      (:: transfer! $File) $RetVal) 
    (, 
      (set-det) 
      (include-metta $Self $File) 
      (return-empty $Self $RetVal)))



;l_l1t_args1(Depth,Self,['nop',Expr],Empty):- !,  subst_args(Eq,RetType,Depth,Self,Expr,_), return_empty([],Empty).

  (= 
    (subst-args1 $Eq $RetType $Dpth $Slf 
      (:: $And) True) 
    (, 
      (is-and $And) 
      (set-det)))/*
is_True(T):- T\=='False',T\=='F',T\==[].

is_and(S):- \+ atom(S),!,fail.
is_and('#COMMA'). is_and(','). is_and('and'). is_and('And').
*/

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: and $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (, 
          (subst-args $Eq $RetType $Depth $Self $X True) 
          (subst-args $Eq $RetType $Depth $Self $Y True)) $TF)))
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (Cons  $And 
        (Cons  $X $Y)) $TF) 
    (, 
      (is-and $And) 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $X $TF1) 
      (is-True $TF1) 
      (subst-args1 $Eq $RetType $Depth $Self 
        (Cons  $And $Y) $TF)))
;subst_args2(Eq,Depth,Self,[H|T],_):- \+ is_list(T),!,fail.
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: or $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (or 
          (subst-args $Eq $RetType $Depth $Self $X True) 
          (subst-args $Eq $RetType $Depth $Self $Y True)) $TF)))




  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: + $N1 $N2) $N) 
    (, 
      (number $N1) 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $N2 $N2Res) 
      (catch-err 
        (is $N 
          (+ $N1 $N2Res)) $E 
        (, 
          (set-last-error (:: Error $N2Res Number)) 
          (fail)))))
  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (:: - $N1 $N2) $N) 
    (, 
      (number $N1) 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $N2 $N2Res) 
      (catch-err 
        (is $N 
          (- $N1 $N2Res)) $E 
        (, 
          (set-last-error (:: Error $N2Res Number)) 
          (fail)))))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self 
      (Cons  $V $VI) 
      (Cons  $V $VO)) 
    (, 
      (nonvar $V) 
      (fail) 
      (is-metta-data-functor $Eq $V) 
      (is-list $VI) 
      (set-det) 
      (maplist 
        (subst-args $Eq $RetType $Depth $Self) $VI $VO)))

  (= 
    (subst-args1 $Eq $RetType $Depth $Self $X $Y) 
    (or 
      (each-then 
        (subst-args2 $Eq $Depth $Self $X $Y) True) 
      (or 
        (each-then 
          (subst-args2-failed $Depth $Self $X $Y) True) 
        (= $X $Y))))



  (= 
    (subst-args2-failed $Dpth $Slf $T $TT) 
    (, 
      (== $T Nil) 
      (set-det) 
      (= $TT Nil)))
  (= 
    (subst-args2-failed $Dpth $Slf $T $TT) 
    (, 
      (var $T) 
      (set-det) 
      (= $TT $T)))
  (= 
    (subst-args2-failed $Dpth $Slf 
      (Cons  $F $LESS) $Res) 
    (, 
      (once (subst-selfless (Cons  $F $LESS) $Res)) 
      (mnotrace (\== (Cons  $F $LESS) $Res)) 
      (set-det)))
;subst_args2_failed(Depth,Self,[V|Nil],[O]):- Nil==[], once(subst_args(Eq,RetType,Depth,Self,V,O)),V\=@=O,!.
  (= 
    (subst-args2-failed $Depth $Self 
      (Cons  $H $T) 
      (Cons  $HH $TT)) 
    (, 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self $H $HH) 
      (subst-args2-failed $Depth $Self $T $TT)))

  (= 
    (subst-args2-failed $Depth $Self $T $TT) 
    (subst-args $Eq $RetType $Depth $Self $T $TT))

   ;subst_args(Eq,RetType,Depth,Self,X,Y):- subst_args1(Eq,RetType,Depth,Self,X,Y)*->true;Y=[].

;subst_args1(Eq,RetType,Depth,_,_,_):- Depth<1,!,fail.
;subst_args1(Eq,RetType,Depth,_,X,Y):- Depth<3, !, ground(X), (Y=X).
;subst_args1(Eq,RetType,_Dpth,_Slf,X,Y):- self_subst(X),!,Y=X.

; Kills zero arity functions subst_args1(Eq,RetType,Depth,Self,[X|Nil],[Y]):- Nil ==[],!,subst_args(Eq,RetType,Depth,Self,X,Y).



  (= 
    (subst-args2 $Eq $Depth $_ $X $Y) 
    (, 
      (< $Depth 3) 
      (set-det) 
      (fail) 
      (ground $X) 
      (= $Y $X)))/*
into_values(List,Many):- List==[],!,Many=[].
into_values([X|List],Many):- List==[],is_list(X),!,Many=X.
into_values(Many,Many).
subst_args2(Eq,_Dpth,_Slf,Name,Value):- atom(Name), nb_current(Name,Value),!.
*/
; Macro Functions
;subst_args1(Eq,RetType,Depth,_,_,_):- Depth<1,!,fail.

  (= 
    (subst-args2 $Eq $Depth $Self 
      (Cons  $F $PredDecl) $Res) 
    (, 
      (fail) 
      (> $Depth 1) 
      (mnotrace (, (sub-sterm1 $SSub $PredDecl) (ground $SSub) (= $SSub (Cons  $_ $Sub)) (is-list $Sub) (maplist atomic $SSub))) 
      (subst-args $Eq $RetType $Depth $Self $SSub $Repl) 
      (mnotrace (, (\= $SSub $Repl) (subst $PredDecl $SSub $Repl $Temp))) 
      (subst-args $Eq $RetType $Depth $Self 
        (Cons  $F $Temp) $Res)))



; user defined function
  (= 
    (subst-args2 $Eq $Depth $Self 
      (Cons  $H $PredDecl) $Res) 
    (, 
      (mnotrace (is-user-defined-head $Eq $Self $H)) 
      (set-det) 
      (subst-args30 $Eq $Depth $Self 
        (Cons  $H $PredDecl) $Res)))

; function inherited by system
  (= 
    (subst-args2 $Eq $Depth $Self $PredDecl $Res) 
    (subst-args40 $Eq $Depth $Self $PredDecl $Res))


  (= 
    (subst-selfless 
      (:: == $X $Y) $TF) 
    (, 
      (as-tf 
        (=:= $X $Y) $TF) 
      (set-det)))/*
last_element(T,E):- \+ compound(T),!,E=T.
last_element(T,E):- is_list(T),last(T,L),last_element(L,E),!.
last_element(T,E):- compound_name_arguments(T,_,List),last_element(List,E),!.




;catch_warn(G):- notrace(catch_err(G,E,(wdmsg(catch_warn(G)-->E),fail))).
;catch_nowarn(G):- notrace(catch_err(G,error(_,_),fail)).

;as_tf(G,TF):- catch_nowarn((call(G)*->TF='True';TF='False')).
*/

  (= 
    (subst-selfless 
      (:: == $X $Y) $TF) 
    (, 
      (as-tf 
        (=@= $X $Y) $TF) 
      (set-det)))
  (= 
    (subst-selfless 
      (:: = $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (= $X $Y) $TF)))
  (= 
    (subst-selfless 
      (:: > $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (> $X $Y) $TF)))
  (= 
    (subst-selfless 
      (:: < $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (< $X $Y) $TF)))
  (= 
    (subst-selfless 
      (:: => $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (>= $X $Y) $TF)))
  (= 
    (subst-selfless 
      (:: <= $X $Y) $TF) 
    (, 
      (set-det) 
      (as-tf 
        (=< $X $Y) $TF)))
  (= 
    (subst-selfless 
      (:: % $X $Y) $TF) 
    (, 
      (set-det) 
      (subst-selfless 
        (:: mod $X $Y) $TF)))

  (= 
    (subst-selfless $LIS $Y) 
    (, 
      (mnotrace (, (= $LIS (:: $F $_ $_)) (atom $F) (catch-warn (current-op $_ yfx $F)) (catch-err (, (\= $LIS (:: $_)) (s2p $LIS $IS) (is $Y $IS)) $_ fail))) 
      (set-det)))

; less Macro-ey Functions





  (discontiguous (/ subst-args3 4))/*
; Bind &kb22 to a new empty Space
!(bind! &kb22 (new-space))

; Some knowledge
(= (frog $x)
   (and (croaks $x)
        (eat_flies $x)))
(= (croaks Fritz) True)
(= (eat_flies Fritz) True)
(= (croaks Sam) True)
(= (eat_flies Sam) True)
(= (green $x)
   (frog $x))

; Define conditional
(: ift (-> Bool Atom Atom))
(= (ift True $then) $then)

; For anything that is green, assert it is Green in &kb22
!(ift (green $x)
      (add-atom &kb22 (Green $x)))

; Retrieve the inferred Green things: Fritz and Sam.
!(assertEqualToResult
  (match &kb22 (Green $x) $x)
  (Fritz Sam))
*/

;subst_args2(Eq,Depth,Self,PredDecl,Res):- subst_args3(Depth,Self,PredDecl,Res).

;subst_args2(Eq,_Dpth,_Slf,L1,Res):- is_list(L1),maplist(self_subst,L1),!,Res=L1.
;subst_args2(Eq,_Depth,_Self,X,X).


  (= 
    (subst-args30 $Eq $Depth $Self $H $B) 
    (or 
      (each-then 
        (subst-args34 $Depth $Self $H $B) True) 
      (subst-args37 $Eq $Depth $Self $H $B)))/*
is_user_defined_head(Eq,Other,H):- mnotrace(is_user_defined_head0(Eq,Other,H)).
is_user_defined_head0(Eq,Other,[H|_]):- !, nonvar(H),!, is_user_defined_head_f(Eq,Other,H).
is_user_defined_head0(Eq,Other,H):- callable(H),!,functor(H,F,_), is_user_defined_head_f(Eq,Other,F).
is_user_defined_head0(Eq,Other,H):- is_user_defined_head_f(Eq,Other,H).

is_user_defined_head_f(Eq,Other,H):- is_user_defined_head_f1(Eq,Other,H).
is_user_defined_head_f(Eq,Other,H):- is_user_defined_head_f1(Eq,Other,[H|_]).

;is_user_defined_head_f1(Eq,Other,H):- metta_type(Other,H,_).
is_user_defined_head_f1(Eq,Other,H):- get_metta_atom(Eq,Other,[H|_]).
is_user_defined_head_f1(Eq,Other,H):- metta_defn(Eq,Other,[H|_],_).
;is_user_defined_head_f(Eq,_,H):- is_metta_builtin(H).


is_special_op(F):- \+ atom(F), \+ var(F), !, fail.
is_special_op('case').
is_special_op(':').
is_special_op('=').
is_special_op('->').
is_special_op('let').
is_special_op('let*').
is_special_op('if').
is_special_op('rtrace').
is_special_op('or').
is_special_op('and').
is_special_op('not').
is_special_op('match').
is_special_op('call').
is_special_op('let').
is_special_op('let*').
is_special_op('nop').
is_special_op('assertEqual').
is_special_op('assertEqualToResult').

is_metta_builtin(Special):- is_special_op(Special).
is_metta_builtin('==').
is_metta_builtin(F):- once(atom(F);var(F)), current_op(_,yfx,F).
is_metta_builtin('println!').
is_metta_builtin('transfer!').
is_metta_builtin('collapse').
is_metta_builtin('superpose').
is_metta_builtin('+').
is_metta_builtin('-').
is_metta_builtin('*').
is_metta_builtin('/').
is_metta_builtin(';').
is_metta_builtin('==').
is_metta_builtin('<').
is_metta_builtin('>').
is_metta_builtin('all').
is_metta_builtin('import!').
is_metta_builtin('pragma!').
*/



  (= 
    (subst-args34 $Dpth $Self $H $B) 
    (or 
      (add-atom  $Self 
        ($Eq $H $B)) 
      (, 
        (get-metta-atom $Eq $Self $H) 
        (= $B $H))))

; Has argument that is headed by the same function

  (= 
    (subst-args37 $Eq $Depth $Self 
      (Cons  $H1 $Args) $Res) 
    (, 
      (mnotrace (, (append $Left (Cons  (Cons  $H2 $H2Args) $Rest) $Args) (== $H2 $H1))) 
      (set-det) 
      (subst-args $Eq $RetType $Depth $Self 
        (Cons  $H2 $H2Args) $ArgRes) 
      (mnotrace (, (\== $ArgRes (Cons  $H2 $H2Args)) (append $Left (Cons  $ArgRes $Rest) $NewArgs))) 
      (subst-args30 $Eq $Depth $Self 
        (Cons  $H1 $NewArgs) $Res)))

  (= 
    (subst-args37 $Eq $Depth $Self 
      (Cons  
        (Cons  $H $Start) $T1) $Y) 
    (, 
      (mnotrace (, (is-user-defined-head-f $Eq $Self $H) (is-list $Start))) 
      (add-atom  $Self 
        ($Eq 
          (Cons  $H $Start) $Left)) 
      (subst-args $Eq $RetType $Depth $Self 
        (Cons  $Left $T1) $Y)))

; Has subterm to subst
  (= 
    (subst-args37 $Eq $Depth $Self 
      (Cons  $F $PredDecl) $Res) 
    (, 
      (> $Depth 1) 
      (fail) 
      (quietly (sub-sterm1 $SSub $PredDecl)) 
      (mnotrace (, (ground $SSub) (= $SSub (Cons  $_ $Sub)) (is-list $Sub) (maplist atomic $SSub))) 
      (subst-args $Eq $RetType $Depth $Self $SSub $Repl) 
      (mnotrace (, (\= $SSub $Repl) (subst $PredDecl $SSub $Repl $Temp))) 
      (subst-args30 $Eq $Depth $Self 
        (Cons  $F $Temp) $Res)))

;subst_args37(Eq,Depth,Self,X,Y):- (subst_args38(Eq,Depth,Self,X,Y)*->true;metta_atom_iter_l1t(Eq,Depth,Self,[=,X,Y])).

  (= 
    (subst-args37 $Eq $Depth $Self $PredDecl $Res) 
    (, 
      (fail) 
      (term-variables $PredDecl $Vars) 
      (or 
        (each-then 
          (get-metta-atom $Eq $Self $PredDecl) 
          (if-then-else 
            (== $Vars Nil) 
            (= $Res True) 
            (= $Vars $Res))) 
        (, 
          (subst-args $Eq $RetType $Depth $Self $PredDecl $Res) 
          (ignore (if-then-else (== $Vars Nil) (= $Res True) (= $Vars $Res))))) 
      (\=@= $PredDecl $Res)))


  (= 
    (subst-args38 $Eq $Dpth $Self 
      (Cons  $H $_) $_) 
    (, 
      (mnotrace (not (is-user-defined-head-f $Eq $Self $H))) 
      (set-det) 
      (fail)))
  (= 
    (subst-args38 $Eq $Dpth $Self 
      (Cons  $H $T1) $Y) 
    (add-atom  $Self 
      ($Eq 
        (Cons  $H $T1) $Y)))
  (= 
    (subst-args38 $Eq $Dpth $Self 
      (Cons  $H $T1) True) 
    (get-metta-atom $Eq $Self 
      (Cons  $H $T1)))
  (= 
    (subst-args38 $Eq $Dpth $Self $CALL $Y) 
    (, 
      (fail) 
      (append $Left 
        (:: $Y) $CALL) 
      (add-atom  $Self 
        ($Eq $Left $Y))))


;subst_args3(Depth,Self,['ift',CR,Then],RO):- fail, !, ;fail, ; trace,
;   metta_defn(Eq,Self,['ift',R,Then],Become),subst_args(Eq,RetType,Depth,Self,CR,R),subst_args(Eq,RetType,Depth,Self,Then,_True),subst_args(Eq,RetType,Depth,Self,Become,RO).


  (= 
    (metta-atom-iter-l1t $Eq $Dpth $Other 
      (:: $Equal $H $B)) 
    (, 
      (== $Eq $Equal) 
      (set-det) 
      (or 
        (each-then 
          (add-atom  $Other 
            ($Eq $H $B)) True) 
        (, 
          (get-metta-atom $Eq $Other $H) 
          (= $B $H)))))

  (= 
    (metta-atom-iter-l1t $Eq $Depth $_ $_) 
    (, 
      (< $Depth 3) 
      (set-det) 
      (fail)))
  (= 
    (metta-atom-iter-l1t $Eq $Dpth $Slf Nil) 
    (set-det))
  (= 
    (metta-atom-iter-l1t $Eq $Dpth $Other $H) 
    (get-metta-atom $Eq $Other $H))
  (= 
    (metta-atom-iter-l1t $Eq $Depth $Other $H) 
    (, 
      (is $D2 
        (- $Depth 1)) 
      (add-atom  $Other 
        ($Eq $H $B)) 
      (metta-atom-iter-l1t $Eq $D2 $Other $B)))
  (= 
    (metta-atom-iter-l1t $Eq $Dpth $Slf 
      (:: $And)) 
    (, 
      (is-and $And) 
      (set-det)))
  (= 
    (metta-atom-iter-l1t $Eq $Depth $Self 
      (Cons  $And 
        (Cons  $X $Y))) 
    (, 
      (is-and $And) 
      (set-det) 
      (is $D2 
        (- $Depth 1)) 
      (metta-atom-iter-l1t $Eq $D2 $Self $X) 
      (metta-atom-iter-l1t $Eq $D2 $Self 
        (Cons  $And $Y))))

  (= 
    (metta-atom-iter-l1t-ref $Other 
      (:: = $H $B) $Ref) 
    (clause 
      (add-atom  $Other 
        ($Eq $H $B)) True $Ref))/*
metta_atom_iter_l1t2(_,Self,[=,X,Y]):- metta_defn(Eq,Self,X,Y).
metta_atom_iter_l1t2(_Dpth,Other,[Equal,H,B]):- '=' == Equal,!, metta_defn(Eq,Other,H,B).
metta_atom_iter_l1t2(_Dpth,Self,X,Y):- metta_defn(Eq,Self,X,Y). ;, Y\=='True'.
metta_atom_iter_l1t2(_Dpth,Self,X,Y):- get_metta_atom(Eq,Self,[=,X,Y]). ;, Y\=='True'.

*/

  (= 
    (metta-atom-iter-l1t-ref $Other $H $Ref) 
    (clause 
      (get-metta-atom $Eq $Other $H) True $Ref))

;not_compound(Term):- \+ is_list(Term),!.
;subst_args2(Eq,Depth,Self,Term,Res):- maplist(not_compound,Term),!,subst_args345(Depth,Self,Term,Res).


; function inherited by system

  (= 
    (subst-args40 $Eq $Depth $Self 
      (Cons  $F $X) $FY) 
    (, 
      (is-function $F) 
      (not (is-special-op $F)) 
      (is-list $X) 
      (maplist 
        (subst-args $Eq $RetType $Depth $Self) $X $Y) 
      (set-det) 
      (subst-args5 $Depth $Self 
        (Cons  $F $Y) $FY)))
  (= 
    (subst-args40 $Eq $Depth $Self $FX $FY) 
    (subst-args5 $Depth $Self $FX $FY))


  (= 
    (subst-args5 $Dpth $Slf 
      (Cons  $F $LESS) $Res) 
    (, 
      (once (subst-selfless (Cons  $F $LESS) $Res)) 
      (mnotrace (\== (Cons  $F $LESS) $Res)) 
      (set-det)))
  (= 
    (subst-args5 $Depth $Self 
      (Cons  $AE $More) $TF) 
    (or 
      (each-then 
        (, 
          (is-system-pred $AE) 
          (length $More $Len) 
          (is-syspred $AE $Len $Pred) 
          (catch-warn (as-tf (apply $Pred $More) $TF))) True) 
      (subst-args6 $Depth $Self 
        (Cons  $AE $More) $TF)))

  (= 
    (subst-args6 $Dpth $Slf 
      (Cons  $AE $More) $TF) 
    (, 
      (is-system-pred $AE) 
      (length 
        (Cons  $AE $More) $Len) 
      (is-syspred $AE $Len $Pred) 
      (append $More 
        (:: $TF) $Args) 
      (set-det) 
      (catch-warn (apply $Pred $Args))))

;subst_args40(Eq,Depth,Self,[X1|[F2|X2]],[Y1|Y2]):- is_function(F2),!,subst_args(Eq,RetType,Depth,Self,[F2|X2],Y2),subst_args(Eq,RetType,Depth,Self,X1,Y1).


;cwdl(DL,Goal):- call_with_depth_limit(Goal,DL,R), (R==depth_limit_exceeded->(!,fail);true).

  (= 
    (bagof-subst $Depth $Self $X $L) 
    (, 
      (set-det) 
      (findall $E 
        (subst-args $Eq $RetType $Depth $Self $X $E) $L)))

  (= 
    (setof-subst $Depth $Self $X $S) 
    (, 
      (set-det) 
      (findall $E 
        (subst-args $Eq $RetType $Depth $Self $X $E) $L) 
      (sort $L $S)))
;setof_subst(Depth,Self,X,S):- setof(E,subst_args(Eq,RetType,Depth,Self,X,E),S)*->true;S=[].



