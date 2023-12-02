%self_eval(X):- var(X),!.
%self_eval(X):- string(X),!.
%self_eval(X):- number(X),!.
%self_eval([]).
self_eval(X):- \+ callable(X),!.
self_eval(X):- is_metta_declaration(X),!.
self_eval(X):- is_valid_nb_state(X),!.
self_eval(X):- typed_list(X,_,_),!,fail.
self_eval(X):- is_list(X),!,fail.
%self_eval(X):- compound(X),!.
%self_eval(X):- is_ref(X),!,fail.
self_eval(X):- atom(X),!, \+ nb_current(X,_),!.
self_eval('True'). self_eval('False'). % self_eval('F').
self_eval('Empty').

is_metta_declaration([F,_,_|T]):- T ==[], (F==':'; (F=='=',  \+
   \+ (current_self(Space), is_user_defined_head_f(Space,F)))).
% is_metta_declaration([F|T]):- is_list(T), is_user_defined_head([F]),!.

:- nb_setval(self_space, '&self').
evals_to(XX,Y):- Y==XX,!.
evals_to(XX,Y):- Y=='True',!, is_True(XX),!.

current_self(Space):- nb_current(self_space,Space).

eval_args(A,AA):-
  eval_args(_RetType,A,AA).
eval_args(RetType,A,AA):-
  current_self(Space),
  eval_args(RetType,1000,Space,A,AA).


eval_args(Depth,Self,X,Y):-
  eval_args(_RetType,Depth,Self,X,Y).

%eval_args(RetType,Depth,_Self,X,_Y):- forall(between(6,Depth,_),write(' ')),writeqln(eval_args(RetType,X)),fail.

eval_args(_RetType,Dpth,_Slf,X,Y):- Dpth<0,!,X = Y.
eval_args(RetType,_Dpth,_Slf,X,Y):- nonvar(Y),X=Y,!, check_returnval(RetType,Y).
eval_args(RetType,_Dpth,_Slf,X,Y):- var(X),!,X=Y, check_returnval(RetType,Y).
eval_args(RetType,Depth,Self,X,Y):- nonvar(Y),!,eval_args(RetType,Depth,Self,X,XX),evals_to(XX,Y).
eval_args(RetType,_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X, check_returnval(RetType,Y).
eval_args(RetType,_Dpth,_Slf,[X|T],Y):- T==[], \+ callable(X),!,Y=[X], check_returnval(RetType,Y).


eval_args(RetType,Depth,Self,X,Y):-
  allow_repeats_eval(X),
  !,
  eval_args000011(RetType,Depth,Self,X,Y).
eval_args(RetType,Depth,Self,X,Y):-
  notrace((no_repeats_var(YY),
  D1 is Depth-1)),
  eval_args000011(RetType,D1,Self,X,Y),
   notrace(( \+ (Y\=YY))).

allow_repeats_eval(_):- !.
allow_repeats_eval(_):- option_value(no_repeats,false),!.
allow_repeats_eval(X):- \+ is_list(X),!,fail.
allow_repeats_eval([F|_]):- atom(F),allow_repeats_eval_f(F).
allow_repeats_eval_f('superpose').
allow_repeats_eval_f('collapse').

eval_args000011(RetType,D1,Self,X,Y):- eval_args0000(RetType,D1,Self,X,Y).
/*
eval_args000011(RetType,D1,Self,X,Y):-
  call_nth(eval_args0000(RetType,D1,Self,X,Y),Nth),
  Nth=1 -> make_requirments_for_nth2(Y,Reqs),
*/
debugging_metta(G):-is_debugging((eval))->ignore(G);true.


:- nodebug(metta(eval)).


w_indent(Depth,Goal):-
  \+ \+ mnotrace(ignore(((
    format('~N'),
    setup_call_cleanup(forall(between(Depth,101,_),write('  ')),Goal, format('~N')))))).
indentq(Depth,Term):-
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
if_trace((Flag;true),Goal):- !, catch(ignore((Goal)),E,wdmsg(E-->if_trace((Flag;true),Goal))).
if_trace(Flag,Goal):- catch(ignore((is_debugging(Flag),Goal)),E,wdmsg(E-->if_trace(Flag,Goal))).


%maybe_efbug(SS,G):- efbug(SS,G)*-> if_trace(eval,wdmsg(SS=G)) ; fail.
maybe_efbug(_,G):- call(G).
%efbug(P1,G):- call(P1,G).
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

eval_args_ne(RetType,Depth,Self,X,E):- eval_args(RetType,Depth,Self,X,E), \+ return_empty([],E).
eval_args90(RetType,Depth,Self,X,Y):- eval_args_ne(RetType,Depth,Self,X,Y). %*->true;eval_args_failed(Depth,Self,X,Y).
eval_args99(RetType,Depth,Self,X,Y):- eval_args(RetType,Depth,Self,X,Y)*->true;eval_args_failed(Depth,Self,X,Y).


eval_args0000(_RetType,Dpth,_Slf,X,Y):- Dpth<0,!,X = Y.
eval_args0000(RetType,Depth,_Slf,X,Y):- Depth<1,!,X=Y, (\+ is_debugging(overflow)-> true; flag(eval_num,_,0),set_debug((eval),true)), check_returnval(RetType,Y).
%eval_args0000(RetType,_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X.

eval_args0000(RetType,Depth,Self,X,Y):-
  Answers=ans([]),
  copy_term(X,XX),
  Depth2 is Depth-1,
  call_nth(eval_args111(RetType,Depth,Self,X,M),Nth),
  (is_bool_or_same(XX,Answers,Nth,M)
          -> (!, (Nth=1->Y=M;fail) )
            ;  eval_args(RetType,Depth2,Self,M,Y)),
  nop(nonvar(Y)).


eval_args111(_RetType,Dpth,_Slf,X,Y):- Dpth<0,!,X = Y.
eval_args111(RetType,Depth,Self,X,Y):-
    copy_term(X,XX),
    Depth2 is Depth-1,
    eval_args11(RetType,Depth2,Self,X,M),
    ((XX=@=M;X=@=M) -> Y =M ; eval_args111(RetType,Depth2,Self,M,Y)).


is_bool_or_same( X,_Ans,_Nth,M):- X=@=M,!.
%is_bool_or_same( _,_):- !, fail.
is_bool_or_same( X,_Ans,_Nth,_):- \+ ground(X),!,fail.
is_bool_or_same(_X,_Ans,_Nth,M):- \+ atomic(M),!,fail.
is_bool_or_same( X,_Ans,_Nth,'True'):- !, ground(X).
is_bool_or_same(_X,_Ans,_Nth,M):- is_bool_or(M).
% if `True` is not commented, we fail two tests in examples/compat/test_scripts/b4_nondeterm.metta
%is_bool_or('True').
is_bool_or('False').
is_bool_or([]).

%if_trace(not('disable-exec-trace'),
if_may_trace(G):- once(G).

%eval_args11(RetType,_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X.
%eval_args11(RetType,Depth,Self,X,Y):- \+ debugging(metta(eval)),!, eval_args20(RetType,Depth,Self,X,Y).

eval_args11f(_Dpth,_Slf,[F|LESS],Res):- once(maybe_efbug(show_success,eval_selfless([F|LESS],Res))),mnotrace(([F|LESS]\==Res)).

eval_args11(RetType,Depth,Self, [Op|More], Res):-
  mnotrace(( get_sa_p3a(ST,More,P1), % ST\==Term,
   compound(ST), eval_args11f(Depth,Self,ST,Var),
   call(P1,Var))), !,  %max_counting(F,30), member(Var,List),
   eval_args11(RetType,Depth,Self, [Op|More], Res).

eval_args11(RetType,Depth,Self, [Op|More], Res):- fail,
  mnotrace(( get_sa_p3(ST,More,P1), % ST\==Term,
   compound(ST), eval_args11f(Depth,Self,ST,Var),
   call(P1,Var))), !,  %max_counting(F,30), member(Var,List),
   eval_args11(RetType,Depth,Self, [Op|More], Res).

eval_args11(RetType,Depth,Self,X,Y):- flag(eval_num,EX,EX+1),
  option_else(traclen,Max,100),
  (EX>Max->(set_debug(eval,false),set_debug(exec,false),set_debug(overflow,false),
    skip(write('Switched off tracing. For a longer trace !(pragma! tracelen 101))')));true),
  notrace((D1 is Depth-1)),
  %DR is 199-D1,

  if_may_trace(if_trace((eval),indentq(Depth,'-->'(EX,Self,X,depth(Depth))))),
  Ret=retval(fail),
  call_cleanup(
   (eval_args20(RetType,D1,Self,X,Y),
    notrace(( nb_setarg(1,Ret,Y)))),
   if_may_trace(notrace(ignore(((Y\=@=X,flag(eval_num,_,EX),if_trace((eval),indentq(Depth,'<--'(EX,Ret))))))))),
  (Ret\=@=retval(fail)->true;(rtrace(eval_args20(RetType,D1,Self,X,Y)),fail)).



%get_set_sterm_p1(E,Cmpd,SA):-  is_list(Cmpd), !, get_sa_p3(E,Cmpd,SA).
%get_set_sterm_p1(E,Cmpd,SA):-  compound(Cmpd), get_sa_p2(E,Cmpd,SA).

get_sa_p2(E,Cmpd,setarg(N1,Cmpd)):- arg(N1,Cmpd,E).
get_sa_p2(E,Cmpd,SA):- arg(_,Cmpd,Arg),get_set_sterm_p1(E,Arg,SA).

get_sa_p4(_,Cmpd,_):- \+ is_list(Cmpd),!,fail.
get_sa_p4(E,Cmpd,SA):- member(Arg,Cmpd), get_sa_p4(E,Arg,SA).
get_sa_p4(E,Cmpd, b_set_nth1(N1,Cmpd)):- nth1(N1,Cmpd,E).

get_sa_p3(_,Cmpd,_):- \+ is_list(Cmpd),!,fail.
get_sa_p3(E,Cmpd, b_set_nth1(N1,Cmpd)):- nth1(N1,Cmpd,E).
get_sa_p3(E,Cmpd,SA):- member(Arg,Cmpd), get_sa_p3(E,Arg,SA).


get_sa_p3a(E,Cmpd, b_set_nth1(N1,Cmpd)):- nth1(N1,Cmpd,E).




nb_set_nth1(N, [_|List], Ele) :- N > 1, !, Nm1 is N - 1, nb_set_nth1(Nm1, List, Ele).
nb_set_nth1(N, List, Ele) :- nb_setarg(N, List, Ele).

b_set_nth1(N, [_|List], Ele) :- N > 1, !, Nm1 is N - 1, b_set_nth1(Nm1, List, Ele).
b_set_nth1(N, List, Ele) :- setarg(N, List, Ele).



:- discontiguous eval_args20/5.
:- discontiguous eval_args30/5.
:- discontiguous eval_args40/5.
:- discontiguous eval_args30fz/5.
:- discontiguous eval_args31/5.
:- discontiguous eval_args40/5.


/*
eval_args20(RetType,Depth,Self,[F,A|Args],Res):-
   \+ self_eval(A),
   eval_args(RetType,Depth,Self,A,AA),AA\==A,
   eval_args(RetType,Depth,Self,[F,AA|Args],Res).


eval_args20(RetType,Depth,Self,[F,A1|AArgs],Res):- fail, member(F,['+']),
 cwdl(40,((
   append(L,[A|R],AArgs),
   \+ self_eval(A),
   eval_args(RetType,Depth,Self,A,AA),AA\==A,!,
   append(L,[AA|R],NewArgs), eval_args(RetType,Depth,Self,[F,A1|NewArgs],Res)))).
*/

/* %%

% !(assertEqualToResult ((inc) 2) (3))
eval_args20(RetType,Depth,Self,[F|Args],Res):- is_list(F),
  metta_atom_iter(Depth,Self,['=',F,R]), eval_args(RetType,Depth,Self,[R|Args],Res).

eval_args20(RetType,Depth,Self,[F|Args],Res):- is_list(F), Args\==[],
  append(F,Args,FArgs),!,eval_args(RetType,Depth,Self,FArgs,Res).
*/


as_prolog(_Dpth,_Slf,I,O):- \+ iz_conz(I),!,I=O.
as_prolog(Depth,Self,[H|T],O):- H=='::',!,as_prolog(Depth,Self,T,O).
as_prolog(Depth,Self,[H|T],[HH|TT]):- as_prolog(Depth,Self,H,HH),as_prolog(Depth,Self,T,TT).


% eval_args20 is "1 step"
eval_args20(RetType,_Dpth,_Slf,Name,Value):- atom(Name), !, (nb_current(Name,Value) -> true ; Value=Name), check_returnval(Value,RetType).
eval_args20(RetType,_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X, check_returnval(RetType,Y).
eval_args20(_RetType,Depth,_,_,_):- Depth<1,!,fail.
eval_args20(RetType,Depth,_,X,Y):- Depth<3, !, ground(X), (Y=X), check_returnval(RetType,Y).
eval_args20(RetType,_Dpth,_Slf,X,Y):- \+ iz_conz(X),!,Y=X, check_returnval(RetType,Y).


%eval_args20(RetType,Depth,Self,[V|VI],[V|VO]):- var(V),!, freeze(V,eval_args20(RetType,Depth,Self,[V|VI],[V|VO])).
eval_args20(_RetType,Depth,Self,[V|VI],[V|VO]):- var(V),!,maplist(eval_args(Depth,Self),VI,VO).


eval_args20(RetType,Depth,Self,[V|VI],VVO):-  \+ is_list(VI),!,
 eval_args(RetType,Depth,Self,VI,VM),
  ( VM\==VI -> eval_args(RetType,Depth,Self,[V|VM],VVO) ;
    (eval_args(RetType,Depth,Self,V,VV), (V\==VV -> eval_args(RetType,Depth,Self,[VV|VI],VVO) ; VVO = [V|VI]))).

eval_args20(RetType,_Dpth,_Slf,X,Y):- \+ is_list(X),!,Y=X, check_returnval(RetType,Y).
eval_args20(RetType,_Dpth,_Slf,List,Y):- List=[H|_], \+ atom(H), maplist(self_eval,List), !,Y=List, check_returnval(RetType,Y).
%eval_args20(RetType,_Dpth,_Slf,[V|VI],[V|VO]):- var(V),!,VI=VO.
%eval_args20(RetType,_Dpth,_Slf,['=',H,B],['=',H,B]):- trace,throw(should_been_caught_by_is_metta_decl/1).

eval_args20(RetType,Depth,Self,['let',A,A5,AA],OO):- !,
  %(var(A)->true;trace),
  ((eval_args(Depth,Self,A5,AE), AE=A)),
  eval_args(RetType,Depth,Self,AA,OO).
%eval_args20(RetType,Depth,Self,['let',A,A5,AA],AAO):- !,eval_args(RetType,Depth,Self,A5,A),eval_args(RetType,Depth,Self,AA,AAO).
eval_args20(RetType,_Dpth,_Slf,['let*',[]|T], RetVal):- T==[], !, return_empty([],RetVal), check_returnval(RetType,RetVal).
eval_args20(RetType,Depth,Self,['let*',[],Body],RetVal):- !, eval_args(RetType,Depth,Self,Body,RetVal).

% let* version 1
eval_args20(RetType,Depth,Self,['let*',[[Var,Val]|LetRest]|Body],RetVal):-   !,
   eval_until_unify(Depth,Self,Var,Val),
    %eval_args(RetType,Depth,Self,['==',Var,Val],_),
    eval_args20(RetType,Depth,Self,['let*',LetRest|Body],RetVal).

% let* version 2
eval_args20(RetType,Depth,Self,['let*',[[Var,Val]|LetRest],Body],RetVal):- !, eval_args20(RetType,Depth,Self,['let',Var,Val,['let*',LetRest,Body]],RetVal).

% Macro: case
:- nodebug(metta(case)).
eval_args20(RetType,Depth,Self,['case',A,CL],Value):- !,
    eval_args(Depth,Self,A,AA),
    if_trace((case),(writeqln('switch'(A)=AA))),
    must_det_ll(into_case_list(1,CL,KVs)),
    select_switch(Depth,Self,AA,KVs,Match,Value),
    if_trace((case),(writeqln('matched'=Match))),
    if_trace((case),(writeqln('result'=Value))),
    check_returnval(Value,RetType).

select_switch(Depth,_Self,_A,_Cases,_Match,_Value):- Depth<1,!,fail.
select_switch(Depth,Self,A,Cases,Match,Value):-
  Depth2 is Depth -1,
  ((if_trace((case),(writeqln('select-1'=A))),select_case(Depth2,Self,A,Cases,Match,Value))*->true;
    ((eval_args_complete_change(_RetType,Depth2,Self,A,AA),if_trace((case),(writeqln('select-2'=AA))),select_switch(Depth2,Self, AA,Cases,Match,Value))*->true;
      (best_key('%void%',Cases,Match,Value)))).
/*
!(assertEqualToResult
  (case
    (Link $X B)
    ( ( (g $Y)
        (Link $X $Y)))) ())
*/
  select_case(Depth,Self,AA,Cases,Match,Value):-
     ((best_key(AA,Cases,Match,Value) *-> true ;
      ((maybe_special_keys(Depth,Self,Cases,CasES), best_key(AA,CasES,Match,Value)) *-> true;
         (fail)))).

  best_key(AA,Cases,Match,Value):-
    ((member(Match-Value,Cases),AA ==Match,must_det_ll(AA = Match))->true;
      ((member(Match-Value,Cases),AA=@=Match,must_det_ll(AA = Match))->true;
        ((member(Match-Value,Cases), AA=Match))->true;
         ((member(Match-Value,Cases),unify_enough(AA,Match))->true))).

 %into_case_list([[C|ASES0]],CASES):-  is_list(C),!, into_case_list([C|ASES0],CASES),!.
	into_case_list(N,[SV|CL],[S-V|CASES]):-
     must_det_ll(is_case(S,SV,V)),
     if_trace((case),(format('~N'), writeqln('case'(N)=(S>V)))),
     N2 is N+1,
     into_case_list(N2,CL,CASES).
  into_case_list(_,[],[]).

		is_case(AA,[AA,Value],Value):-!.
		is_case(AA,[AA|Value],Value).

   %maybe_special_keys(Depth,Self,[K-V|KVI],[AK-V|KVO]):- fail,eval_args(RetType,Depth,Self,K,AK), K\=@=AK,!, maybe_special_keys(Depth,Self,KVI,KVO).
   maybe_special_keys(Depth,Self,[_|KVI],KVO):-
     fail, maybe_special_keys(Depth,Self,KVI,KVO).
   maybe_special_keys(_Depth,_Self,[],[]).



must_eval(G):- call(G)*->true;throw(must_eval(G)).

%eval_args30(RetType,Depth,Self,[V|VI],Res):- is_special_builtin(V),!, eval_args30(RetType,Depth,Self,[V|VI],Res).
%eval_args30(RetType,Depth,Self,[V|VI],Res):- is_metta_builtin(V),!, adjust_args(Depth,Self,V,VI,VO), eval_args30(RetType,Depth,Self,[V|VO],Res).

eval_args20(RetType,_Dpth,_Slf,X,Y):- typed_list(X,_,List), !, member(Y,List),check_returnval(RetType,Y).

eval_args20(RetType,_Dpth,_Slf,['repl!'],Y):- !, repl,check_returnval(RetType,Y).
eval_args20(RetType,Depth,Self,['!',Cond],Res):- !, call(eval_args(RetType,Depth,Self,Cond,Res)).
eval_args20(RetType,Depth,Self,['rtrace',Cond],Res):- !, rtrace(eval_args(RetType,Depth,Self,Cond,Res)).
eval_args20(RetType,Depth,Self,['trace',Cond],Res):- !, with_debug(eval,eval_args(RetType,Depth,Self,Cond,Res)).
eval_args20(RetType,Depth,Self,['time',Cond],Res):- !, time_eval(eval(Cond),eval_args(RetType,Depth,Self,Cond,Res)).
eval_args20(RetType,Depth,Self,['print',Cond],Res):- !, eval_args(RetType,Depth,Self,Cond,Res),format('~N'),print(Res),format('~N').
% !(println! $1)
eval_args20(RetType,Depth,Self,['println!'|Cond],Res):- !, maplist(eval_args(RetType,Depth,Self),Cond,[Res|Out]),
   format('~N'),maplist(write_src,[Res|Out]),format('~N').
eval_args20(RetType,Depth,Self,['trace!',A|Cond],Res):- !, maplist(eval_args(RetType,Depth,Self),[A|Cond],[AA|Result]),
   last(Result,Res), format('~N'),maplist(write_src,[AA]),format('~N').

%eval_args30(RetType,Depth,Self,['trace!',A,B],C):- !,eval_args(RetType,Depth,Self,B,C),format('~N'),wdmsg(['trace!',A,B]=C),format('~N').
%eval_args30(RetType,_Dpth,_Slf,['trace!',A],A):- !, format('~N'),wdmsg(A),format('~N').


eval_args20(RetType,Depth,Self,['assertTrue', X],TF):- !, eval_args(RetType,Depth,Self,['assertEqual',X,'True'],TF).
eval_args20(RetType,Depth,Self,['assertFalse',X],TF):- !, eval_args(RetType,Depth,Self,['assertEqual',X,'False'],TF).

eval_args20(RetType,Depth,Self,['assertEqual',X0,Y0],RetVal):- !,
  subst_vars(X0,X),subst_vars(Y0,Y),
   loonit_assert_source_tf(
        ['assertEqual',X0,Y0],
        (bagof_eval(Depth,Self,X,XX),
         bagof_eval(Depth,Self,Y,YY)),
         equal_enough_for_test(XX,YY), TF),
  (TF=='True'->return_empty(RetVal);RetVal=[got,XX,expected,YY]),
  check_returnval(RetType,Y).

eval_args20(RetType,Depth,Self,['assertNotEqual',X0,Y0],RetVal):- !,
  subst_vars(X0,X),subst_vars(Y0,Y),
   loonit_assert_source_tf(
        ['assertNotEqual',X0,Y0],
        (bagof_eval(Depth,Self,X,XX), bagof_eval(Depth,Self,Y,YY)),
         \+ equal_enough(XX,YY), TF),
  (TF=='True'->return_empty(RetVal);RetVal=[got,XX,expected,not,YY]),
  check_returnval(RetType,Y).

eval_args20(RetType,Depth,Self,['assertEqualToResult',X0,Y0],RetVal):- !,
  subst_vars(X0,X),subst_vars(Y0,Y),
   loonit_assert_source_tf(
        ['assertEqualToResult',X0,Y0],
        (bagof_eval(Depth,Self,X,XX), =(Y,YY)),
         equal_enough_for_test(XX,YY), TF),
  (TF=='True'->return_empty(RetVal);RetVal=[got,XX,expected,YY]),!,
  check_returnval(RetType,Y).


loonit_assert_source_tf(Src,Goal,Check,TF):-
   copy_term(Goal,OrigGoal),
   color_g_mesg('#114411',(writeq(Src))),
   loonit_asserts(Src, time_eval('\n; EVAL TEST\n;',Goal), Check),
   as_tf(Check,TF),!,
  ignore((
          once((TF=='True', is_debugging(pass));(TF=='False', is_debugging(fail))),
     with_debug((eval),time_eval('Trace',OrigGoal)))).

sort_result(Res,Res):- \+ compound(Res),!.
sort_result([And|Res1],Res):- is_and(And),!,sort_result(Res1,Res).
sort_result([T,And|Res1],Res):- is_and(And),!,sort_result([T|Res1],Res).
sort_result([H|T],[HH|TT]):- !, sort_result(H,HH),sort_result(T,TT).
sort_result(Res,Res).

unify_enough(L,L).
%unify_enough(L,C):- is_list(L),into_list_args(C,CC),!,unify_lists(CC,L).
%unify_enough(C,L):- is_list(L),into_list_args(C,CC),!,unify_lists(CC,L).
%unify_enough(C,L):- \+ compound(C),!,L=C.
%unify_enough(L,C):- \+ compound(C),!,L=C.
unify_enough(L,C):- into_list_args(L,LL),into_list_args(C,CC),unify_lists(CC,LL).

%unify_lists(C,L):- \+ compound(C),!,L=C.
%unify_lists(L,C):- \+ compound(C),!,L=C.
unify_lists(L,L):-!.
unify_lists([C|CC],[L|LL]):- unify_enough(L,C),!,unify_lists(CC,LL).

equal_enough(R,V):- is_list(R),is_list(V),sort(R,RR),sort(V,VV),!,equal_enouf(RR,VV),!.
equal_enough(R,V):- copy_term(R,RR),copy_term(V,VV),equal_enouf(R,V),!,R=@=RR,V=@=VV.

equal_enough_for_test(X,Y):- X ==[], Y==[[]],!.
equal_enough_for_test(X,Y):- must_det_ll((subst_vars(X,XX),subst_vars(Y,YY))),!,equal_enough_for_test2(XX,YY),!.
equal_enough_for_test2(X,Y):- equal_enough(X,Y).

equal_enouf(R,V):- R=@=V, !.
equal_enouf(_,V):- V=@='...',!.
equal_enouf(L,C):- is_list(L),into_list_args(C,CC),!,equal_enouf_l(CC,L).
equal_enouf(C,L):- is_list(L),into_list_args(C,CC),!,equal_enouf_l(CC,L).
%equal_enouf(R,V):- (var(R),var(V)),!, R=V.
equal_enouf(R,V):- (var(R);var(V)),!, R==V.
equal_enouf(R,V):- number(R),number(V),!, RV is abs(R-V), RV < 0.03 .
equal_enouf(R,V):- atom(R),!,atom(V), has_unicode(R),has_unicode(V).
equal_enouf(R,V):- (\+ compound(R) ; \+ compound(V)),!, R==V.
equal_enouf(L,C):- into_list_args(L,LL),into_list_args(C,CC),!,equal_enouf_l(CC,LL).

equal_enouf_l([S1,V1|_],[S2,V2|_]):- S1 == 'State',S2 == 'State',!, equal_enouf(V1,V2).
equal_enouf_l(C,L):- \+ compound(C),!,L=@=C.
equal_enouf_l(L,C):- \+ compound(C),!,L=@=C.
equal_enouf_l([C|CC],[L|LL]):- !, equal_enouf(L,C),!,equal_enouf_l(CC,LL).


has_unicode(A):- atom_codes(A,Cs),member(N,Cs),N>127,!.
set_last_error(_).


%[superpose,[1,2,3]]
eval_args20(RetType,Depth,Self,[Superpose,List],Res):-
  'superpose' == Superpose, !,
  List=[H|_],
  ((fail,is_user_defined_head_f(Self,H)) -> (eval_args(RetType,Depth,Self,List,RList),member(Res,RList)) ;
      (member(E,List),eval_args(RetType,Depth,Self,E,Res) , \+ return_empty([],Res))).


eval_args20(RetType,Depth,Self,[Op,Arg1|VI],Res):- !,
  ((is_list(Arg1),ground(Arg1),
     get_operator_typedef(Self,Op,[Type1|_Rest],RetType), \+ is_non_eval_kind(Type1),
        set_type(Depth,Res,Self,RetType),!,
        eval_args(Type1,Depth,Self,Arg1,Res1), Arg1\=@=Res1,  not_arg_violation(Depth,Self,Res1,Type1))
   *-> (if_trace(eval,write_src_nl(cont([Op,Res1|VI]))),eval_args30(RetType,Depth,Self,[Op,Res1|VI],Res))
   ;eval_args30(RetType,Depth,Self,[Op,Arg1|VI],Res)).

eval_args20(RetType,Depth,Self,X,Y):- eval_args30(RetType,Depth,Self,X,Y).

eval_args30(_RetType,Depth,Self,[V|VI],[V|VO]):- var(V),!,maplist(eval_args(Depth,Self),VI,VO).
eval_args30(RetType,Depth,Self,['add-atom',Other,PredDecl],TF):- !,   (( into_space(Depth,Self,Other,Space), as_tf(do_metta(python,load,Space,PredDecl),TF))),check_returnval(RetType,TF).
eval_args30(RetType,Depth,Self,['remove-atom',Other,PredDecl],TF):- !,   (( into_space(Depth,Self,Other,Space), as_tf(do_metta(python,unload,Space,PredDecl),TF))),check_returnval(RetType,TF).
eval_args30(RetType,Depth,Self,['atom-count',Other],Count):- !,   (( into_space(Depth,Self,Other,Space), findall(_,metta_defn(Other,_,_),L1),length(L1,C1),
    findall(_,metta_atom(Space,_),L2),length(L2,C2),Count is C1+C2)),check_returnval(RetType,Count).
eval_args30(RetType,Depth,Self,['atom-replace',Other,Rem,Add],TF):- !,
 ((into_space(Depth,Self,Other,Space), copy_term(Rem,RCopy),
   as_tf((metta_atom_iter_ref(Space,RCopy,Ref), RCopy=@=Rem,erase(Ref), do_metta(Other,load,Add)),TF))),
 check_returnval(RetType,TF).
%eval_args30(RetType,Depth,Self,['TupleConcat',A,A5],OO):- !, append
%eval_args30(RetType,Depth,Self,['colapse'|List], Flat):- !, maplist(eval_args(RetType,Depth,Self),List,Res),flatten(Res,Flat).
eval_args30(RetType,Depth,Self,['get-atoms',Other],SpaceC):- !,
  into_space(Depth,Self,Other,Space),
  space_to_Space(Depth,Space,SpaceC),
  check_returnval(RetType,SpaceC).

space_to_Space(_Dpth,Space,SpaceC):- compound(Space),functor(Space,_,1),arg(1,Space,L),is_list(L),!,SpaceC=Space.
space_to_Space(Depth,Space,SpaceC):- findall(Atom, metta_atom_iter(Depth,Space,Atom),Atoms),
   SpaceC = 'hyperon::space::DynSpace'(Atoms).

% Match-ELSE
eval_args30(RetType,Depth,Self,['match',Other,Goal,Template,Else],Template):-
  ((eval_args30(RetType,Depth,Self,['match',Other,Goal,Template],Template),
       \+ return_empty([],Template))*->true;Template=Else).
% Match-TEMPLATE
eval_args30(RetType,Depth,Self,['match',Other,Goal,Template],Res):- !,
  into_space(Depth,Self,Other,Space),
  metta_atom_iter(Depth,Space,Goal),
  eval_args99(RetType,Depth,Self,Template,Res).

metta_atom_iter(Depth,Other,[Equal,[F|H],B]):- '=' == Equal,!,  % trace,
  (metta_defn(Other,[F|HH],B)*-> true; (metta_atom(Other,[F|HH]),is_True(B))),
  eval_until_unify(Depth,Other,H,HH).


metta_atom_iter(Depth,_,_):- Depth<3,!,fail.
metta_atom_iter(_Dpth,Other,H):- metta_atom(Other,H).
%metta_atom_iter(Depth,Other,H):- D2 is Depth -1, metta_defn(Other,H,B),metta_atom_iter(D2,Other,B).
metta_atom_iter(_Dpth,_Slf,[And|Y]):- is_and(And),Y==[].
metta_atom_iter(Depth,Self,[And,X|Y]):- is_and(And),!,D2 is Depth -1, metta_atom_iter(D2,Self,X),metta_atom_iter(D2,Self,[And|Y]).
metta_atom_iter(_Dpth,_Slf,[]):-!.

eval_args30(RetType,Depth,Self,['ematch',Other,Goal,Template],Res):- !,
  eval_args(RetType,Depth,Self,Other,Space),
  metta_each_atom_iter(Depth,Space,Goal),
  eval_args99(RetType,Depth,Self,Template,Res).

metta_each_atom(Other,H):- =(H,Other).
metta_each_defn(Other,H,B):- =(H,Other),B=H.
metta_each_defn(Other,H,B):- =(H=B,Other).

metta_each_atom_iter(_Dpth,Other,[Equal,H,B]):- '=' == Equal,!,
  (metta_each_defn(Other,H,B)*->true;(metta_each_atom(Other,H),B='True')).

metta_each_atom_iter(Depth,_,_):- Depth<3,!,fail.
metta_each_atom_iter(_Dpth,_Slf,[]):-!.
metta_each_atom_iter(_Dpth,Other,H):- metta_each_atom(Other,H).
metta_each_atom_iter(Depth,Other,H):- D2 is Depth -1, metta_each_defn(Other,H,B),metta_each_atom_iter(D2,Other,B).
metta_each_atom_iter(_Dpth,_Slf,[And]):- is_and(And),!.
metta_each_atom_iter(Depth,Self,[And,X|Y]):- is_and(And),!,D2 is Depth -1, metta_each_atom_iter(D2,Self,X),metta_each_atom_iter(D2,Self,[And|Y]).

eval_args30(RetType,Depth,Self,['lmatch',Other,Goal,Template],Res):- !,
  eval_args(RetType,Depth,Self,Other,Space),
  metta_list_atom_iter(Depth,Space,Goal),
  eval_args99(RetType,Depth,Self,Template,Res).

metta_list_atom(Other,H):- member(H,Other).
metta_list_defn(Other,H,B):- member(H,Other),B=H.
metta_list_defn(Other,H,B):- member(H=B,Other).

metta_list_atom_iter(_Dpth,Other,[Equal,H,B]):- '=' == Equal,!,
  (metta_list_defn(Other,H,B)*->true;(metta_list_atom(Other,H),B='True')).

metta_list_atom_iter(Depth,_,_):- Depth<3,!,fail.
metta_list_atom_iter(_Dpth,_Slf,[]):-!.
metta_list_atom_iter(_Dpth,Other,H):- metta_list_atom(Other,H).
metta_list_atom_iter(Depth,Other,H):- D2 is Depth -1, metta_list_defn(Other,H,B),metta_list_atom_iter(D2,Other,B).
metta_list_atom_iter(_Dpth,_Slf,[And]):- is_and(And),!.
metta_list_atom_iter(Depth,Self,[And,X|Y]):- is_and(And),!,D2 is Depth -1, metta_list_atom_iter(D2,Self,X),metta_list_atom_iter(D2,Self,[And|Y]).






eval_until_unify(Depth,Self,X,Y):- eval_until_eq(_RetType,Depth,Self,X,Y).

eval_until_eq(RetType,_Dpth,_Slf,X,Y):-  X=Y,check_returnval(RetType,Y).
%eval_until_eq(RetType,Depth,Self,X,Y):- var(Y),!,eval_args_in_steps_or_same(RetType,Depth,Self,X,XX),Y=XX.
%eval_until_eq(RetType,Depth,Self,Y,X):- var(Y),!,eval_args_in_steps_or_same(RetType,Depth,Self,X,XX),Y=XX.
eval_until_eq(RetType,Depth,Self,X,Y):- \+is_list(Y),!,eval_args_in_steps_some_change(RetType,Depth,Self,X,XX),Y=XX.
eval_until_eq(RetType,Depth,Self,Y,X):- \+is_list(Y),!,eval_args_in_steps_some_change(RetType,Depth,Self,X,XX),Y=XX.
eval_until_eq(RetType,Depth,Self,X,Y):- eval_args_in_steps_some_change(RetType,Depth,Self,X,XX),eval_until_eq(RetType,Depth,Self,Y,XX).
eval_until_eq(_RetType,_Dpth,_Slf,X,Y):- length(X,Len), \+ length(Y,Len),!,fail.
eval_until_eq(RetType,Depth,Self,X,Y):-  nth1(N,X,EX,RX), nth1(N,Y,EY,RY),
  EX=EY,!, maplist(eval_until_eq(RetType,Depth,Self),RX,RY).
eval_until_eq(RetType,Depth,Self,X,Y):-  nth1(N,X,EX,RX), nth1(N,Y,EY,RY),
  ((var(EX);var(EY)),eval_until_eq(RetType,Depth,Self,EX,EY)),
  maplist(eval_until_eq(RetType,Depth,Self),RX,RY).
eval_until_eq(RetType,Depth,Self,X,Y):-  nth1(N,X,EX,RX), nth1(N,Y,EY,RY),
  h((is_list(EX);is_list(EY)),eval_until_eq(RetType,Depth,Self,EX,EY)),
  maplist(eval_until_eq(RetType,Depth,Self),RX,RY).

 eval_args_1change(RetType,Depth,Self,EX,EXX):-
    eval_args20(RetType,Depth,Self,EX,EXX),  EX \=@= EXX.

eval_args_complete_change(RetType,Depth,Self,EX,EXX):-
   eval_args(RetType,Depth,Self,EX,EXX),  EX \=@= EXX.

eval_args_in_steps_some_change(_RetType,_Dpth,_Slf,EX,_):- \+ is_list(EX),!,fail.
eval_args_in_steps_some_change(RetType,Depth,Self,EX,EXX):- eval_args_1change(RetType,Depth,Self,EX,EXX).
eval_args_in_steps_some_change(RetType,Depth,Self,X,Y):- append(L,[EX|R],X),is_list(EX),
    eval_args_in_steps_some_change(RetType,Depth,Self,EX,EXX), EX\=@=EXX,
    append(L,[EXX|R],XX),eval_args_in_steps_or_same(RetType,Depth,Self,XX,Y).

eval_args_in_steps_or_same(RetType,Depth,Self,X,Y):-eval_args_in_steps_some_change(RetType,Depth,Self,X,Y).
eval_args_in_steps_or_same(RetType,_Dpth,_Slf,X,Y):- X=Y,check_returnval(RetType,Y).

  % (fail,return_empty([],Template))).

into_pl_list(Var,Var):- var(Var),!.
into_pl_list(Nil,[]):- Nil == 'Nil',!.
into_pl_list([Cons,H,T],[HH|TT]):- Cons == 'Cons', !, into_pl_list(H,HH),into_pl_list(T,TT),!.
into_pl_list(X,X).

into_metta_cons(Var,Var):- var(Var),!.
into_metta_cons([],'Nil'):-!.
into_metta_cons([Cons, A, B ],['Cons', AA, BB]):- 'Cons'==Cons, no_cons_reduce, !,
  into_metta_cons(A,AA), into_metta_cons(B,BB).
into_metta_cons([H|T],['Cons',HH,TT]):- into_metta_cons(H,HH),into_metta_cons(T,TT),!.
into_metta_cons(X,X).

into_listoid(AtomC,Atom):- AtomC = [Cons,H,T],Cons=='Cons',!, Atom=[H,[T]].
into_listoid(AtomC,Atom):- is_list(AtomC),!,Atom=AtomC.
into_listoid(AtomC,Atom):- typed_list(AtomC,_,Atom),!.

eval_args30(RetType,_Dpth,_Slf,['car-atom',AtomC],CAR):- !,
   into_listoid(AtomC,Atom),
    check_returnval('ListExpression',Atom),
    Atom=[CAR|_],!,check_returnval(RetType,CAR).
eval_args30(RetType,_Dpth,_Slf,['cdr-atom',AtomC],CDR):- !,
    into_listoid(AtomC,Atom),
    check_returnval('ListExpression',Atom),
    Atom=[_|CDR],!,check_returnval(RetType,CDR).

eval_args30(RetType,Depth,Self,['Cons', A, B ],['Cons', AA, BB]):- %no_cons_reduce, !,
  eval_args99(Depth,Self,A,AA), eval_args99(RetType,Depth,Self,B,BB).
%eval_args30(RetType,Depth,Self,['Cons', A, B ],[AA|BB]):- \+ no_cons_reduce, !,
% eval_args90(RetType,Depth,Self,A,AA), eval_args90(RetType,Depth,Self,B,BB).

eval_args30(RetType,Depth,Self,['==',X,Y],TF):- !, as_tf((eval_until_eq(RetType,Depth,Self,X,Y)),TF),!.
% user defined function

%[collapse,[1,2,3]]
eval_args30(RetType,Depth,Self,['collapse',List],Res):-!,  bagof_eval(Depth,Self,List,Res),check_returnval(RetType,Res).

eval_args30(_RetType,Dpth,_Slf,_X,Y):- Dpth<0,!,[] = Y.

max_counting(F,Max):- flag(F,X,X+1),  X<Max ->  true; (flag(F,_,10),!,fail).



eval_args30(RetType,Depth,Self,['if',Cond,Then,Else],Res):- !,
   eval_args('Bool',Depth,Self,Cond,TF),
   (is_True(TF) -> eval_args(RetType,Depth,Self,Then,Res);eval_args(RetType,Depth,Self,Else,Res)).

eval_args30(RetType,Depth,Self,['If',Cond,Then,Else],Res):- !,
    eval_args('Bool',Depth,Self,Cond,TF),
    (is_True(TF) -> eval_args(RetType,Depth,Self,Then,Res);eval_args(RetType,Depth,Self,Else,Res)).

eval_args30(RetType,Depth,Self,['if',Cond,Then],Res):- !,
   eval_args('Bool',RetType,Depth,Self,Cond,TF),
   (is_True(TF) -> eval_args(RetType,Depth,Self,Then,Res) ; (Res = [],!)).


check_returnval(_RetType,_PredDecl).

eval_args30(RetType,Depth,Self,['change-state!',StateExpr, UpdatedValue], Ret):- !,
  eval_args('StateMonad',Depth,Self,StateExpr,StateMonad),
  eval_args(RetType,Depth,Self,UpdatedValue,Value),
  'change-state!'(Depth,Self,StateMonad, Value, Ret),
  check_returnval(RetType,Ret).


eval_args30(RetType,Depth,Self,['get-state',StateExpr],Value):- !,
  eval_args('StateMonad',Depth,Self,StateExpr,StateMonad),
  'get-state'(StateMonad,Value),
  check_returnval(RetType,Value).

eval_args30(RetType,Depth,Self,['new-state',UpdatedValue],StateMonad):- !,
  eval_args(Depth,Self,UpdatedValue,Value),  'new-state'(Depth,Self,Value,StateMonad),
  check_returnval(RetType,StateMonad).



% eval_args30(RetType,Depth,Self,['get-state',Expr],Value):- !, eval_args(RetType,Depth,Self,Expr,State), arg(1,State,Value).



check_type:- option_else(typecheck,TF,'False'), TF=='True'.

:- dynamic is_registered_state/1.
:- flush_output.
:- setenv('RUST_BACKTRACE',full).

% Function to check if an value is registered as a state name
:- dynamic(is_registered_state/1).
is_nb_state(G):- is_valid_nb_state(G) -> true ;
                 is_registered_state(G),nb_current(G,S),is_valid_nb_state(S).

:- multifile(state_type_method/3).
:- dynamic(state_type_method/3).
state_type_method(is_nb_state,new_state,init_state).
state_type_method(is_nb_state,clear_state,clear_nb_values).
state_type_method(is_nb_state,add_value,add_nb_value).
state_type_method(is_nb_state,remove_value,'change-state!').
state_type_method(is_nb_state,replace_value,replace_nb_value).
state_type_method(is_nb_state,value_count,value_nb_count).
state_type_method(is_nb_state,'get-state','get-state').
state_type_method(is_nb_state,value_iter,value_nb_iter).
%state_type_method(is_nb_state,query,state_nb_query).

% Clear all values from a state
clear_nb_values(StateNameOrInstance) :-
    fetch_or_create_state(StateNameOrInstance, State),
    nb_setarg(1, State, []).



% Function to confirm if a term represents a state
is_valid_nb_state(State):- compound(State),functor(State,'State',_).

% Find the original name of a given state
state_original_name(State, Name) :-
    is_registered_state(Name),
    nb_current(Name, State).

% Register and initialize a new state
init_state(Name) :-
    State = 'State'(_,_),
    asserta(is_registered_state(Name)),
    nb_setval(Name, State).

% Change a value in a state
'change-state!'(Depth,Self,StateNameOrInstance, UpdatedValue, Out) :-
    fetch_or_create_state(StateNameOrInstance, State),
    arg(2, State, Type),
    ( (check_type,\+ get_type(Depth,Self,UpdatedValue,Type))
     -> (Out = ['Error', UpdatedValue, 'BadType'])
     ; (nb_setarg(1, State, UpdatedValue), Out = State) ).

% Fetch all values from a state
'get-state'(StateNameOrInstance, Values) :-
    fetch_or_create_state(StateNameOrInstance, State),
    arg(1, State, Values).

'new-state'(Depth,Self,Init,'State'(Init, Type)):- check_type->get_type(Depth,Self,Init,Type);true.

'new-state'(Init,'State'(Init, Type)):- check_type->get_type(100,'&self',Init,Type);true.

fetch_or_create_state(Name):- fetch_or_create_state(Name,_).
% Fetch an existing state or create a new one

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

eval_args30(RetType,Depth,Self,['get-type',Val],Type):- !,
  get_type(Depth,Self,Val,Type),check_returnval(RetType,Type).



eval_args30(RetType,Depth,Self,['import!',Other,File],RetVal):-
     (( into_space(Depth,Self,Other,Space),!, include_metta(Space,File),!,return_empty(Space,RetVal))),
     check_returnval(RetType,RetVal). %RetVal=[].
eval_args30(RetType,Depth,Self,['bind!',Other,Expr],RetVal):-
   must_det_ll((into_name(Self,Other,Name),!,eval_args(RetType,Depth,Self,Expr,Value),nb_setval(Name,Value),  return_empty(Value,RetVal))),
   check_returnval(RetType,RetVal).
eval_args30(RetType,Depth,Self,['pragma!',Other,Expr],RetVal):-
   must_det_ll((into_name(Self,Other,Name),!,nd_ignore((eval_args(RetType,Depth,Self,Expr,Value),set_option_value(Name,Value))),  return_empty(Value,RetVal),check_returnval(RetType,RetVal))).
eval_args30(RetType,_Dpth,Self,['transfer!',File],RetVal):- !, must_det_ll((include_metta(Self,File),  return_empty(Self,RetVal),check_returnval(RetType,RetVal))).

nd_ignore(Goal):- call(Goal)*->true;true.

eval_args30(RetType,_Dpth,_Slf,['::'|Expr],Expr):- !,check_returnval(RetType,Expr).
eval_args30(RetType,Depth,Self,['nop',Expr],Empty):- !,  eval_args(Depth,Self,Expr,_), return_empty([],Empty),check_returnval(RetType,Empty).
eval_args30(RetType,_Dpth,_Slf,['nop'],Empty):- !, return_empty([],Empty),check_returnval(RetType,Empty).
eval_args30(RetType,_Dpth,_Slf,['new-space'],Space):- !, 'new-space'(Space),check_returnval(RetType,Space).

is_True(T):- T=='True'. % \=='False',T\=='F',T\==[].

is_and(S):- \+ atom(S),!,fail.
is_and(',').
is_and(S,_):- \+ atom(S),!,fail.
is_and('and','True').
is_and('and2','True').
is_and('#COMMA','True'). is_and(',','True').  % is_and('And').

eval_args30(RetType,_Dpth,_Slf,[And],True):- is_and(And,True),!,check_returnval(RetType,True).
eval_args30(RetType,Depth,Self,[And,X,Y],TF):-  is_and(And,True),!, as_tf((
   eval_args(RetType,Depth,Self,X,True),eval_args(RetType,Depth,Self,Y,True)),TF).
eval_args30(RetType,Depth,Self,[And,X],True):- is_and(And,True),!,
 eval_args(RetType,Depth,Self,X,True).
eval_args30(RetType,Depth,Self,[And,X|Y],TF):- is_and(And,_True),!,
  eval_args(RetType,Depth,Self,X,TF1), \+ \+ is_True(TF1),
  eval_args(RetType,Depth,Self,[And|Y],TF).
%eval_args40(RetType,Depth,Self,[H|T],_):- \+ is_list(T),!,fail.
eval_args30(RetType,Depth,Self,['or',X,Y],TF):- !, as_tf((eval_args(RetType,Depth,Self,X,'True');eval_args(RetType,Depth,Self,Y,'True')),TF).







%eval_args30(RetType,_Dpth,_Slf,[_,Nothing],Nothing):- 'Nothing'==Nothing,!.


/*


%eval_args_failed(_Dpth,_Slf,T,TT):- var(T),!,TT=T.
%eval_args_failed(_Dpth,_Slf,[F|LESS],Res):- once(eval_selfless([F|LESS],Res)),mnotrace([F|LESS]\==Res),!.
%eval_args_failed(Depth,Self,[V|Nil],[O]):- Nil==[], once(eval_args(RetType,Depth,Self,V,O)),V\=@=O,!.

eval_args_failed(Depth,Self,T,TT):- eval_args(RetType,Depth,Self,T,TT).

   %eval_args(RetType,Depth,Self,X,Y):- eval_args20(RetType,Depth,Self,X,Y)*->true;Y=[].
*/
%eval_args20(RetType,Depth,_,_,_):- Depth<1,!,fail.
%eval_args20(RetType,Depth,_,X,Y):- Depth<3, !, ground(X), (Y=X).
%eval_args20(RetType,_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X.

% Kills zero arity functions
% eval_args20(RetType,Depth,Self,[X|Nil],[Y]):- Nil ==[],!,eval_args(RetType,Depth,Self,X,Y).


last_element(T,E):- \+ compound(T),!,E=T.
last_element(T,E):- is_list(T),last(T,L),last_element(L,E),!.
last_element(T,E):- compound_name_arguments(T,_,List),last_element(List,E),!.




catch_warn(G):- quietly(catch(G,E,(wdmsg(catch_warn(G)-->E),fail))).
catch_nowarn(G):- quietly(catch(G,error(_,_),fail)).


as_tf(G,TF):- catch_nowarn((call(G)*->TF='True';TF='False')).
eval_selfless(['==',X,Y],TF):- as_tf(X=:=Y,TF),!.
eval_selfless(['==',X,Y],TF):- as_tf(X=@=Y,TF),!.
%eval_selfless(['=',X,Y],TF):-!,as_tf(X #= Y,TF).
eval_selfless(['>',X,Y],TF):-!,as_tf(X>Y,TF).
eval_selfless(['<',X,Y],TF):-!,as_tf(X<Y,TF).
eval_selfless(['=>',X,Y],TF):-!,as_tf(X>=Y,TF).
eval_selfless(['<=',X,Y],TF):-!,as_tf(X=<Y,TF).
eval_selfless(['%',X,Y],TF):-!,eval_selfless(['mod',X,Y],TF).

eval_selfless(LIS,Y):-  mnotrace((
   LIS=[F,_,_], atom(F), catch_warn(current_op(_,yfx,F)),
   catch((LIS\=[_], s2p(LIS,IS), Y is IS),_,fail))),!.

/*
eval_args30(RetType,Depth,Self,[Op,Arg1|VI],Res):- !,
  ((is_list(Arg1),ground(Arg1),
     get_operator_typedef(Self,Op,[Type1|_Rest],RetType), \+ is_non_eval_kind(Type1),
        set_type(Depth,Res,Self,RetType),!,
        eval_args11(RetType,Depth,Self,Arg1,Res1), Arg1\=@=Res1,  not_arg_violation(Depth,Self,Res1,Type1))
   *-> eval_args30(RetType,Depth,Self,[Op,Res1|VI],Res)
   ;eval_args40(RetType,Depth,Self,[Op,Arg1|VI],Res)).
*/



get_operator_typedef_nr(Self,Op,Types,RetType):-
    no_repeats_var(OTD),
    get_operator_typedef(Self,Op,Types,RetType),
    term_variables(Types,Vars),
    maplist(on_bind_test(Types = OTD),Vars).

on_bind_test(Goal,Var):- freeze(Var,Goal).

guess_operator_typedef(Self,Op,Args,_Res,Types,RetType):-
 (get_operator_typedef_nr(Self,Op,Types,RetType)*->true;
  (is_list(Args)-> (length(Args,N),length(Types,N)) ;
   true)).


eval_args30(RetType,Depth,Self,[Op|Args],Res):- !, %is_list(Args),!,
 (((guess_operator_typedef(Self,Op,Args,Res,Types,RetType),
   set_type(Depth,Res,Self,RetType),
   eval_args30c(RetType,Depth,Self,Op,1,Args,Types,Res)))
     *->true
     ; eval_args40(RetType,Depth,Self,[Op|Args],Res)).
%eval_args40(RetType,Depth,Self,Cond,TF):- eval_args40(RetType,Depth,Self,Cond,TF).
eval_args30(RetType,Depth,Self,Cond,TF):-
  eval_args40(RetType,Depth,Self,Cond,TF).


eval_args30c(RetType,Depth,Self,Op,N,Args,Types,Res):-
  length(ArgsL,N), append(ArgsL,[ArgE|ArgsR],Args),
      (((is_list(ArgE),
          length(TypesL,N), append(TypesL,[TypeE|TypesR],Types), \+ is_non_eval_kind(TypeE),
          maplist(not_arg_violation(Depth,Self),ArgsL,TypesL),
          maplist(not_arg_violation(Depth,Self),ArgsR,TypesR),
          eval_args11(RetType,Depth,Self,ArgE,ResE), ArgE\=@=ResE))-> true ; ResE=ArgE),
        not_arg_violation(Depth,Self,ResE,TypeE),
        append(ArgsL,[ResE|ArgsR],EArgs),!,
          plus(1,N,NPlus1),eval_args30c(RetType,Depth,Self,Op,NPlus1,EArgs,Types,Res).
eval_args30c(RetType,Depth,Self,Op,_N,Args,_Types,Res):- eval_args40(RetType,Depth,Self,[Op|Args],Res).



/*

eval_args30d(RetType,Depth,Self,Op,N,Args,Res):-
  length(ArgsL,N), append(ArgsL,[ArgE|ArgsR],Args),
         (((is_list(ArgE), eval_args11(RetType,Depth,Self,ArgE,ResE), ArgE\=@=ResE))-> true ; ResE=ArgE),
        append(ArgsL,[ResE|ArgsR],EArgs),!,
          plus(1,N,NPlus1),eval_args32(RetType,Depth,Self,Op,NPlus1,EArgs,Res).
eval_args30d(RetType,Depth,Self,Op,_,Args,Res):- eval_args40(RetType,Depth,Self,[Op|Args],Res).
*/

/*
into_values(List,Many):- List==[],!,Many=[].
into_values([X|List],Many):- List==[],is_list(X),!,Many=X.
into_values(Many,Many).
eval_args40(RetType,_Dpth,_Slf,Name,Value):- atom(Name), nb_current(Name,Value),!.
*/

% use function we cheated with

eval_args40(RetType,Depth,Self,['length',L],Res):- !, eval_args(Depth,Self,L,LL),
   (is_list(LL)->length(LL,Res);Res=1),
   check_returnval(RetType,Res).

eval_args40(RetType,Depth,Self,['If',Cond,Then],Res):- !,
   eval_args('Bool',Depth,Self,Cond,TF),
  (is_True(TF) -> eval_args(RetType,Depth,Self,Then,Res) ; (fail, Res = [])).

eval_args40(RetType,_Dpth,_Slf,['arity',F,A],TF):- !,as_tf(current_predicate(F/A),TF),check_returnval(RetType,TF).
eval_args40(RetType,Depth,Self,['do',Expr],Empty):- !,  ignore(eval_args(Depth,Self,Expr,_)), return_empty([],Empty),check_returnval(RetType,Empty).
eval_args40(RetType,Depth,Self,['CountElement',L],Res):- !, eval_args(RetType,Depth,Self,L,LL), !, (is_list(LL)->length(LL,Res);Res=1),check_returnval(RetType,Res).
eval_args40(RetType,_Dpth,_Slf,['make_list',List],MettaList):- !, into_metta_cons(List,MettaList),check_returnval(RetType,MettaList).

% @TODO: This should not be here
eval_args40(RetType,_Dpth,_Slf,['ift',Cond,Then],Then):- Cond == 'True', !,check_returnval(RetType,Then).
/*
get_sa_p1(P3,E,Cmpd,SA):-  compound(Cmpd), get_sa_p2(P3,E,Cmpd,SA).
get_sa_p2(P3,E,Cmpd,call(P3,N1,Cmpd)):- arg(N1,Cmpd,E).
get_sa_p2(P3,E,Cmpd,SA):- arg(_,Cmpd,Arg),get_sa_p1(P3,E,Arg,SA).

eval_args_disabledfz(RetType,Depth,Self, Term, Res):- fail,
  mnotrace(( get_sa_p1(setarg,ST,Term,P1), % ST\==Term,
   compound(ST), ST = [F,List],F=='superpose',nonvar(List), %maplist(atomic,List),
   call(P1,Var))), !,
   %max_counting(F,30),
   member(Var,List),
   eval_args(RetType,Depth,Self, Term, Res).
*/
eval_args_disabledzf(RetType,Depth,Self, Term, Res):- fail,
   mnotrace(( get_sa_p1(setarg,ST,Term,P1),
   compound(ST), ST = [F,List],F=='collapse',nonvar(List), %maplist(atomic,List),
   call(P1,Var))), !, setof_eval(Depth,Self,List,Var),
   eval_args(RetType,Depth,Self, Term, Res).

eval_args_disabledaaaa(RetType,Depth,Self,[Op|Args],Res):- append(ArgsL,[ArgE|ArgsR],Args),is_list(ArgE),!,
 ((get_operator_typedef(Self,Op,Types,RetType),
       length(ArgsL,N), length(TypesL,N),
       append(TypesL,[TypeE|TypesR],Types),
        \+ is_non_eval_kind(TypeE),
       maplist(not_arg_violation(Depth,Self),ArgsL,TypesL),
       maplist(not_arg_violation(Depth,Self),ArgsR,TypesR),
       eval_args11(RetType,Depth,Self,ArgE,ResE), ArgE\=@=ResE,
       not_arg_violation(Depth,Self,ResE,TypeE),
       set_type(Depth,Res,Self,RetType),
       append(ArgsL,[ResE|ArgsR],EArgs))
     *-> eval_args(RetType,Depth,Self,[Op|EArgs],Res);
   eval_args40(RetType,Depth,Self,[Op|Args],Res)).


% Macro Functions
eval_args_disableda1a(RetType,Depth,Self,[F|PredDecl],Res):-
   (Depth>1,
   quietly(sub_sterm1(SSub,PredDecl)),
   mnotrace((ground(SSub),SSub=[_|Sub], is_list(Sub),maplist(atomic,SSub))),
   eval_args(RetType,Depth,Self,SSub,Repl),
   mnotrace((SSub\=Repl,subst(PredDecl,SSub,Repl,Temp))))*-> eval_args(RetType,Depth,Self,[F|Temp],Res);
 eval_args40(RetType,Depth,Self,[F|PredDecl],Res).

% Macro Functions
eval_args_disabledfzr(RetType,Depth,Self,[F|PredDecl],Res):- fail,
   Depth>1,
   mnotrace((sub_sterm1(SSub,PredDecl), ground(SSub),SSub=[Op|Sub], is_list(Sub), maplist(atomic,SSub))),
    nop(is_user_defined_head_f(Self,Op)), eval_args(RetType,Depth,Self,SSub,Repl),
   mnotrace((SSub\=Repl, subst(PredDecl,SSub,Repl,Temp))),
   eval_args(RetType,Depth,Self,[F|Temp],Res).

%eval_args20(RetType,Depth,Self,[V|VI],[V|VO]):- is_metta_data_functor(V), is_list(VI),!,maplist(eval_args(RetType,Depth,Self),VI,VO).
eval_args40(RetType,Depth,Self,[V|VI],O):- is_metta_data_functor(V), !, must_eval(adjust_args(Depth,Self,V,VI,VO)),
   O =.. [V|VO],
   check_returnval(RetType,O).

% less Macro-ey Functions
eval_args40(RetType,Depth,Self,['+',N1,N2],N):- number(N1),!,
   eval_args(RetType,Depth,Self,N2,N2Res), catch(N is N1+N2Res,_E,(set_last_error(['Error',N2Res,'Number']),fail)).
eval_args40(RetType,Depth,Self,['-',N1,N2],N):- number(N1),!,
   eval_args(RetType,Depth,Self,N2,N2Res), catch(N is N1-N2Res,_E,(set_last_error(['Error',N2Res,'Number']),fail)).

eval_args40(RetType,_Dpth,_Slf,[F|LESS],Res):- once(maybe_efbug(show_success,eval_selfless([F|LESS],Res))),mnotrace(([F|LESS]\==Res)),
  check_returnval(RetType,Res).


eval_args40(RetType,Depth,Self,X,Y):-
  (efbug(show_success,eval_args60(RetType,Depth,Self,X,Y))*->true ;
    (fail,efbug(show_failure,eval_args_failed(Depth,Self,X,Y)*->true;X=Y))).


% predicate inherited by system
eval_args40(RetType,Depth,Self,[AE|More],TF):-
  length(More,Len),
  is_syspred(AE,Len,Pred),
  mnotrace( \+ is_user_defined_goal(Self,[AE|More])),!,
  adjust_args(Depth,Self,AE,More,Adjusted),!,
  catch_warn(efbug(show_call,as_tf(apply(Pred,Adjusted),TF))),
  check_returnval(RetType,TF).

eval_args40(RetType,Depth,Self,X,Y):-
  (efbug(show_success,eval_args80(RetType,Depth,Self,X,Y))*->true ;
    (efbug(show_failure,eval_args_failed(Depth,Self,X,Y)*->true;X=Y))).


% function inherited by system
eval_args80(RetType,Depth,Self,[AE|More],TF):-
  length([AE|More],Len),
  is_syspred(AE,Len,Pred),
  mnotrace( \+ is_user_defined_goal(Self,[AE|More])),!,
  adjust_args(Depth,Self,AE,More,Adjusted),!,
  append(Adjusted,[TF],Args),!,
  efbug(show_call,catch_warn(apply(Pred,Args))),
check_returnval(RetType,TF).


eval_args_failed(Depth,Self,[X|XX],[Y]):- XX == [],!,eval_args99(_RetType,Depth,Self,X,Y).
eval_args_failed(_Dpth,_Slf,T,TT):- T==[],!,TT=[].
eval_args_failed(Depth,Self,[H|T],[HH|TT]):- !,
  eval_args99(_RetType,Depth,Self,H,HH),
  eval_args_failed(Depth,Self,T,TT).

eval_args_failed(_Dpth,_Slf,T,TT):- ignore(T=TT).



/*
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
:- discontiguous eval_args6/4.
%eval_args40(RetType,Depth,Self,PredDecl,Res):- eval_args6(RetType,Depth,Self,PredDecl,Res).

%eval_args40(RetType,_Dpth,_Slf,L1,Res):- is_list(L1),maplist(self_eval,L1),!,Res=L1.
%eval_args40(RetType,_Depth,_Self,X,X).



%eval_args40(RetType,Depth,Self,['eq',X,Y],Res):- !, as_tf(eval_until_eq(RetType,Depth,Self,X,Y),Res).
eval_args60(RetType,_Dpth,_Slf,['memb',E,List],Res):- !, into_pl_list(List,PLList),as_tf(member(E,PLList), Res),check_returnval(RetType,Res).

eval_args60(RetType,Depth,Self,PredDecl,Res):-
  eval_args61(RetType,Depth,Self,PredDecl,B),
  eval_args(RetType,Depth,Self,B,Res).
/*
eval_args60(RetType,Depth,Self,[Op,Arg1|VI],Res):- is_list(Arg1),!,
 ((get_operator_typedef(Self,Op,[Type1|_Rest],RetType),
   \+ is_non_eval_kind(Type1),
       eval_args0000(RetType,Depth,Self,Arg1,Res1), Arg1\=@=Res1,  \+ arg_violation(Depth,Self,Res1,Type1),  set_type(Depth,Self,Res,RetType) )
     *-> eval_args60(RetType,Depth,Self,[Op,Res1|VI],Res);
 eval_args63(RetType,Depth,Self,[Op,Arg1|VI],Res)).

eval_args60(RetType,Depth,Self,[Op,Arg1|VI],Res):-  fail, !,
    ((is_list(Arg1),eval_args_in_steps_some_change(RetType,Depth,Self,Arg1,Res1))
       *-> eval_args63(RetType,Depth,Self,[Op,Res1|VI],Res)
       ;eval_args63(RetType,Depth,Self,[Op,Arg1|VI],Res)).
*/
eval_args61(_RetType,_Depth,Self,H,B):- \+ iz_conz(H), !,metta_defn(Self,H,B).
%eval_args60(RetType,Depth,Self,[H|Args],B):- is_special_op(Self,H),!,eval_args64(RetType,Depth,Self,H,B).
eval_args61(RetType,Depth,Self,[AE|More],TF):-
  adjust_args(Depth,Self,AE,More,Adjusted),!,
 eval_args64(RetType,Depth,Self,[AE|Adjusted],TF).

%eval_args60(RetType,Depth,Self,[Equals,X,Y],E):-Equals=='=',!, eval_args(RetType,Depth,Self,['==',Y,X],E).

%eval_args63(RetType,Depth,Self,H,B):-
 %( no_repeats(H+B,eval_args64(RetType,Depth,Self,H,B))*->true;eval_args67(RetType,Depth,Self,H,B)).
%eval_args63(RetType,Depth,Self,H,B):-
 % ( (eval_args64(RetType,Depth,Self,H,B))*->true;eval_args67(RetType,Depth,Self,H,B)).

eval_args64(_RetType,_Depth,Self,[H|Args],B):- % no weird template matchers
   forall(metta_defn(Self,[H|Template],_),maplist(not_template_arg,Template)),!,
    metta_defn(Self,[H|Args],B).
% Use the first template match
eval_args64(_RetType,_Depth,Self,[H|Args],B):-
    metta_defn(Self,[H|Template],B),
    Args=Template,!.

not_template_arg(TArg):- var(TArg), !, \+ attvar(TArg).
not_template_arg(TArg):- atomic(TArg),!.
%not_template_arg(TArg):- is_list(TArg),!,fail.

/*
eval_args66(_RetType,Depth,Self,[H|Start],B):- !,
   maplist(eval_args(Depth,Self),Start,NewStart),
   metta_defn(Self,[H|NewStart],B).

eval_args67(RetType,Depth,Self,[[H|Start]|T1],Y):-
   mnotrace((
      nonvar(H),
      % is_user_defined_head_f(Self,H),
       is_list(Start))),
   maplist(eval_args(Depth,Self),Start,NewStart),
   metta_defn(Self,[H|NewStart],Left),
   eval_args(RetType,Depth,Self,[Left|T1],Y).

% Has argument that is headed by the same function
eval_args67(RetType,Depth,Self,[H1|Args],Res):-
   mnotrace((append(Left,[[H2|H2Args]|Rest],Args), H2==H1)),!,
   eval_args(RetType,Depth,Self,[H2|H2Args],ArgRes),
   mnotrace((ArgRes\==[H2|H2Args], append(Left,[ArgRes|Rest],NewArgs))),
   eval_args60(RetType,Depth,Self,[H1|NewArgs],Res).
*/
   /*FAILS
% Has subterm to eval
eval_args67(RetType,Depth,Self,[F|PredDecl],Res):- !, fail,
   Depth>1,
   quietly(sub_sterm1(SSub,PredDecl)),
   mnotrace((ground(SSub),SSub=[_|Sub], is_list(Sub),maplist(atomic,SSub))),
   eval_args(RetType,Depth,Self,SSub,Repl),
   mnotrace((SSub\=Repl,subst(PredDecl,SSub,Repl,Temp))),
   eval_args60(RetType,Depth,Self,[F|Temp],Res).

%eval_args67(RetType,Depth,Self,X,Y):- (eval_args68(RetType,Depth,Self,X,Y)*->true;metta_atom_iter(Depth,Self,[=,X,Y])).

eval_args67(RetType,Depth,Self,PredDecl,Res):- fail,
 ((term_variables(PredDecl,Vars),
  (metta_atom(Self,PredDecl) *-> (Vars ==[]->Res='True';Vars=Res);
   (eval_args(RetType,Depth,Self,PredDecl,Res),ignore(Vars ==[]->Res='True';Vars=Res))))),
 PredDecl\=@=Res.

%eval_args68(_RetType,_Dpth,Self,[H|_],_):- mnotrace( \+ is_user_defined_head_f(Self,H) ), !,fail.
eval_args68(_RetType,_Dpth,Self,[H|T1],Y):- metta_defn(Self,[H|T1],Y).
%eval_args68(RetType,_Dpth,Self,[H|T1],'True'):- metta_atom(Self,[H|T1]).
%val_args68(RetType,_Dpth,Self,CALL,Y):- fail,append(Left,[Y],CALL),metta_defn(Self,Left,Y).



%eval_args6(RetType,Depth,Self,['ift',CR,Then],RO):- fail, !, %fail, % trace,
%   metta_defn(Self,['ift',R,Then],Become),eval_args(RetType,Depth,Self,CR,R),eval_args(RetType,Depth,Self,Then,_True),eval_args(RetType,Depth,Self,Become,RO).
*/
/*
metta_atom_iter2(_,Self,[=,X,Y]):- metta_defn(Self,X,Y).
metta_atom_iter2(_Dpth,Other,[Equal,H,B]):- '=' == Equal,!, metta_defn(Other,H,B).
metta_atom_iter2(_Dpth,Self,X,Y):- metta_defn(Self,X,Y). %, Y\=='True'.
metta_atom_iter2(_Dpth,Self,X,Y):- metta_atom(Self,[=,X,Y]). %, Y\=='True'.

*/
metta_atom_iter_ref(Other,['=',H,B],Ref):-clause(metta_defn(Other,H,B),true,Ref).
metta_atom_iter_ref(Other,H,Ref):-clause(metta_atom(Other,H),true,Ref).

sub_sterm(Sub,Sub).
sub_sterm(Sub,Term):- sub_sterm1(Sub,Term).
sub_sterm1(_  ,List):- \+ compound(List),!,fail.
sub_sterm1(Sub,List):- is_list(List),!,member(SL,List),sub_sterm(Sub,SL).
sub_sterm1(_  ,[_|_]):-!,fail.
sub_sterm1(Sub,Term):- arg(_,Term,SL),sub_sterm(Sub,SL).

%not_compound(Term):- \+ is_list(Term),!.
%eval_args40(RetType,Depth,Self,Term,Res):- maplist(not_compound,Term),!,eval_args645(RetType,Depth,Self,Term,Res).

%eval_args40(RetType,Depth,Self,[X1|[F2|X2]],[Y1|Y2]):- is_function(F2),!,eval_args(RetType,Depth,Self,[F2|X2],Y2),eval_args(RetType,Depth,Self,X1,Y1).

cwdl(DL,Goal):- call_with_depth_limit(Goal,DL,R), (R==depth_limit_exceeded->(!,fail);true).
findall_eval(Depth,Self,X,L):- !,   findall(E,eval_args_ne(_RetType,Depth,Self,X,E),L).

bagof_eval(_Dpth,_Slf,X,L):- typed_list(X,_Type,L),!.
bagof_eval(Depth,Self,X,L):- !,bagof_or_nil(E,eval_args_ne(_RetType,Depth,Self,X,E),L).
setof_eval(Depth,Self,X,S):- !,bagof_eval(Depth,Self,X,L),sort(L,S).
%setof_eval(Depth,Self,X,S):- setof(E,eval_args(RetType,Depth,Self,X,E),S)*->true;S=[].
bagof_or_nil(T,G,L):- findall(T,G,L).
%bagof_or_nil(T,G,L):- bagof(T,G,L)*->true;L=[].

