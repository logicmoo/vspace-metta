

%:- style_check(-singleton).

self_eval0(X):- \+ callable(X),!.
self_eval0(X):- is_valid_nb_state(X),!.
self_eval0(X):- atom(X),!, \+ nb_current(X,_),!.
self_eval0(X):- is_metta_declaration(X),!.
self_eval0(X):- is_list(X),!,fail.
self_eval0(X):- typed_list(X,_,_),!.
%self_eval0(X):- compound(X),!.
%self_eval0(X):- is_ref(X),!,fail.
self_eval0('True'). self_eval0('False'). % self_eval0('F').
self_eval0('Empty').

self_eval(X):- notrace(self_eval0(X)).

:-  set_prolog_flag(access_level,system).
hyde(F/A):- functor(P,F,A), redefine_system_predicate(P),'$hide'(F/A), '$iso'(F/A).
:- 'hyde'(option_else/2).
:- 'hyde'(atom/1).
:- 'hyde'(quietly/1).
:- 'hyde'(notrace/1).
:- 'hyde'(var/1).
:- 'hyde'(is_list/1).
:- 'hyde'(copy_term/2).
:- 'hyde'(nonvar/1).
:- 'hyde'(quietly/1).
%:- 'hyde'(option_value/2).


is_metta_declaration([F|_]):- F == '->',!.
is_metta_declaration([F,_,_|T]):- T ==[], is_metta_declaration_f(F).

is_metta_declaration_f(F):- F == ':', !.
is_metta_declaration_f(F):- F == '=', !,
   \+ (current_self(Space), is_user_defined_head_f(Space,F)).

(F==':';
  (F=='=',  \+
   \+ (current_self(Space), is_user_defined_head_f(Space,F)))).
% is_metta_declaration([F|T]):- is_list(T), is_user_defined_head([F]),!.

:- nb_setval(self_space, '&self').
evals_to(XX,Y):- Y=@=XX,!.
evals_to(XX,Y):- Y=='True',!, is_True(XX),!.

current_self(Space):- nb_current(self_space,Space).




do_expander('=',_,X,X):-!.
do_expander(':',_,X,Y):- !, get_type(X,Y)*->X=Y.

'get_type'(Arg,Type):- 'get-type'(Arg,Type).




eval_args(X,Y):- current_self(Space), eval_args(100,Space,X,Y).
eval_args(Depth,Self,X,Y):- eval(Depth,Self,X,Y).
eval_args(Expander,RetType,Depth,Self,X,Y):- eval(Expander,RetType,Depth,Self,X,Y).

%eval(Expander,RetType,Depth,_Self,X,_Y):- forall(between(6,Depth,_),write(' ')),writeqln(eval(Expander,RetType,X)),fail.
eval(Depth,Self,X,Y):- eval('=',_RetType,Depth,Self,X,Y).

%eval(Expander,RetType,_Dpth,_Slf,X,Y):- nonvar(Y),X=Y,!.

eval(Expander,RetType,Depth,Self,X,Y):- nonvar(Y),!,
   get_type(Depth,Self,Y,RetType), !,
   eval(Expander,RetType,Depth,Self,X,XX),evals_to(XX,Y).

eval(_Expander,_RetType,_Dpth,_Slf,X,Y):- var(X),!,Y=X.

eval(Expander,RetType,_Dpth,_Slf,[X|T],Y):- T==[], number(X),!, do_expander(Expander,RetType,X,YY),Y=[YY].

eval(Expander,RetType,Depth,Self,[F|X],Y):-
  (F=='superpose' ; ( option_value(no_repeats,false))),
  notrace((D1 is Depth-1)),!,
  eval_00(Expander,RetType,D1,Self,[F|X],Y).

eval(Expander,RetType,Depth,Self,X,Y):-
  notrace(allow_repeats_eval_(X)),
  !,
  eval_00(Expander,RetType,Depth,Self,X,Y).
eval(Expander,RetType,Depth,Self,X,Y):-
  notrace((no_repeats_var(YY),
  D1 is Depth-1)),
  eval_00(Expander,RetType,D1,Self,X,Y),
   notrace(( \+ (Y\=YY))).

allow_repeats_eval_(_):- !.
allow_repeats_eval_(_):- option_value(no_repeats,false),!.
allow_repeats_eval_(X):- \+ is_list(X),!,fail.
allow_repeats_eval_([F|_]):- atom(F),allow_repeats_eval_f(F).
allow_repeats_eval_f('superpose').
allow_repeats_eval_f('collapse').

debugging_metta(G):- notrace((is_debugging((eval))->ignore(G);true)).


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
  setup_call_cleanup(set_debug(Flag,true),call(Goal),set_debug(Flag,false)).

flag_to_var(Flag,Var):- atom(Flag), \+ atom_concat('trace-on-',_,Flag),!,atom_concat('trace-on-',Flag,Var).
flag_to_var(metta(Flag),Var):- !, nonvar(Flag), flag_to_var(Flag,Var).
flag_to_var(Flag,Var):- Flag=Var.

set_debug(Flag,Val):- \+ atom(Flag), flag_to_var(Flag,Var), atom(Var),!,set_debug(Var,Val).
set_debug(Flag,true):- !, debug(metta(Flag)),flag_to_var(Flag,Var),set_option_value(Var,true).
set_debug(Flag,false):- nodebug(metta(Flag)),flag_to_var(Flag,Var),set_option_value(Var,false).
if_trace((Flag;true),Goal):- !, notrace(( catch(ignore((Goal)),E,wdmsg(E-->if_trace((Flag;true),Goal))))).
if_trace(Flag,Goal):- notrace((catch(ignore((is_debugging(Flag),Goal)),E,wdmsg(E-->if_trace(Flag,Goal))))).


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

eval_ne(Expander,RetType,Depth,Self,X,E):- eval(Expander,RetType,Depth,Self,X,E), \+ return_empty([],E).
eval_90(Expander,RetType,Depth,Self,X,Y):- eval_ne(Expander,RetType,Depth,Self,X,Y). %*->true;eval_failed(Depth,Self,X,Y).
eval_99(Expander,RetType,Depth,Self,X,Y):- eval(Expander,RetType,Depth,Self,X,Y)*->true;eval_failed(Depth,Self,X,Y).


eval_00(Expander,_RetType,Dpth,_Slf,X,Y):- Dpth<0,!,X = Y.
eval_00(Expander,RetType,_Dpth,_Slf,X,Y):- nonvar(Y),X=Y,!, check_returnval(Expander,RetType,Y).
eval_00(Expander,RetType,_Dpth,_Slf,X,Y):- notrace(var(X)),!,X=Y, check_returnval(Expander,RetType,Y).
eval_00(Expander,RetType,Depth,Self,X,Y):- notrace(nonvar(Y)),!,eval_00(Expander,RetType,Depth,Self,X,XX),eval_s_to(XX,Y).
eval_00(Expander,RetType,_Dpth,_Slf,X,Y):- notrace(self_eval(X)),!,Y=X, check_returnval(Expander,RetType,Y).
eval_00(Expander,RetType,_Dpth,_Slf,[X|T],Y):- notrace((T==[], \+ callable(X))),!,Y=[X], check_returnval(Expander,RetType,Y).
eval_00(Expander,RetType,Depth,_Slf,X,Y):- Depth<1,!,X=Y, (\+ is_debugging(overflow)-> true; flag(eval_num,_,0),set_debug((eval),true)), check_returnval(Expander,RetType,Y).
%eval_00(Expander,RetType,_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X.
eval_00(Expander,RetType,Depth,Self,X,Y):-
  Answers=ans([]),
  copy_term(X,XX),
  Depth2 is Depth-1,
  call_nth(eval_111(Expander,RetType,Depth,Self,X,M),Nth),
  (is_bool_or_same(XX,Answers,Nth,M)
          -> (!, (Nth=1->Y=M;fail) )
            ;  eval(Expander,RetType,Depth2,Self,M,Y)),
  nop(nonvar(Y)).

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

eval_111(Expander,_RetType,Dpth,_Slf,X,Y):- Dpth<0,!,X = Y.
eval_111(Expander,RetType,Depth,Self,X,Y):-
    copy_term(X,XX),
    Depth2 is Depth-1,
    eval_11(Expander,RetType,Depth2,Self,X,M),
    ((XX=@=M;X=@=M) -> Y =M ; eval_00(Expander,RetType,Depth2,Self,M,Y)).


 %eval_11(Expander,RetType,_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X.
%eval_11(Expander,RetType,Depth,Self,X,Y):- \+ debugging(metta(eval)),!, eval_20(Expander,RetType,Depth,Self,X,Y).

eval_11f(_Dpth,_Slf,[F|LESS],Res):- notrace((ground([F|LESS]),once(maybe_efbug(show_success,eval_selfless([F|LESS],Res))),mnotrace(([F|LESS]\==Res)))).

eval_11(Expander,RetType,Depth,Self, [Op|More], Res):-
  mnotrace(( get_sa_p3a(ST,More,P1), % ST\==Term,
   compound(ST), eval_11f(Depth,Self,ST,Var),
   call(P1,Var))), !,  %max_counting(F,30), member(Var,List),
   eval_11(Expander,RetType,Depth,Self, [Op|More], Res).

eval_11(Expander,RetType,Depth,Self, [Op|More], Res):- fail,
  mnotrace(( get_sa_p3(ST,More,P1), % ST\==Term,
   compound(ST), eval_11f(Depth,Self,ST,Var),
   call(P1,Var))), !,  %max_counting(F,30), member(Var,List),
   eval_11(Expander,RetType,Depth,Self, [Op|More], Res).

eval_11(Expander,RetType,Depth,Self,X,Y):- flag(eval_num,EX,EX+1),
  option_else(traclen,Max,100),
  (EX>Max->(set_debug(eval,false),set_debug(exec,false),set_debug(overflow,false),
               skip(write('Switched off tracing. For a longer trace !(pragma! tracelen 101))')));true),

  notrace((D1 is Depth-1)),
  if_may_trace(if_trace((eval),indentq(Depth,'-->'(EX,Self,X,depth(Depth))))),
  Ret=retval(fail),
  call_cleanup(
   (eval_20(Expander,RetType,D1,Self,X,Y),
    notrace(( nb_setarg(1,Ret,Y)))),
   if_may_trace(notrace(ignore(((Y\=@=X,flag(eval_num,_,EX),if_trace((eval),indentq(Depth,'<--'(EX,Ret))))))))),
  (Ret\=@=retval(fail)->true;(rtrace(eval_20(Expander,RetType,D1,Self,X,Y)),fail)).



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



:- discontiguous eval_20/5.
:- discontiguous eval_20/5.
:- discontiguous eval_80/5.
:- discontiguous eval_30fz/5.
:- discontiguous eval_31/5.
:- discontiguous eval_60/5.



/*
eval_20(Expander,RetType,Depth,Self,[F,A|Args],Res):-
   \+ self_eval(A),
   eval(Expander,RetType,Depth,Self,A,AA),AA\==A,
   eval(Expander,RetType,Depth,Self,[F,AA|Args],Res).


eval_20(Expander,RetType,Depth,Self,[F,A1|AArgs],Res):- fail, member(F,['+']),
 cwdl(40,((
   append(L,[A|R],AArgs),
   \+ self_eval(A),
   eval(Expander,RetType,Depth,Self,A,AA),AA\==A,!,
   append(L,[AA|R],NewArgs), eval(Expander,RetType,Depth,Self,[F,A1|NewArgs],Res)))).
*/

/* %%

% !(assertEqualToResult ((inc) 2) (3))
eval_20(Expander,RetType,Depth,Self,[F|Args],Res):- is_list(F),
  metta_atom_iter(Depth,Self,['=',F,R]), eval(Expander,RetType,Depth,Self,[R|Args],Res).

eval_20(Expander,RetType,Depth,Self,[F|Args],Res):- is_list(F), Args\==[],
  append(F,Args,FArgs),!,eval(Expander,RetType,Depth,Self,FArgs,Res).
*/


as_prolog(_Dpth,_Slf,I,O):- \+ iz_conz(I),!,I=O.
as_prolog(Depth,Self,[H|T],O):- H=='::',!,as_prolog(Depth,Self,T,O).
as_prolog(Depth,Self,[H|T],[HH|TT]):- as_prolog(Depth,Self,H,HH),as_prolog(Depth,Self,T,TT).


% eval_20 is "1 step"
eval_20(Expander,RetType,_Dpth,_Slf,Name,Value):- atom(Name), !, (nb_current(Name,Value) -> true ; Value=Name), check_returnval(Value,Expander,RetType).
eval_20(Expander,RetType,Depth,_,X,Y):- Depth<3, !, ground(X), (Y=X), check_returnval(Expander,RetType,Y).


% =================================================================
% =================================================================
% =================================================================
%  VAR HEADS/ NON-LISTS
% =================================================================
% =================================================================
% =================================================================


eval_20(Expander,RetType,_Dpth,_Slf,X,Y):- \+ iz_conz(X),!,Y=X, check_returnval(Expander,RetType,Y).


%eval_20(Expander,RetType,Depth,Self,[V|VI],[V|VO]):- var(V),!, freeze(V,eval_20(Expander,RetType,Depth,Self,[V|VI],[V|VO])).
eval_20(Expander,_RetType,Depth,Self,[V|VI],[V|VO]):- var(V),!,maplist(eval(Depth,Self),VI,VO).


eval_20(Expander,RetType,Depth,Self,[V|VI],VVO):-  \+ is_list(VI),!,
 eval(Expander,RetType,Depth,Self,VI,VM),
  ( VM\==VI -> eval(Expander,RetType,Depth,Self,[V|VM],VVO) ;
    (eval(Expander,RetType,Depth,Self,V,VV), (V\==VV -> eval(Expander,RetType,Depth,Self,[VV|VI],VVO) ; VVO = [V|VI]))).

eval_20(Expander,RetType,_Dpth,_Slf,X,Y):- \+ is_list(X),!,Y=X, check_returnval(Expander,RetType,Y).
eval_20(Expander,RetType,_Dpth,_Slf,List,Y):- List=[H|_], \+ atom(H), maplist(self_eval,List), !,Y=List, check_returnval(Expander,RetType,Y).
%eval_20(Expander,RetType,_Dpth,_Slf,[V|VI],[V|VO]):- var(V),!,VI=VO.
%eval_20(Expander,RetType,_Dpth,_Slf,['=',H,B],['=',H,B]):- trace,throw(should_been_caught_by_is_metta_decl/1).



% =================================================================
% =================================================================
% =================================================================
%  TRACE/PRINT
% =================================================================
% =================================================================
% =================================================================
eval_20(Expander,RetType,_Dpth,_Slf,['repl!'],Y):- !, repl,check_returnval(Expander,RetType,Y).
eval_20(Expander,RetType,Depth,Self,['!',Cond],Res):- !, call(eval(Expander,RetType,Depth,Self,Cond,Res)).
eval_20(Expander,RetType,Depth,Self,['rtrace!',Cond],Res):- !, rtrace(eval(Expander,RetType,Depth,Self,Cond,Res)).
eval_20(Expander,RetType,Depth,Self,['trace',Cond],Res):- !, with_debug(eval,eval(Expander,RetType,Depth,Self,Cond,Res)).
eval_20(Expander,RetType,Depth,Self,['time',Cond],Res):- !, time_eval(eval(Cond),eval(Expander,RetType,Depth,Self,Cond,Res)).
eval_20(Expander,RetType,Depth,Self,['print',Cond],Res):- !, eval(Expander,RetType,Depth,Self,Cond,Res),format('~N'),print(Res),format('~N').
% !(println! $1)
eval_20(Expander,RetType,Depth,Self,['println!'|Cond],Res):- !, maplist(eval(Expander,RetType,Depth,Self),Cond,[Res|Out]),
   format('~N'),maplist(write_src,[Res|Out]),format('~N').
eval_20(Expander,RetType,Depth,Self,['trace!',A|Cond],Res):- !, maplist(eval(Expander,RetType,Depth,Self),[A|Cond],[AA|Result]),
   last(Result,Res), format('~N'),maplist(write_src,[AA]),format('~N').

%eval_20(Expander,RetType,Depth,Self,['trace!',A,B],C):- !,eval(Expander,RetType,Depth,Self,B,C),format('~N'),wdmsg(['trace!',A,B]=C),format('~N').
%eval_20(Expander,RetType,_Dpth,_Slf,['trace!',A],A):- !, format('~N'),wdmsg(A),format('~N').

eval_20(Expander,RetType,_Dpth,_Slf,List,YY):- is_list(List),maplist(self_eval,List),List=[H|_], \+ atom(H), !,Y=List,do_expander(Expander,RetType,Y,YY).

eval_20(Expander,_ListOfRetType,Depth,Self,['TupleConcat',A,B],OO):- fail, !,
    eval(Expander,RetType,Depth,Self,A,AA),
    eval(Expander,RetType,Depth,Self,B,BB),
    append(AA,BB,OO).
eval_20(Expander,OuterRetType,Depth,Self,['range',A,B],OO):- (is_list(A);is_list(B)),
  ((eval(Expander,RetType,Depth,Self,A,AA),
    eval(Expander,RetType,Depth,Self,B,BB))),
    ((AA+BB)\=@=(A+B)),
    eval_20(Expander,OuterRetType,Depth,Self,['range',AA,BB],OO),!.


%eval_20(Expander,RetType,Depth,Self,['colapse'|List], Flat):- !, maplist(eval(Expander,RetType,Depth,Self),List,Res),flatten(Res,Flat).




% =================================================================
% =================================================================
% =================================================================
%  UNIT TESTING/assert<STAR>
% =================================================================
% =================================================================
% =================================================================


eval_20(Expander,RetType,Depth,Self,['assertTrue', X],TF):- !, eval(Expander,RetType,Depth,Self,['assertEqual',X,'True'],TF).
eval_20(Expander,RetType,Depth,Self,['assertFalse',X],TF):- !, eval(Expander,RetType,Depth,Self,['assertEqual',X,'False'],TF).

eval_20(Expander,RetType,Depth,Self,['assertEqual',X0,Y0],RetVal):- !,
  subst_vars(X0,X),subst_vars(Y0,Y),
   loonit_assert_source_tf(
        ['assertEqual',X0,Y0],
        (bagof_eval_(Depth,Self,X,XX),
         bagof_eval_(Depth,Self,Y,YY)),
         equal_enough_for_test(XX,YY), TF),
  (TF=='True'->return_empty(RetVal);RetVal=[got,XX,expected,YY]),
  check_returnval(Expander,RetType,Y).

eval_20(Expander,RetType,Depth,Self,['assertNotEqual',X0,Y0],RetVal):- !,
  subst_vars(X0,X),subst_vars(Y0,Y),
   loonit_assert_source_tf(
        ['assertNotEqual',X0,Y0],
        (bagof_eval_(Depth,Self,X,XX), bagof_eval_(Depth,Self,Y,YY)),
         \+ equal_enough(XX,YY), TF),
  (TF=='True'->return_empty(RetVal);RetVal=[got,XX,expected,not,YY]),
  check_returnval(Expander,RetType,Y).

eval_20(Expander,RetType,Depth,Self,['assertEqualToResult',X0,Y0],RetVal):- !,
  subst_vars(X0,X),subst_vars(Y0,Y),
   loonit_assert_source_tf(
        ['assertEqualToResult',X0,Y0],
        (bagof_eval_(Depth,Self,X,XX), =(Y,YY)),
         equal_enough_for_test(XX,YY), TF),
  (TF=='True'->return_empty(RetVal);RetVal=[got,XX,expected,YY]),!,
  check_returnval(Expander,RetType,Y).

loonit_assert_source_tf(Src,Goal,Check,TF):-
   copy_term(Goal,OrigGoal),
   color_g_mesg('#114411',(writeq(Src))),
   loonit_asserts(Src, time_eval_('\n; EVAL TEST\n;',Goal), Check),
   as_tf(Check,TF),!,
  ignore((
          once((TF=='True', is_debugging(pass));(TF=='False', is_debugging(fail))),
     with_debug((eval),time_eval_('Trace',OrigGoal)))).

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

%s_empty(X):- var(X),!.
s_empty(X):- var(X),!,fail.
is_empty('Empty').
is_empty([]).
is_empty([X]):-!,is_empty(X).
equal_enough_for_test(X,Y):- is_empty(X),!,is_empty(Y).
equal_enough_for_test(X,Y):- must_det_ll((subst_vars(X,XX),subst_vars(Y,YY))),!,equal_enough_for_test2(XX,YY),!.
equal_enough_for_test2(X,Y):- equal_enough(X,Y).

equal_enouf(R,V):- is_ftVar(R), is_ftVar(V), R=V,!.
equal_enouf(X,Y):- is_empty(X),!,is_empty(Y).
equal_enouf(R,V):- R=@=V, R=V, !.
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

test_nb_space:-
   !.

%[superpose,[1,2,3]]
   /*
eval_20(Expander,RetType,Depth,Self,[Superpose,List],Res):-
  'superpose' == Superpose, !,
  List=[H|_],
  ((fail,is_user_defined_head_f(Self,H)) -> (eval(Expander,RetType,Depth,Self,List,RList),member(Res,RList)) ;
      (member(E,List),eval(Expander,RetType,Depth,Self,E,Res) , \+ return_empty([],Res))).
*/
eval_20(_RtType,_Dpth,_Slf,[Superpose,List],E):-
  'sequential' == Superpose, !, member(E,List).

eval_20(_RtType,_Dpth,_Slf,[Superpose,List],E):-
  'superpose' == Superpose, !, member(E,List).



eval_20(Expander,RetType,Depth,Self,[Op,Arg1|VI],Res):- !,
  ((is_list(Arg1),ground(Arg1),
     get_operator_typedef(Self,Op,[Type1|_Rest],Expander,RetType), \+ is_non_eval_kind(Type1),
        set_type(Depth,Res,Self,Expander,RetType),!,
        eval(Type1,Depth,Self,Arg1,Res1), Arg1\=@=Res1,  not_arg_violation(Depth,Self,Res1,Type1))
   *-> (if_trace(eval,write_src_nl(cont([Op,Res1|VI]))),eval_20(Expander,RetType,Depth,Self,[Op,Res1|VI],Res))
   ;eval_20(Expander,RetType,Depth,Self,[Op,Arg1|VI],Res)).


eval_20(Expander,_RetType,Depth,Self,[V|VI],[V|VO]):- var(V),!,maplist(eval(Depth,Self),VI,VO).


% =================================================================
% =================================================================
% =================================================================
%  SPACE EDITING
% =================================================================
% =================================================================
% =================================================================


eval_20(Expander,RetType,Depth,Self,['add-atom',Other,PredDecl],Res):- !,   into_space(Depth,Self,Other,Space),
   do_metta(python,load,Space,PredDecl,TF),return_empty([],Res),check_returnval(Expander,RetType,TF).
eval_20(Expander,RetType,Depth,Self,['remove-atom',Other,PredDecl],Res):- !,   into_space(Depth,Self,Other,Space),
   do_metta(python,unload,Space,PredDecl,TF),return_empty([],Res),check_returnval(Expander,RetType,TF).
eval_20(Expander,RetType,Depth,Self,['atom-count',Other],Count):- !,   (( into_space(Depth,Self,Other,Space), findall(_,metta_defn(Other,_,_),L1),length(L1,C1),
    findall(_,metta_atom(Space,_),L2),length(L2,C2),Count is C1+C2)),check_returnval(Expander,RetType,Count).
eval_20(Expander,RetType,Depth,Self,['atom-replace',Other,Rem,Add],TF):- !,
 ((into_space(Depth,Self,Other,Space), copy_term(Rem,RCopy),
   as_tf((metta_atom_iter_ref(Space,RCopy,Ref), RCopy=@=Rem,erase(Ref), do_metta(Other,load,Add)),TF))),
 check_returnval(Expander,RetType,TF).
eval_20(Expander,RetType,Depth,Self,['get-atoms',Other],Atom):- !, ignore(Expander,RetType='Atom'),
  get_atoms(Depth,Self,Other,Atom), check_returnval(Expander,RetType,Atom).

get_atoms(Depth,Self,Other,Atom):-
  into_space(Depth,Self,Other,Space),
  space_to_Space(Depth,Self,Space,SpaceC),
  into_listoid(SpaceC,AtomsL),
  member(Atom,AtomsL).

space_to_Space(_Dpth,_Slf,Space,SpaceC):- compound(Space),functor(Space,_,1),arg(1,Space,L),is_list(L),!,SpaceC=Space.
space_to_Space(Depth,Self,Space,SpaceC):- findall(Atom, metta_atom_iter(Depth,Self,Space,Atom),Atoms),
   SpaceC = 'hyperon::space::DynSpace'(Atoms).

% Match-ELSE
eval_20(Expander,RetType,Depth,Self,['match',Other,Goal,Template,Else],Template):-
  ((eval_20(Expander,RetType,Depth,Self,['match',Other,Goal,Template],Template),
       \+ return_empty([],Template))*->true;Template=Else).
% Match-TEMPLATE
eval_20(Expander,RetType,Depth,Self,['match',Other,Goal,Template],Res):- !,
  try_match(Expander,RetType,Depth,Self,Other,Goal,Template,Res).

  /*
try_match(Expander,RetType,Depth,Self,Other,Goal,Template,Res):- fail,
  into_space(Depth,Self,Other,Space),
  metta_atom_iter(Depth,Self,Space,Goal),
  eval_99(Expander,RetType,Depth,Self,Template,Res).
*/

try_match(Expander,RetType,Depth,Self,Other,GoalM,Template,Res):-
  get_atoms(Depth,Self,Other,Goal),once(GoalM=Goal),
  eval_99(Expander,RetType,Depth,Self,Template,Res).

metta_atom_iter(Depth,_Slf,Other,[Equal,[F|H],B]):- fail, '=' == Equal,!,  % trace,
   metta_defn(Other,[F|HH],BB),
   once(eval_until_unify(Depth,Other,H,HH)),
   once(eval_until_unify(Depth,Other,B,BB)).
metta_atom_iter(Depth,_Slf,Other,[Equal,[F|H],B]):- '=' == Equal,!,  % trace,
   metta_defn(Other,[F|HH],B), once(eval_until_unify(Depth,Other,H,HH)).

metta_atom_iter(Depth,_,_,_):- Depth<3,!,fail.
metta_atom_iter(Depth,Self,Other,[And|Y]):- atom(And), is_and(And),!,
  (Y==[] -> true ;  ( D2 is Depth -1, Y = [H|T], metta_atom_iter(D2,Self,Other,H),metta_atom_iter(D2,Self,Other,[And|T]))).
metta_atom_iter(_Dpth,_Slf,Other,H):- metta_atom(Other,H).
metta_atom_iter(Depth,Self,Other,H):- metta_defn(Other,H,B), D2 is Depth -1, metta_atom_iter(D2,Self,Other,B).
%metta_atom_iter(Depth,Other,H):- D2 is Depth -1, metta_defn(Other,H,B),metta_atom_iter(D2,Other,B).
%metta_atom_iter_l2(Depth,Self,Other,H):- metta_atom_iter(Depth,Self,Other,H).
%$metta_atom_iter(_Dpth,_Slf,[]):-!.

eval_20(Expander,RetType,_Dpth,_Slf,['new-space'],Space):- !, 'new-space'(Space),check_returnval(Expander,RetType,Space).

/*
metta_atom_iter2(_,Self,[=,X,Y]):- metta_defn(Self,X,Y).
metta_atom_iter2(_Dpth,Other,[Equal,H,B]):- '=' == Equal,!, metta_defn(Other,H,B).
metta_atom_iter2(_Dpth,Self,X,Y):- metta_defn(Self,X,Y). %, Y\=='True'.
metta_atom_iter2(_Dpth,Self,X,Y):- metta_atom(Self,[=,X,Y]). %, Y\=='True'.

*/
metta_atom_iter_ref(Other,['=',H,B],Ref):-clause(metta_defn(Other,H,B),true,Ref).
metta_atom_iter_ref(Other,H,Ref):-clause(metta_atom(Other,H),true,Ref).


% =================================================================
% =================================================================
% =================================================================
%  CASE/SWITCH
% =================================================================
% =================================================================
% =================================================================
% Macro: case
:- debug(metta(case)).
eval_20(Expander,RetType,Depth,Self,['case',A,CL],Value):- !,
  ((eval(Depth,Self,A,AA),
    if_trace((case),(writeqln('switch'(A)=AA))),
    must_det_ll(into_case_list(1,CL,KVs)),
    select_switch(Depth,Self,AA,KVs,Match,Value),
    if_trace((case),(writeqln('matched'=Match))),
    if_trace((case),(writeqln('result'=Value))))*->true;member(['%void%',Value],CL)),
    check_returnval(Value,Expander,RetType).

select_switch(Depth,_Self,_A,_Cases,_Match,_Value):- Depth<1,!,fail.
select_switch(Depth,Self,A,Cases,Match,Value):-
  Depth2 is Depth -1,
  ((if_trace((case),(writeqln('select-1'=A))),select_case(Depth2,Self,A,Cases,Match,Value))*->true;
    ((eval_complete_change(Expander,_RetType,Depth2,Self,A,AA),if_trace((case),(writeqln('select-2'=AA))),select_switch(Depth2,Self, AA,Cases,Match,Value))*->true;
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

   %maybe_special_keys(Depth,Self,[K-V|KVI],[AK-V|KVO]):- fail,eval(Expander,RetType,Depth,Self,K,AK), K\=@=AK,!, maybe_special_keys(Depth,Self,KVI,KVO).
   maybe_special_keys(Depth,Self,[_|KVI],KVO):-
     fail, maybe_special_keys(Depth,Self,KVI,KVO).
   maybe_special_keys(_Depth,_Self,[],[]).


% =================================================================
% =================================================================
% =================================================================
%  COLLAPSE/SUPERPOSE
% =================================================================
% =================================================================
% =================================================================



%[collapse,[1,2,3]]
eval_20(Expander,RetType,Depth,Self,['collapse',List],Res):-!,  bagof_eval_(Depth,Self,List,Res),check_returnval(Expander,RetType,Res).

% @TODO: This should not be here
eval_80(Expander,RetType,_Dpth,_Slf,['ift',Cond,Then],Then):- Cond == 'True', !,check_returnval(Expander,RetType,Then).
/*
get_sa_p1(P3,E,Cmpd,SA):-  compound(Cmpd), get_sa_p2(P3,E,Cmpd,SA).
get_sa_p2(P3,E,Cmpd,call(P3,N1,Cmpd)):- arg(N1,Cmpd,E).
get_sa_p2(P3,E,Cmpd,SA):- arg(_,Cmpd,Arg),get_sa_p1(P3,E,Arg,SA).

eval_disabledfz(Expander,RetType,Depth,Self, Term, Res):- fail,
  mnotrace(( get_sa_p1(setarg,ST,Term,P1), % ST\==Term,
   compound(ST), ST = [F,List],F=='superpose',nonvar(List), %maplist(atomic,List),
   call(P1,Var))), !,
   %max_counting(F,30),
   member(Var,List),
   eval(Expander,RetType,Depth,Self, Term, Res).
*/
eval_disabledzf(Expander,RetType,Depth,Self, Term, Res):- fail,
   mnotrace(( get_sa_p1(setarg,ST,Term,P1),
   compound(ST), ST = [F,List],F=='collapse',nonvar(List), %maplist(atomic,List),
   call(P1,Var))), !, setof_eval_(Depth,Self,List,Var),
   eval(Expander,RetType,Depth,Self, Term, Res).

eval_disabledaaaa(Expander,RetType,Depth,Self,[Op|Args],Res):- append(ArgsL,[ArgE|ArgsR],Args),is_list(ArgE),!,
 ((get_operator_typedef(Self,Op,Types,Expander,RetType),
       length(ArgsL,N), length(TypesL,N),
       append(TypesL,[TypeE|TypesR],Types),
        \+ is_non_eval_kind(TypeE),
       maplist(not_arg_violation(Depth,Self),ArgsL,TypesL),
       maplist(not_arg_violation(Depth,Self),ArgsR,TypesR),
       eval_11(Expander,RetType,Depth,Self,ArgE,ResE), ArgE\=@=ResE,
       not_arg_violation(Depth,Self,ResE,TypeE),
       set_type(Depth,Res,Self,Expander,RetType),
       append(ArgsL,[ResE|ArgsR],EArgs))
     *-> eval(Expander,RetType,Depth,Self,[Op|EArgs],Res);
   eval_80(Expander,RetType,Depth,Self,[Op|Args],Res)).


% Macro Functions
eval_disableda1a(Expander,RetType,Depth,Self,[F|PredDecl],Res):-
   (Depth>1,
   quietly(sub_sterm1(SSub,PredDecl)),
   mnotrace((ground(SSub),SSub=[_|Sub], is_list(Sub),maplist(atomic,SSub))),
   eval(Expander,RetType,Depth,Self,SSub,Repl),
   mnotrace((SSub\=Repl,subst(PredDecl,SSub,Repl,Temp))))*-> eval(Expander,RetType,Depth,Self,[F|Temp],Res);
 eval_80(Expander,RetType,Depth,Self,[F|PredDecl],Res).

% Macro Functions
eval_disabledfzr(Expander,RetType,Depth,Self,[F|PredDecl],Res):- fail,
   Depth>1,
   mnotrace((sub_sterm1(SSub,PredDecl), ground(SSub),SSub=[Op|Sub], is_list(Sub), maplist(atomic,SSub))),
    nop(is_user_defined_head_f(Self,Op)), eval(Expander,RetType,Depth,Self,SSub,Repl),
   mnotrace((SSub\=Repl, subst(PredDecl,SSub,Repl,Temp))),
   eval(Expander,RetType,Depth,Self,[F|Temp],Res).

eval_20(Expander,_RetType,Dpth,_Slf,_X,Y):- Dpth<0,!,[] = Y.

sub_sterm(Sub,Sub).
sub_sterm(Sub,Term):- sub_sterm1(Sub,Term).
sub_sterm1(_  ,List):- \+ compound(List),!,fail.
sub_sterm1(Sub,List):- is_list(List),!,member(SL,List),sub_sterm(Sub,SL).
sub_sterm1(_  ,[_|_]):-!,fail.
sub_sterm1(Sub,Term):- arg(_,Term,SL),sub_sterm(Sub,SL).


max_counting(F,Max):- flag(F,X,X+1),  X<Max ->  true; (flag(F,_,10),!,fail).
% =================================================================
% =================================================================
% =================================================================
%  if/If
% =================================================================
% =================================================================
% =================================================================



eval_20(Expander,RetType,Depth,Self,['if',Cond,Then,Else],Res):- !,
   eval(Expander,'Bool',Depth,Self,Cond,TF),
   (is_True(TF)
     -> eval(Expander,RetType,Depth,Self,Then,Res)
     ;  eval(Expander,RetType,Depth,Self,Else,Res)).

eval_20(Expander,RetType,Depth,Self,['If',Cond,Then,Else],Res):- !,
   eval(Expander,'Bool',Depth,Self,Cond,TF),
   (is_True(TF)
     -> eval(Expander,RetType,Depth,Self,Then,Res)
     ;  eval(Expander,RetType,Depth,Self,Else,Res)).

eval_20(Expander,RetType,Depth,Self,['If',Cond,Then],Res):- !,
   eval(Expander,'Bool',Depth,Self,Cond,TF),
   (is_True(TF) -> eval(Expander,RetType,Depth,Self,Then,Res) ;
      (!, fail,Res = [],!)).

eval_20(Expander,RetType,Depth,Self,['if',Cond,Then],Res):- !,
   eval(Expander,'Bool',Depth,Self,Cond,TF),
   (is_True(TF) -> eval(Expander,RetType,Depth,Self,Then,Res) ;
      (!, fail,Res = [],!)).


% =================================================================
% =================================================================
% =================================================================
%  LET/LET*
% =================================================================
% =================================================================
% =================================================================




eval_until_unify(_Dpth,_Slf,X,X):- !.
eval_until_unify(Depth,Self,X,Y):- eval_until_eq(Expander,_RetType,Depth,Self,X,Y).

eval_until_eq(Expander,RetType,_Dpth,_Slf,X,Y):-  X=Y,check_returnval(Expander,RetType,Y).
%eval_until_eq(Expander,RetType,Depth,Self,X,Y):- var(Y),!,eval_in_steps_or_same(Expander,RetType,Depth,Self,X,XX),Y=XX.
%eval_until_eq(Expander,RetType,Depth,Self,Y,X):- var(Y),!,eval_in_steps_or_same(Expander,RetType,Depth,Self,X,XX),Y=XX.
eval_until_eq(Expander,RetType,Depth,Self,X,Y):- \+is_list(Y),!,eval_in_steps_some_change(Expander,RetType,Depth,Self,X,XX),Y=XX.
eval_until_eq(Expander,RetType,Depth,Self,Y,X):- \+is_list(Y),!,eval_in_steps_some_change(Expander,RetType,Depth,Self,X,XX),Y=XX.
eval_until_eq(Expander,RetType,Depth,Self,X,Y):- eval_in_steps_some_change(Expander,RetType,Depth,Self,X,XX),eval_until_eq(Expander,RetType,Depth,Self,Y,XX).
eval_until_eq(Expander,_RetType,_Dpth,_Slf,X,Y):- length(X,Len), \+ length(Y,Len),!,fail.
eval_until_eq(Expander,RetType,Depth,Self,X,Y):-  nth1(N,X,EX,RX), nth1(N,Y,EY,RY),
  EX=EY,!, maplist(eval_until_eq(Expander,RetType,Depth,Self),RX,RY).
eval_until_eq(Expander,RetType,Depth,Self,X,Y):-  nth1(N,X,EX,RX), nth1(N,Y,EY,RY),
  ((var(EX);var(EY)),eval_until_eq(Expander,RetType,Depth,Self,EX,EY)),
  maplist(eval_until_eq(Expander,RetType,Depth,Self),RX,RY).
eval_until_eq(Expander,RetType,Depth,Self,X,Y):-  nth1(N,X,EX,RX), nth1(N,Y,EY,RY),
  h((is_list(EX);is_list(EY)),eval_until_eq(Expander,RetType,Depth,Self,EX,EY)),
  maplist(eval_until_eq(Expander,RetType,Depth,Self),RX,RY).

 eval_1change(Expander,RetType,Depth,Self,EX,EXX):-
    eval_20(Expander,RetType,Depth,Self,EX,EXX),  EX \=@= EXX.

eval_complete_change(Expander,RetType,Depth,Self,EX,EXX):-
   eval(Expander,RetType,Depth,Self,EX,EXX),  EX \=@= EXX.

eval_in_steps_some_change(Expander,_RetType,_Dpth,_Slf,EX,_):- \+ is_list(EX),!,fail.
eval_in_steps_some_change(Expander,RetType,Depth,Self,EX,EXX):- eval_1change(Expander,RetType,Depth,Self,EX,EXX).
eval_in_steps_some_change(Expander,RetType,Depth,Self,X,Y):- append(L,[EX|R],X),is_list(EX),
    eval_in_steps_some_change(Expander,RetType,Depth,Self,EX,EXX), EX\=@=EXX,
    append(L,[EXX|R],XX),eval_in_steps_or_same(Expander,RetType,Depth,Self,XX,Y).

eval_in_steps_or_same(Expander,RetType,Depth,Self,X,Y):-eval_in_steps_some_change(Expander,RetType,Depth,Self,X,Y).
eval_in_steps_or_same(Expander,RetType,_Dpth,_Slf,X,Y):- X=Y,check_returnval(Expander,RetType,Y).

  % (fail,return_empty([],Template))).



%eval_20(Expander,RetType,Depth,Self,['let',A,A5,AA],OO):- var(A),A=A5,!,eval_20(Expander,RetType,Depth,Self,AA,OO).
eval_20(Expander,RetType,Depth,Self,['let',A,A5,AA],OO):- !,
  %(var(A)->true;trace),
  ((eval(Depth,Self,A5,AE), AE=A)),
  eval(Expander,RetType,Depth,Self,AA,OO).
%eval_20(Expander,RetType,Depth,Self,['let',A,A5,AA],AAO):- !,eval(Expander,RetType,Depth,Self,A5,A),eval(Expander,RetType,Depth,Self,AA,AAO).
eval_20(Expander,RetType,_Dpth,_Slf,['let*',[]|T], RetVal):- T==[], !, return_empty([],RetVal), check_returnval(Expander,RetType,RetVal).
eval_20(Expander,RetType,Depth,Self,['let*',[],Body],RetVal):- !, eval(Expander,RetType,Depth,Self,Body,RetVal).

% let* version 2
eval_20(Expander,RetType,Depth,Self,['let*',[[Var,Val]|LetRest],Body],RetVal):- !, eval_20(Expander,RetType,Depth,Self,['let',Var,Val,['let*',LetRest,Body]],RetVal).


% let* version 1
eval_20(Expander,RetType,Depth,Self,['let*',[[Var,Val]|LetRest]|Body],RetVal):-   !,
   eval_until_unify(Depth,Self,Var,Val),
    %eval(Expander,RetType,Depth,Self,['==',Var,Val],_),
    eval_20(Expander,RetType,Depth,Self,['let*',LetRest|Body],RetVal).

must_eval_(G):- call(G)*->true;throw(must_eval_(G)).

%eval_20(Expander,RetType,Depth,Self,[V|VI],Res):- is_special_builtin(V),!, eval_20(Expander,RetType,Depth,Self,[V|VI],Res).
%eval_20(Expander,RetType,Depth,Self,[V|VI],Res):- is_metta_builtin(V),!, adjust_args(Depth,Self,V,VI,VO), eval_20(Expander,RetType,Depth,Self,[V|VO],Res).

eval_20(Expander,RetType,_Dpth,_Slf,X,Y):- typed_list(X,_,List), !, member(Y,List),check_returnval(Expander,RetType,Y).




% =================================================================
% =================================================================
% =================================================================
%  CONS/CAR/CDR
% =================================================================
% =================================================================
% =================================================================

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

eval_20(Expander,RetType,_Dpth,_Slf,['car-atom',AtomC],CAR):- !,
   into_listoid(AtomC,Atom),
    check_returnval('ListExpression',Atom),
    Atom=[CAR|_],!,check_returnval(Expander,RetType,CAR).
eval_20(Expander,RetType,_Dpth,_Slf,['cdr-atom',AtomC],CDR):- !,
    into_listoid(AtomC,Atom),
    check_returnval('ListExpression',Atom),
    Atom=[_|CDR],!,check_returnval(Expander,RetType,CDR).

eval_20(Expander,RetType,Depth,Self,['Cons', A, B ],['Cons', AA, BB]):- %no_cons_reduce, !,
  eval_99(_,Depth,Self,A,AA),
  eval_99(Expander,RetType,Depth,Self,B,BB).
%eval_20(Expander,RetType,Depth,Self,['Cons', A, B ],[AA|BB]):- \+ no_cons_reduce, !,
% eval_90(Expander,RetType,Depth,Self,A,AA), eval_90(Expander,RetType,Depth,Self,B,BB).
eval_20(Expander,RetType,_Dpth,_Slf,['::'|Expr],Expr):- !,check_returnval(Expander,RetType,Expr).



% =================================================================
% =================================================================
% =================================================================
%  STATE EDITING
% =================================================================
% =================================================================
% =================================================================

check_returnval(Expander,_RetType,_PredDecl).


eval_20(Expander,RetType,Depth,Self,['change-state!',StateExpr, UpdatedValue], Ret):- !,
  eval('StateMonad',Depth,Self,StateExpr,StateMonad),
  eval(Expander,RetType,Depth,Self,UpdatedValue,Value),
  'change-state!'(Depth,Self,StateMonad, Value, Ret),
  check_returnval(Expander,RetType,Ret).


eval_20(Expander,RetType,Depth,Self,['get-state',StateExpr],Value):- !,
  eval('StateMonad',Depth,Self,StateExpr,StateMonad),
  'get-state'(StateMonad,Value),
  check_returnval(Expander,RetType,Value).

eval_20(Expander,RetType,Depth,Self,['new-state',UpdatedValue],StateMonad):- !,
  eval(Depth,Self,UpdatedValue,Value),  'new-state'(Depth,Self,Value,StateMonad),
  check_returnval(Expander,RetType,StateMonad).



% eval_20(Expander,RetType,Depth,Self,['get-state',Expr],Value):- !, eval(Expander,RetType,Depth,Self,Expr,State), arg(1,State,Value).



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

% =================================================================
% =================================================================
% =================================================================
%  GET-TYPE
% =================================================================
% =================================================================
% =================================================================

eval_20(Expander,RetType,Depth,Self,['get-type',Val],Type):- !,
  get_type(Depth,Self,Val,Type),check_returnval(Expander,RetType,Type).











































% =================================================================
% =================================================================
% =================================================================
%  IMPORT/BIND
% =================================================================
% =================================================================
% =================================================================
nb_bind(Name,Value):- nb_current(Name,Was),same_term(Value,Was),!.
nb_bind(Name,Value):- nb_setval(Name,Value),!.
eval_20(Expander,RetType,Depth,Self,['import!',Other,File],RetVal):-
     (( into_space(Depth,Self,Other,Space),!, include_metta(Space,File),!,return_empty(Space,RetVal))),
     check_returnval(Expander,RetType,RetVal). %RetVal=[].
eval_20(Expander,RetType,Depth,Self,['bind!',Other,Expr],RetVal):-
   must_det_ll((into_name(Self,Other,Name),!,eval(Expander,RetType,Depth,Self,Expr,Value),
    nb_bind(Name,Value),  return_empty(Value,RetVal))),
   check_returnval(Expander,RetType,RetVal).
eval_20(Expander,RetType,Depth,Self,['pragma!',Other,Expr],RetVal):-
   must_det_ll((into_name(Self,Other,Name),!,nd_ignore((eval(Expander,RetType,Depth,Self,Expr,Value),set_option_value(Name,Value))),  return_empty(Value,RetVal),check_returnval(Expander,RetType,RetVal))).
eval_20(Expander,RetType,_Dpth,Self,['transfer!',File],RetVal):- !, must_det_ll((include_metta(Self,File),  return_empty(Self,RetVal),check_returnval(Expander,RetType,RetVal))).

nd_ignore(Goal):- call(Goal)*->true;true.








% =================================================================
% =================================================================
% =================================================================
%  NOP/EQUALITU/DO
% =================================================================
% =================================================================
% ================================================================
eval_20(Expander,RetType,Depth,Self,['==',X,Y],TF):- !, as_tf((eval_until_eq(Expander,RetType,Depth,Self,X,Y)),TF),!.

eval_20(Expander,RetType,Depth,Self,['nop',Expr],Empty):- !,  eval(Depth,Self,Expr,_), return_empty([],Empty),check_returnval(Expander,RetType,Empty).
eval_20(Expander,RetType,_Dpth,_Slf,['nop'],Empty):- !, return_empty([],Empty),check_returnval(Expander,RetType,Empty).
eval_80(Expander,RetType,Depth,Self,['do',Expr],Empty):- !,  ignore(eval(Depth,Self,Expr,_)),
   return_empty([],Empty),check_returnval(Expander,RetType,Empty).




% =================================================================
% =================================================================
% =================================================================
%  AND/OR
% =================================================================
% =================================================================
% =================================================================

is_True(T):- T=='True'. % \=='False',T\=='F',T\==[].

is_and(S):- \+ atom(S),!,fail.
is_and(',').
is_and(S,_):- \+ atom(S),!,fail.
is_and('and','True').
is_and('and2','True').
is_and('#COMMA','True'). is_and(',','True').  % is_and('And').

eval_20(Expander,RetType,_Dpth,_Slf,[And],True):- is_and(And,True),!,check_returnval(Expander,RetType,True).
eval_20(Expander,RetType,Depth,Self,[And,X,Y],TF):-  is_and(And,True),!, as_tf((
   eval(Expander,RetType,Depth,Self,X,True),eval(Expander,RetType,Depth,Self,Y,True)),TF).
eval_20(Expander,RetType,Depth,Self,[And,X],True):- is_and(And,True),!,
 eval(Expander,RetType,Depth,Self,X,True).
eval_20(Expander,RetType,Depth,Self,[And,X|Y],TF):- is_and(And,_True),!,
  eval(Expander,RetType,Depth,Self,X,TF1), \+ \+ is_True(TF1),
  eval(Expander,RetType,Depth,Self,[And|Y],TF).
%eval_80(Expander,RetType,Depth,Self,[H|T],_):- \+ is_list(T),!,fail.
eval_20(Expander,RetType,Depth,Self,['or',X,Y],TF):- !, as_tf((eval(Expander,RetType,Depth,Self,X,'True');eval(Expander,RetType,Depth,Self,Y,'True')),TF).







% =================================================================
% =================================================================
% =================================================================
%  MATH/+/-
% =================================================================
% =================================================================
% =================================================================

eval_20(Expander,RetType,Depth,Self,['+',N1,N2],N):- number(N1),!,
   eval(Expander,RetType,Depth,Self,N2,N2Res), catch(N is N1+N2Res,_E,(set_last_error(['Error',N2Res,'Number']),fail)).
eval_20(Expander,RetType,Depth,Self,['-',N1,N2],N):- number(N1),!,
   eval(Expander,RetType,Depth,Self,N2,N2Res), catch(N is N1-N2Res,_E,(set_last_error(['Error',N2Res,'Number']),fail)).

eval_20(Expander,RetType,_Dpth,_Slf,[F|LESS],Res):-
 notrace((ground([F|LESS]), once(maybe_efbug(show_success,eval_selfless([F|LESS],Res))),mnotrace(([F|LESS]\==Res)))),
  check_returnval(Expander,RetType,Res).



% =================================================================
% =================================================================
% =================================================================
%  DATA FUNCTOR
% =================================================================
% =================================================================
% =================================================================

%eval_20(Expander,RetType,Depth,Self,[V|VI],[V|VO]):- is_metta_data_functor(V), is_list(VI),!,maplist(eval(Expander,RetType,Depth,Self),VI,VO).
eval_80(Expander,RetType,Depth,Self,[V|VI],O):- is_metta_data_functor(V), !, must_eval_(adjust_args(Depth,Self,V,VI,VO)),
   O =.. [V|VO],
   check_returnval(Expander,RetType,O).

%eval_20(Expander,RetType,_Dpth,_Slf,[_,Nothing],Nothing):- 'Nothing'==Nothing,!.

/*


% =================================================================
% =================================================================
% =================================================================
%  EVAL FAILED
% =================================================================
% =================================================================
% =================================================================
%eval_failed(_Dpth,_Slf,T,TT):- var(T),!,TT=T.
%eval_failed(_Dpth,_Slf,[F|LESS],Res):- once(eval_selfless([F|LESS],Res)),mnotrace([F|LESS]\==Res),!.
%eval_failed(Depth,Self,[V|Nil],[O]):- Nil==[], once(eval(Expander,RetType,Depth,Self,V,O)),V\=@=O,!.

eval_failed(Depth,Self,T,TT):- eval(Expander,RetType,Depth,Self,T,TT).

   %eval(Expander,RetType,Depth,Self,X,Y):- eval_20(Expander,RetType,Depth,Self,X,Y)*->true;Y=[].
*/

eval_failed(Depth,Self,[X|XX],[Y]):- XX == [],!,eval_99(Expander,_RetType,Depth,Self,X,Y).
eval_failed(_Dpth,_Slf,T,TT):- T==[],!,TT=[].
eval_failed(Depth,Self,[H|T],[HH|TT]):- !,
  eval_99(Expander,_RetType,Depth,Self,H,HH),
  eval_failed(Depth,Self,T,TT).

eval_failed(_Dpth,_Slf,T,TT):- ignore(T=TT).

%eval_20(Expander,RetType,Depth,_,_,_):- Depth<1,!,fail.
%eval_20(Expander,RetType,Depth,_,X,Y):- Depth<3, !, ground(X), (Y=X).
%eval_20(Expander,RetType,_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X.

% Kills zero arity functions
% eval_20(Expander,RetType,Depth,Self,[X|Nil],[Y]):- Nil ==[],!,eval(Expander,RetType,Depth,Self,X,Y).


% =================================================================
% =================================================================
% =================================================================
%  EVAL ARGS
% =================================================================
% =================================================================
% =================================================================

/*
eval_20(Expander,RetType,Depth,Self,[Op,Arg1|VI],Res):- !,
  ((is_list(Arg1),ground(Arg1),
     get_operator_typedef(Self,Op,[Type1|_Rest],Expander,RetType), \+ is_non_eval_kind(Type1),
        set_type(Depth,Res,Self,Expander,RetType),!,
        eval_11(Expander,RetType,Depth,Self,Arg1,Res1), Arg1\=@=Res1,  not_arg_violation(Depth,Self,Res1,Type1))
   *-> eval_20(Expander,RetType,Depth,Self,[Op,Res1|VI],Res)
   ;eval_80(Expander,RetType,Depth,Self,[Op,Arg1|VI],Res)).
*/



get_operator_typedef_nr(Self,Op,Types,Expander,RetType):-
    no_repeats_var(OTD),
    get_operator_typedef(Self,Op,Types,Expander,RetType),
    term_variables(Types,Vars),
    maplist(on_bind_test(Types = OTD),Vars).

on_bind_test(Goal,Var):- freeze(Var,Goal).

guess_operator_typedef(Self,Op,Args,_Res,Types,Expander,RetType):-
 quietly(( (get_operator_typedef_nr(Self,Op,Types,Expander,RetType)*->true;
  (is_list(Args)-> (length(Args,N),length(Types,N)) ;
   true)))).

% Has argument that is headed by the same function
eval_20(Expander,RetType,Depth,Self,[H1|Args],Res):-
   mnotrace((append(Left,[[H2|H2Args]|Rest],Args), H2==H1)),!,
   eval(Expander,RetType,Depth,Self,[H2|H2Args],ArgRes),
   mnotrace((ArgRes\==[H2|H2Args], append(Left,[ArgRes|Rest],NewArgs))),
   eval_80(Expander,RetType,Depth,Self,[H1|NewArgs],Res).


eval_20(Expander,RetType,Depth,Self,[Op|Args],Res):- !, %is_list(Args),!,
 (quietly(((guess_operator_typedef(Self,Op,Args,Res,Types,Expander,RetType),
   set_type(Depth,Res,Self,Expander,RetType),
   eval_30c(Expander,RetType,Depth,Self,Op,1,Args,Types,NewArgs,Res))))
     *->eval_80(Expander,RetType,Depth,Self,[Op|NewArgs],Res)
     ; eval_80(Expander,RetType,Depth,Self,[Op|Args],Res)).
%eval_80(Expander,RetType,Depth,Self,Cond,TF):- eval_80(Expander,RetType,Depth,Self,Cond,TF).
eval_20(Expander,RetType,Depth,Self,Cond,TF):-
  eval_80(Expander,RetType,Depth,Self,Cond,TF).


eval_30c(Expander,RetType,Depth,Self,Op,N,Args,Types,NewArgs,Res):-
  length(ArgsL,N), append(ArgsL,[ArgE|ArgsR],Args),
      (((is_list(ArgE),
          length(TypesL,N), append(TypesL,[TypeE|TypesR],Types), \+ is_non_eval_kind(TypeE),
          maplist(not_arg_violation(Depth,Self),ArgsL,TypesL),
          maplist(not_arg_violation(Depth,Self),ArgsR,TypesR),
          eval_11(Expander,RetType,Depth,Self,ArgE,ResE), ArgE\=@=ResE))-> true ; ResE=ArgE),
        not_arg_violation(Depth,Self,ResE,TypeE),
        append(ArgsL,[ResE|ArgsR],EArgs),
          plus(1,N,NPlus1),eval_30c(Expander,RetType,Depth,Self,Op,NPlus1,EArgs,Types,NewArgs,Res).
eval_30c(Expander,_RetType,_Depth,_Self,_Op,_N,Args,_Types,Args,_Res).



/*

eval_30d(Expander,RetType,Depth,Self,Op,N,Args,Res):-
  length(ArgsL,N), append(ArgsL,[ArgE|ArgsR],Args),
         (((is_list(ArgE), eval_11(Expander,RetType,Depth,Self,ArgE,ResE), ArgE\=@=ResE))-> true ; ResE=ArgE),
        append(ArgsL,[ResE|ArgsR],EArgs),!,
          plus(1,N,NPlus1),eval_32(Expander,RetType,Depth,Self,Op,NPlus1,EArgs,Res).
eval_30d(Expander,RetType,Depth,Self,Op,_,Args,Res):- eval_80(Expander,RetType,Depth,Self,[Op|Args],Res).
*/

/*
into_values(List,Many):- List==[],!,Many=[].
into_values([X|List],Many):- List==[],is_list(X),!,Many=X.
into_values(Many,Many).
eval_80(Expander,RetType,_Dpth,_Slf,Name,Value):- atom(Name), nb_current(Name,Value),!.
*/



% =================================================================
% =================================================================
% =================================================================
%  METTLOG PREDEFS
% =================================================================
% =================================================================
% =================================================================

% use function we cheated with

eval_80(Expander,RetType,Depth,Self,['length',L],Res):- !, eval(Depth,Self,L,LL),
   (is_list(LL)->length(LL,Res);Res=1),
   check_returnval(Expander,RetType,Res).

eval_80(Expander,RetType,Depth,Self,['If',Cond,Then],Res):- !,
   eval('Bool',Depth,Self,Cond,TF),
  (is_True(TF) -> eval(Expander,RetType,Depth,Self,Then,Res) ; (fail, Res = [])).

eval_80(Expander,RetType,_Dpth,_Slf,['arity',F,A],TF):- !,as_tf(current_predicate(F/A),TF),check_returnval(Expander,RetType,TF).
eval_80(Expander,RetType,Depth,Self,['CountElement',L],Res):- !, eval(Expander,RetType,Depth,Self,L,LL), !, (is_list(LL)->length(LL,Res);Res=1),check_returnval(Expander,RetType,Res).
eval_80(Expander,RetType,_Dpth,_Slf,['make_list',List],MettaList):- !, into_metta_cons(List,MettaList),check_returnval(Expander,RetType,MettaList).

% less Macro-ey Functions

% =================================================================
% =================================================================
% =================================================================
% function inherited by system
% =================================================================
% =================================================================
% =================================================================

% predicate inherited by system
eval_80(Expander,RetType,_Depth,_Self,[AE|More],TF):-
  length(More,Len),
  is_syspred(AE,Len,Pred),
  mnotrace( \+ is_user_defined_goal(Self,[AE|More])),!,
  adjust_args(Depth,Self,AE,More,Adjusted),!,
  catch_warn(efbug(show_call,as_tf(apply(Pred,Adjusted),TF))),
  check_returnval(Expander,RetType,TF).


% function inherited by system
eval_80(Expander,RetType,Depth,Self,[AE|More],TF):-
  length([AE|More],Len),
  is_syspred(AE,Len,Pred),
  mnotrace( \+ is_user_defined_goal(Self,[AE|More])),!,
  adjust_args(Depth,Self,AE,More,Adjusted),!,
  append(Adjusted,[TF],Args),!,
  efbug(show_call,catch_warn(apply(Pred,Args))),
check_returnval(Expander,RetType,TF).


last_element(T,E):- \+ compound(T),!,E=T.
last_element(T,E):- is_list(T),last(T,L),last_element(L,E),!.
last_element(T,E):- compound_name_arguments(T,_,List),last_element(List,E),!.




catch_warn(G):- quietly(catch(G,E,(wdmsg(catch_warn(G)-->E),fail))).
catch_nowarn(G):- quietly(catch(G,error(_,_),fail)).


as_tf(G,TF):- catch_nowarn((call(G)*->TF='True';TF='False')).
eval_selfless(['==',X,Y],TF):- as_tf(X=:=Y,TF),!.
eval_selfless(['==',X,Y],TF):- as_tf(X=@=Y,TF),!.
%eval_selfless(['=',X,Y],TF):-!, as_tf(X #= Y,TF).
eval_selfless(['>',X,Y],TF):-!,as_tf(X>Y,TF).
eval_selfless(['<',X,Y],TF):-!,as_tf(X<Y,TF).
eval_selfless(['=>',X,Y],TF):-!,as_tf(X>=Y,TF).
eval_selfless(['<=',X,Y],TF):-!,as_tf(X=<Y,TF).
eval_selfless(['%',X,Y],TF):-!,eval_selfless(['mod',X,Y],TF).

eval_selfless(LIS,Y):-  mnotrace((
   LIS=[F,_,_], atom(F), catch_warn(current_op(_,yfx,F)),
   catch((LIS\=[_], s2p(LIS,IS), Y is IS),_,fail))),!.




:- discontiguous eval_6/4.
%eval_80(Expander,RetType,Depth,Self,PredDecl,Res):- eval_6(Expander,RetType,Depth,Self,PredDecl,Res).

%eval_80(Expander,RetType,_Dpth,_Slf,L1,Res):- is_list(L1),maplist(self_eval,L1),!,Res=L1.
%eval_80(Expander,RetType,_Depth,_Self,X,X).



%eval_80(Expander,RetType,Depth,Self,['eq',X,Y],Res):- !, as_tf(eval_until_eq(Expander,RetType,Depth,Self,X,Y),Res).
eval_80(Expander,RetType,_Dpth,_Slf,['memb',E,List],Res):- !, into_pl_list(List,PLList),as_tf(member(E,PLList), Res),check_returnval(Expander,RetType,Res).

eval_80(Expander,RetType,Depth,Self,X,Y):-
  (efbug(show_success,eval_60(Expander,RetType,Depth,Self,X,Y))*->true ;
    (efbug(show_failure,eval_failed(Depth,Self,X,Y)*->true;X=Y))).

eval_60(Expander,RetType,Depth,Self,PredDecl,Res):-
  eval_61(Expander,RetType,Depth,Self,PredDecl,B),
  eval(Expander,RetType,Depth,Self,B,Res).

/*
eval_80(Expander,RetType,Depth,Self,[Op,Arg1|VI],Res):- is_list(Arg1),!,
 ((get_operator_typedef(Self,Op,[Type1|_Rest],Expander,RetType),
   \+ is_non_eval_kind(Type1),
       eval_00(Expander,RetType,Depth,Self,Arg1,Res1), Arg1\=@=Res1,  \+ arg_violation(Depth,Self,Res1,Type1),  set_type(Depth,Self,Res,Expander,RetType) )
     *-> eval_80(Expander,RetType,Depth,Self,[Op,Res1|VI],Res);
 eval_63(Expander,RetType,Depth,Self,[Op,Arg1|VI],Res)).

eval_80(Expander,RetType,Depth,Self,[Op,Arg1|VI],Res):-  fail, !,
    ((is_list(Arg1),eval_in_steps_some_change(Expander,RetType,Depth,Self,Arg1,Res1))
       *-> eval_63(Expander,RetType,Depth,Self,[Op,Res1|VI],Res)
       ;eval_63(Expander,RetType,Depth,Self,[Op,Arg1|VI],Res)).
*/


% =================================================================
% =================================================================
% =================================================================
%  USER DEFINED FUNCTIONS
% =================================================================
% =================================================================
% =================================================================

eval_61(Expander,_RetType,_Depth,Self,H,B):- \+ iz_conz(H), !,metta_defn(Self,H,B).
%eval_80(Expander,RetType,Depth,Self,[H|Args],B):- is_special_op(Self,H),!,eval_64(Expander,RetType,Depth,Self,H,B).
eval_61(Expander,RetType,Depth,Self,[AE|More],TF):-
  %adjust_args(Depth,Self,AE,More,Adjusted),!,
  More=Adjusted,
 eval_64(Expander,RetType,Depth,Self,[AE|Adjusted],TF).

%eval_80(Expander,RetType,Depth,Self,[Equals,X,Y],E):-Equals=='=',!, eval(Expander,RetType,Depth,Self,['==',Y,X],E).

%eval_63(Expander,RetType,Depth,Self,H,B):-
 %( no_repeats(H+B,eval_64(Expander,RetType,Depth,Self,H,B))*->true;eval_67(Expander,RetType,Depth,Self,H,B)).
%eval_63(Expander,RetType,Depth,Self,H,B):-
 % ( (eval_64(Expander,RetType,Depth,Self,H,B))*->true;eval_67(Expander,RetType,Depth,Self,H,B)).

eval_64(Expander,_RetType,_Depth,Self,[H|Args],B):- % no weird template matchers
   forall(metta_defn(Self,[H|Template],_),maplist(not_template_arg,Template)),!,
    metta_defn(Self,[H|Args],B).
% Use the first template match
eval_64(Expander,_RetType,_Depth,Self,[H|Args],B):-
    metta_defn(Self,[H|Template],B),
    Args=Template,!.

not_template_arg(TArg):- var(TArg), !, \+ attvar(TArg).
not_template_arg(TArg):- atomic(TArg),!.
%not_template_arg(TArg):- is_list(TArg),!,fail.

/*
eval_66(Expander,_RetType,Depth,Self,[H|Start],B):- !,
   maplist(eval(Depth,Self),Start,NewStart),
   metta_defn(Self,[H|NewStart],B).

eval_67(Expander,RetType,Depth,Self,[[H|Start]|T1],Y):-
   mnotrace((
      nonvar(H),
      % is_user_defined_head_f(Self,H),
       is_list(Start))),
   maplist(eval(Depth,Self),Start,NewStart),
   metta_defn(Self,[H|NewStart],Left),
   eval(Expander,RetType,Depth,Self,[Left|T1],Y).


*/
   /*FAILS
% Has subterm to eval
eval_67(Expander,RetType,Depth,Self,[F|PredDecl],Res):- !, fail,
   Depth>1,
   quietly(sub_sterm1(SSub,PredDecl)),
   mnotrace((ground(SSub),SSub=[_|Sub], is_list(Sub),maplist(atomic,SSub))),
   eval(Expander,RetType,Depth,Self,SSub,Repl),
   mnotrace((SSub\=Repl,subst(PredDecl,SSub,Repl,Temp))),
   eval_80(Expander,RetType,Depth,Self,[F|Temp],Res).

%eval_67(Expander,RetType,Depth,Self,X,Y):- (eval_68(Expander,RetType,Depth,Self,X,Y)*->true;metta_atom_iter(Depth,Self,[=,X,Y])).

eval_67(Expander,RetType,Depth,Self,PredDecl,Res):- fail,
 ((term_variables(PredDecl,Vars),
  (metta_atom(Self,PredDecl) *-> (Vars ==[]->Res='True';Vars=Res);
   (eval(Expander,RetType,Depth,Self,PredDecl,Res),ignore(Vars ==[]->Res='True';Vars=Res))))),
 PredDecl\=@=Res.

%eval_68(Expander,_RetType,_Dpth,Self,[H|_],_):- mnotrace( \+ is_user_defined_head_f(Self,H) ), !,fail.
eval_68(Expander,_RetType,_Dpth,Self,[H|T1],Y):- metta_defn(Self,[H|T1],Y).
%eval_68(Expander,RetType,_Dpth,Self,[H|T1],'True'):- metta_atom(Self,[H|T1]).
%val_args68(Expander,RetType,_Dpth,Self,CALL,Y):- fail,append(Left,[Y],CALL),metta_defn(Self,Left,Y).



%eval_6(Expander,RetType,Depth,Self,['ift',CR,Then],RO):- fail, !, %fail, % trace,
%   metta_defn(Self,['ift',R,Then],Become),eval(Expander,RetType,Depth,Self,CR,R),eval(Expander,RetType,Depth,Self,Then,_True),eval(Expander,RetType,Depth,Self,Become,RO).
*/


/*
eval_80(Expander,RetType,Depth,Self,X,Y):-
  (efbug(show_success,eval_80(Expander,RetType,Depth,Self,X,Y))*->true ;
    (efbug(show_failure,eval_failed(Depth,Self,X,Y)*->true;X=Y))).

*/



%not_compound(Term):- \+ is_list(Term),!.
%eval_80(Expander,RetType,Depth,Self,Term,Res):- maplist(not_compound,Term),!,eval_645(Expander,RetType,Depth,Self,Term,Res).

%eval_80(Expander,RetType,Depth,Self,[X1|[F2|X2]],[Y1|Y2]):- is_function(F2),!,eval(Expander,RetType,Depth,Self,[F2|X2],Y2),eval(Expander,RetType,Depth,Self,X1,Y1).

% =================================================================
% =================================================================
% =================================================================
%  AGREGATES
% =================================================================
% =================================================================
% =================================================================

cwdl(DL,Goal):- call_with_depth_limit(Goal,DL,R), (R==depth_limit_exceeded->(!,fail);true).
findall_eval_(Depth,Self,X,L):- !,   findall(E,eval_ne(Expander,_RetType,Depth,Self,X,E),L).

bagof_eval_(_Dpth,_Slf,X,L):- typed_list(X,_Type,L),!.
bagof_eval_(Depth,Self,X,L):- !,bagof_or_nil(E,eval_ne(Expander,_RetType,Depth,Self,X,E),L).
setof_eval_(Depth,Self,X,S):- !,bagof_eval_(Depth,Self,X,L),sort(L,S).
%setof_eval_(Depth,Self,X,S):- setof(E,eval(Expander,RetType,Depth,Self,X,E),S)*->true;S=[].
bagof_or_nil(T,G,L):- findall(T,G,L).
%bagof_or_nil(T,G,L):- bagof(T,G,L)*->true;L=[].


























