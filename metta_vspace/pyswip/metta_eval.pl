%
% post match modew
%:- style_check(-singleton).

self_eval0(X):- \+ callable(X),!.
self_eval0(X):- is_valid_nb_state(X),!.
%self_eval0(X):- string(X),!.
%self_eval0(X):- number(X),!.
%self_eval0([]).
self_eval0(X):- is_metta_declaration(X),!.
self_eval0(X):- is_list(X),!,fail.
self_eval0(X):- typed_list(X,_,_),!.
%self_eval0(X):- compound(X),!.
%self_eval0(X):- is_ref(X),!,fail.
self_eval0('True'). self_eval0('False'). % self_eval0('F').
self_eval0('Empty').
self_eval0(X):- atom(X),!, \+ nb_current(X,_),!.

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




eval_args(X,Y):- current_self(Space),
  rtrace_on_existence_error(eval(100,Space,X,Y)).
eval_args(Depth,Self,X,Y):- locally(set_prolog_flag(gc,false),rtrace_on_existence_error(eval(Depth,Self,X,Y))).
eval_args(Eq,RetType,Depth,Self,X,Y):-
   locally(set_prolog_flag(gc,true),
      rtrace_on_existence_error(
     eval(Eq,RetType,Depth,Self,X,Y))).

%eval(Eq,RetType,Depth,_Self,X,_Y):- forall(between(6,Depth,_),write(' ')),writeqln(eval(Eq,RetType,X)),fail.
eval(Depth,Self,X,Y):- eval('=',_RetType,Depth,Self,X,Y).

%eval(Eq,RetType,_Dpth,_Slf,X,Y):- nonvar(Y),X=Y,!.

eval(Eq,RetType,Depth,Self,X,Y):- nonvar(Y),!,
   get_type(Depth,Self,Y,RetType), !,
   eval(Eq,RetType,Depth,Self,X,XX),evals_to(XX,Y).

eval(_Eq,_RetType,_Dpth,_Slf,X,Y):- var(X),!,Y=X.

eval(Eq,RetType,_Dpth,_Slf,[X|T],Y):- T==[], number(X),!, do_expander(Eq,RetType,X,YY),Y=[YY].

/*
eval(Eq,RetType,Depth,Self,[F|X],Y):-
  (F=='superpose' ; ( option_value(no_repeats,false))),
  notrace((D1 is Depth-1)),!,
  eval_11(Eq,RetType,D1,Self,[F|X],Y).
*/

eval(Eq,RetType,Depth,Self,X,Y):- atom(Eq),  ( Eq \== ('=')) ,!,
   call(Eq,'=',RetType,Depth,Self,X,Y).

eval(Eq,RetType,Depth,Self,X,Y):-
  %notrace(allow_repeats_eval_(X)),
  !,
  eval_11(Eq,RetType,Depth,Self,X,Y).
eval(Eq,RetType,Depth,Self,X,Y):-
  nop(notrace((no_repeats_var(YY)),
  D1 is Depth-1)),!,
  eval_11(Eq,RetType,D1,Self,X,Y),
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
if_trace((Flag;true),Goal):- !, notrace(( catch_err(ignore((Goal)),E,wdmsg(E-->if_trace((Flag;true),Goal))))).
if_trace(Flag,Goal):- notrace((catch_err(ignore((is_debugging(Flag),Goal)),E,wdmsg(E-->if_trace(Flag,Goal))))).


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


eval_99(Eq,RetType,Depth,Self,X,Y):-
  eval_20(Eq,RetType,Depth,Self,X,Y)*->true;eval_failed(Depth,Self,X,Y).



eval_00(_Eq,_RetType,Depth,_Slf,X,Y):- Depth<1,!,X=Y, (\+ trace_on_overflow-> true; flag(eval_num,_,0),debug(metta(eval))).
eval_00(_Eq,_RetType,_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X.
eval_00(Eq,RetType,Depth,Self,X,YO):-
  Depth2 is Depth-1,
  copy_term(X, XX),
  eval_20(Eq,RetType,Depth,Self,X,M),
  ((M\=@=XX,  \+ self_eval(M))->
      eval_00(Eq,RetType,Depth2,Self,M,Y);Y=M),
  once(if_or_else(subst_args(Eq,RetType,Depth2,Self,Y,YO),
     if_or_else(finish_eval(Depth2,Self,Y,YO),
          Y=YO))).



eval_11(_Eq,_RetType,_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X.
eval_11(Eq,RetType,Depth,Self,X,Y):- \+ is_debugging((eval)),!,
  D1 is Depth-1,
  eval_00(Eq,RetType,D1,Self,X,Y).
eval_11(Eq,RetType,Depth,Self,X,Y):-
 notrace((

  flag(eval_num,EX,EX+1),
  D1 is Depth-1,
  DR is 99-D1,
  PrintRet = _,
  option_else('trace-length',Max,100),
  if_t((EX>Max), (set_debug(eval,false),MaxP1 is Max+1, set_debug(overflow,false),
      format('; Switched off tracing. For a longer trace: !(pragma! trace-length ~w)',[MaxP1]))),
  nop(notrace(no_repeats_var(YY))),

  if_t(DR<10,if_trace((eval),(PrintRet=1, indentq(Depth,'-->'(EX,eval(Self,X,'$VAR'('RET')),depth(DR)))))),
  Ret=retval(fail))),

  call_cleanup((
    dcall(eval_00(Eq,RetType,D1,Self,X,Y)),
    notrace(( \+ (Y\=YY), nb_setarg(1,Ret,Y)))),

    (PrintRet==1 -> indentq(Depth,'<--'(EX,Ret)) ;
    mnotrace(ignore(((Y\=@=X,
      if_t(DR<10,if_trace((eval),indentq(Depth,'<--'(EX,Ret)))))))))),

  (Ret\=@=retval(fail)->true;(rtrace(eval_00(Eq,RetType,D1,Self,X,Y)),fail)).



eval_15(Eq,RetType,Depth,Self,X,Y):- !,
  eval_20(Eq,RetType,Depth,Self,X,Y).

eval_15(Eq,RetType,Depth,Self,X,Y):-
  ((eval_20(Eq,RetType,Depth,Self,X,Y),
   if_t(var(Y),dmsg((eval_20(Eq,RetType,Depth,Self,X,Y),var(Y)))),
   nonvar(Y))*->true;(eval_failed(Depth,Self,X,Y),fail)).













:- discontiguous eval_20/6.
:- discontiguous eval_40/6.
%:- discontiguous eval_30fz/5.
%:- discontiguous eval_31/5.
%:- discontiguous eval_60/5.

eval_20(Eq,RetType,_Dpth,_Slf,Name,Y):-
    atom(Name), !,
      (nb_current(Name,X)->do_expander(Eq,RetType,X,Y);
       Y = Name).


eval_20(Eq,RetType,_Dpth,_Slf,X,Y):- self_eval(X),!,do_expander(Eq,RetType,X,Y).

% =================================================================
% =================================================================
% =================================================================
%  VAR HEADS/ NON-LISTS
% =================================================================
% =================================================================
% =================================================================

eval_20(Eq,RetType,_Dpth,_Slf,[X|T],Y):- T==[], \+ callable(X),!, do_expander(Eq,RetType,X,YY),Y=[YY].
%eval_20(Eq,RetType,_Dpth,Self,[X|T],Y):- T==[],  atom(X),
%   \+ is_user_defined_head_f(Self,X),
%   do_expander(Eq,RetType,X,YY),!,Y=[YY].

eval_20(Eq,RetType,Depth,Self,X,Y):- atom(Eq),  ( Eq \== ('=')) ,!,
   call(Eq,'=',RetType,Depth,Self,X,Y).


eval_20(Eq,RetType,Depth,Self,[V|VI],VVO):-  \+ is_list(VI),!,
 eval(Eq,RetType,Depth,Self,VI,VM),
  ( VM\==VI -> eval(Eq,RetType,Depth,Self,[V|VM],VVO) ;
    (eval(Eq,RetType,Depth,Self,V,VV), (V\==VV -> eval(Eq,RetType,Depth,Self,[VV|VI],VVO) ; VVO = [V|VI]))).

eval_20(Eq,RetType,_Dpth,_Slf,X,Y):- \+ is_list(X),!,do_expander(Eq,RetType,X,Y).

eval_20(Eq,_RetType,Depth,Self,[V|VI],[V|VO]):- var(V),is_list(VI),!,maplist(eval(Eq,_ArgRetType,Depth,Self),VI,VO).


% =================================================================
% =================================================================
% =================================================================
%  TRACE/PRINT
% =================================================================
% =================================================================
% =================================================================

eval_20(Eq,RetType,_Dpth,_Slf,['repl!'],Y):- !,  repl,check_returnval(Eq,RetType,Y).
eval_20(Eq,RetType,Depth,Self,['!',Cond],Res):- !, call(eval(Eq,RetType,Depth,Self,Cond,Res)).
eval_20(Eq,RetType,Depth,Self,['rtrace!',Cond],Res):- !, rtrace(eval(Eq,RetType,Depth,Self,Cond,Res)).
eval_20(Eq,RetType,Depth,Self,['trace',Cond],Res):- !, with_debug(eval,eval(Eq,RetType,Depth,Self,Cond,Res)).
eval_20(Eq,RetType,Depth,Self,['time',Cond],Res):- !, time_eval(eval(Cond),eval(Eq,RetType,Depth,Self,Cond,Res)).
eval_20(Eq,RetType,Depth,Self,['print',Cond],Res):- !, eval(Eq,RetType,Depth,Self,Cond,Res),format('~N'),print(Res),format('~N').
% !(println! $1)
eval_20(Eq,RetType,Depth,Self,['println!'|Cond],Res):- !, maplist(eval(Eq,RetType,Depth,Self),Cond,[Res|Out]),
   format('~N'),maplist(write_src,[Res|Out]),format('~N').
eval_20(Eq,RetType,Depth,Self,['trace!',A|Cond],Res):- !, maplist(eval(Eq,RetType,Depth,Self),[A|Cond],[AA|Result]),
   last(Result,Res), format('~N'),maplist(write_src,[AA]),format('~N').

%eval_20(Eq,RetType,Depth,Self,['trace!',A,B],C):- !,eval(Eq,RetType,Depth,Self,B,C),format('~N'),wdmsg(['trace!',A,B]=C),format('~N').
%eval_20(Eq,RetType,_Dpth,_Slf,['trace!',A],A):- !, format('~N'),wdmsg(A),format('~N').

eval_20(Eq,RetType,_Dpth,_Slf,List,YY):- is_list(List),maplist(self_eval,List),List=[H|_], \+ atom(H), !,Y=List,do_expander(Eq,RetType,Y,YY).

eval_20(Eq,_ListOfRetType,Depth,Self,['TupleConcat',A,B],OO):- fail, !,
    eval(Eq,RetType,Depth,Self,A,AA),
    eval(Eq,RetType,Depth,Self,B,BB),
    append(AA,BB,OO).
eval_20(Eq,OuterRetType,Depth,Self,['range',A,B],OO):- (is_list(A);is_list(B)),
  ((eval(Eq,RetType,Depth,Self,A,AA),
    eval(Eq,RetType,Depth,Self,B,BB))),
    ((AA+BB)\=@=(A+B)),
    eval_20(Eq,OuterRetType,Depth,Self,['range',AA,BB],OO),!.


%eval_20(Eq,RetType,Depth,Self,['colapse'|List], Flat):- !, maplist(eval(Eq,RetType,Depth,Self),List,Res),flatten(Res,Flat).




% =================================================================
% =================================================================
% =================================================================
%  UNIT TESTING/assert<STAR>
% =================================================================
% =================================================================
% =================================================================


eval_20(Eq,RetType,Depth,Self,['assertTrue', X],TF):- !, eval(Eq,RetType,Depth,Self,['assertEqual',X,'True'],TF).
eval_20(Eq,RetType,Depth,Self,['assertFalse',X],TF):- !, eval(Eq,RetType,Depth,Self,['assertEqual',X,'False'],TF).

eval_20(Eq,RetType,Depth,Self,['assertEqual',X,Y],RetVal):- !,
   loonit_assert_source_tf(
        ['assertEqual',X,Y],
        (bagof_eval(Eq,RetType,Depth,Self,X,XX), bagof_eval(Eq,RetType,Depth,Self,Y,YY)),
         equal_enough_for_test(XX,YY), TF),
  (TF=='True'->return_empty(RetVal);RetVal=[got,XX,[expected(_)],YY]).

eval_20(Eq,RetType,Depth,Self,['assertNotEqual',X,Y],RetVal):- !,
   loonit_assert_source_tf(
        ['assertEqual',X,Y],
        (bagof_eval(Eq,RetType,Depth,Self,X,XX), bagof_eval(Eq,RetType,Depth,Self,Y,YY)),
         \+ equal_enough(XX,YY), TF),
  (TF=='True'->return_empty(RetVal);RetVal=[got,XX,expected,YY]).

eval_20(Eq,RetType,Depth,Self,['assertEqualToResult',X,Y],RetVal):- !,
   loonit_assert_source_tf(
        ['assertEqualToResult',X,Y],
        (bagof_eval(Eq,RetType,Depth,Self,X,XX), sort(Y,YY)),
         equal_enough_for_test(XX,YY), TF),
  (TF=='True'->return_empty(RetVal);RetVal=[got,XX,expected,YY]).


loonit_assert_source_tf(Src,Goal,Check,TF):-
   copy_term(Goal,OrigGoal),
   loonit_asserts(Src, time_eval('\n; EVAL TEST\n;',Goal), Check),
   as_tf(Check,TF),!,
  ignore((
          once((TF='True', trace_on_pass);(TF='False', trace_on_fail)),
     with_debug(metta(eval),time_eval('Trace',OrigGoal)))).

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
has_let_star(Y):- sub_var('let*',Y).

equal_enough_for_test(X,Y):- is_empty(X),!,is_empty(Y).
equal_enough_for_test(X,Y):- has_let_star(Y),!,\+ is_empty(X).
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

% =================================================================
% =================================================================
% =================================================================
%  SPACE EDITING
% =================================================================
% =================================================================
% =================================================================
% do_metta(_Who,What,Where,PredDecl,_TF):-   do_metta(Where,What, PredDecl).
/*
eval_20(Eq,RetType,_Dpth,Self,['add-atom',Other,PredDecl],TF):- !, into_space(Self,Other,Space), as_tf(do_metta(Space,load,PredDecl),TF).
eval_20(Eq,RetType,_Dpth,Self,['remove-atom',Other,PredDecl],TF):- !, into_space(Self,Other,Space), as_tf(do_metta(Space,unload,PredDecl),TF).
eval_20(Eq,RetType,_Dpth,Self,['atom-count',Other],Count):- !, into_space(Self,Other,Space), findall(_,metta_defn(Eq,Other,_,_),L1),length(L1,C1),findall(_,get_metta_atom(Eq,Space,_),L2),length(L2,C2),Count is C1+C2.
eval_20(Eq,RetType,_Dpth,Self,['atom-replace',Other,Rem,Add],TF):- !, into_space(Self,Other,Space), copy_term(Rem,RCopy),
  as_tf((metta_atom_iter_ref(Space,RCopy,Ref), RCopy=@=Rem,erase(Ref), do_metta(Other,load,Add)),TF).
*/
eval_20(Eq,RetType,Depth,Self,[Op,Space|Args],Res):- is_space_op(Op),!,
  eval_space_start(Eq,RetType,Depth,Self,[Op,Space|Args],Res).


eval_space_start(Eq,RetType,_Depth,_Self,[_Op,_Other,Atom],Res):-
  (Atom == [] ;  Atom =='Empty';  Atom =='Nil'),!,return_empty('False',Res),check_returnval(Eq,RetType,Res).

eval_space_start(Eq,RetType,Depth,Self,[Op,Other|Args],Res):-
  into_space(Depth,Self,Other,Space),
  eval_space(Eq,RetType,Depth,Self,[Op,Space|Args],Res).


eval_space(Eq,RetType,_Dpth,_Slf,['add-atom',Space,PredDecl],Res):- !,
   do_metta(python,load,Space,PredDecl,TF),return_empty(TF,Res),check_returnval(Eq,RetType,Res).

eval_space(Eq,RetType,_Dpth,_Slf,['remove-atom',Space,PredDecl],Res):- !,
   do_metta(python,unload,Space,PredDecl,TF),return_empty(TF,Res),check_returnval(Eq,RetType,Res).

eval_space(Eq,RetType,_Dpth,_Slf,['atom-count',Space],Count):- !,
    ignore(RetType='Number'),ignore(Eq='='),
    findall(Atom, get_metta_atom_from(Space, Atom),Atoms),
    length(Atoms,Count).

eval_space(Eq,RetType,_Dpth,_Slf,['atom-replace',Space,Rem,Add],TF):- !,
   copy_term(Rem,RCopy), as_tf((metta_atom_iter_ref(Space,RCopy,Ref), RCopy=@=Rem,erase(Ref), do_metta(Space,load,Add)),TF),
 check_returnval(Eq,RetType,TF).

eval_space(Eq,RetType,_Dpth,_Slf,['get-atoms',Space],Atom):- !,
  ignore(RetType='Atom'), get_metta_atom_from(Space, Atom), check_returnval(Eq,RetType,Atom).

/*
get_atoms(_Dpth,_Slf,Other,Atom):- Other=='&self',!,get_metta_atom_from(Other, Atom).
% get_atoms_fail(Depth,Self,Other,Atom):- fail, is_asserted_space(Other),!, get_metta_atom(Eq,Other,Atom).
get_atoms(Depth,Self,Other,AtomO):-
  into_space(Depth,Self,Other,Space),
  once((space_to_Space(Depth,Self,Space,SpaceC),
  into_listoid(SpaceC,AtomsL))),
  %no_repeat_var(NRAtom),
  dcall((member(Atom,AtomsL),
  %Atom = NRAtom,
  AtomO=Atom)).

space_to_Space(_Dpth,_Slf,Space,SpaceC):- compound(Space),functor(Space,_,1),arg(1,Space,L),is_list(L),!,SpaceC=Space.
space_to_Space(_Dpth,_Slf,Space,SpaceC):- findall(Atom, get_metta_atom_from(Space, Atom),Atoms),
   SpaceC = 'hyperon::space::DynSpace'(Atoms).
*/

%eval_space(Eq,RetType,Depth,Self,['match',Other,Goal,Template],Template):- into_space(Self,Other,Space),!, metta_atom_iter(Eq,Depth,Space,Goal).
%eval_space(Eq,RetType,Depth,Self,['match',Other,Goal,Template,Else],Template):- into_space(Self,Other,Space),!,  (metta_atom_iter(Eq,Depth,Space,Goal)*->true;Else=Template).

% Match-ELSE
eval_space(Eq,RetType,Depth,Self,['match',Other,Goal,Template,Else],Template):- !,
  ((eval_space(Eq,RetType,Depth,Self,['match',Other,Goal,Template],Template),
       \+ return_empty([],Template))*->true;Template=Else).
% Match-TEMPLATE

eval_space(Eq,RetType,Depth,Self,['match',Other,Goal,Template],Res):- !,
   metta_atom_iter(Eq,Depth,Self,Other,Goal),
   Template=Res.
    %finish_eval(Eq,RetType,Depth,Self,Template,Res).
/*
  dcall(( % copy_term(Goal+Template,CGoal+CTemplate),
  catch_err(try_match(Eq,RetType,Depth,Self,Other,Goal),E,
   ((wdmsg(catch_err(try_match(Eq,RetType,Depth,Self,Other,Goal))=E)),
     rtrace(try_match(Eq,RetType,Depth,Self,Other,Goal)))))),
  %print(Template),
    finish_eval(Eq,RetType,Depth,Self,Template,Res).

try_match(Eq,RetType,Depth,Self,Space,Goal):- !,
 % into_space(Depth,Self,Other,Space),
  metta_atom_iter(Eq,Depth,Self,Space,Goal).

%try_match(Depth,Self,Other,Goal,_Template):- get_atoms(Depth,Self,Other,Goal). % Template=Res.
metta_atom_iter(Eq,Depth,Other,Goal):-
   current_self(Self),
   metta_atom_iter(Eq,Depth,Self,Other,Goal).

metta_atom_iter_fail(Depth,_Slf,Other,[Equal,[F|H],B]):- fail, '=' == Equal,!,  % trace,
   dcall(metta_defn(Eq,Other,[F|HH],BB)),
   once(eval_until_unify(Eq,RetType,Depth,Other,H,HH)),
   once(eval_until_unify(Eq,RetType,Depth,Other,B,BB)).
*/

metta_atom_iter(Eq,_Depth,_Slf,Other,[Equal,[F|H],B]):- Eq == Equal,!,  % trace,
   (metta_defn(Eq,Other,[F|H],B)). % once(eval_until_unify(Eq,RetType,Depth,Other,H,HH)).

%metta_atom_iter(Eq,Depth,_Slf,Other,[Equal,[F|H],B]):- '=' == Equal,!,  % trace,
 %  dcall(metta_defn(Eq,Other,[F|HH],B)), once(eval_until_unify(Eq,RetType,Depth,Other,H,HH)).

metta_atom_iter(_Eq,Depth,_,_,_):- Depth<3,!,fail.
% And
metta_atom_iter(Eq,Depth,Self,Other,[And|Y]):- atom(And), is_and(And),!,
  (Y==[] -> true ;  ( D2 is Depth -1, Y = [H|T], metta_atom_iter(Eq,D2,Self,Other,H),metta_atom_iter(Eq,D2,Self,Other,[And|T]))).

metta_atom_iter(Eq,_Dpth,_Slf,Other,H):- get_metta_atom(Eq,Other,H).

% is this OK?
metta_atom_iter(Eq,Depth,Self,Other,H):- metta_defn(Eq,Other,H,B), D2 is Depth -1, metta_atom_iter(Eq,D2,Self,Other,B).
%metta_atom_iter_l2(Depth,Self,Other,H):- metta_atom_iter(Eq,Depth,Self,Other,H).
%$metta_atom_iter(Eq,_Dpth,_Slf,[]):-!.

eval_20(Eq,RetType,_Dpth,_Slf,['new-space'],Space):- !, 'new-space'(Space),check_returnval(Eq,RetType,Space).


/*

metta_atom_iter(Eq,_Dpth,Other,[Equal,H,B]):- '=' == Equal,!,
  (metta_defn(Eq,Other,H,B)*->true;(get_metta_atom(Eq,Other,H),B='True')).

metta_atom_iter(Eq,Depth,_,_):- Depth<3,!,fail.
metta_atom_iter(Eq,_Dpth,_Slf,[]):-!.
metta_atom_iter(Eq,_Dpth,Other,H):- get_metta_atom(Eq,Other,H).
metta_atom_iter(Eq,Depth,Other,H):- D2 is Depth -1, metta_defn(Eq,Other,H,B),metta_atom_iter(Eq,D2,Other,B).
metta_atom_iter(Eq,_Dpth,_Slf,[And]):- is_and(And),!.
metta_atom_iter(Eq,Depth,Self,[And,X|Y]):- is_and(And),!,D2 is Depth -1, metta_atom_iter(Eq,D2,Self,X),metta_atom_iter(Eq,D2,Self,[And|Y]).
*/
/*
metta_atom_iter2(_,Self,[=,X,Y]):- metta_defn(Eq,Self,X,Y).
metta_atom_iter2(_Dpth,Other,[Equal,H,B]):- '=' == Equal,!, metta_defn(Eq,Other,H,B).
metta_atom_iter2(_Dpth,Self,X,Y):- metta_defn(Eq,Self,X,Y). %, Y\=='True'.
metta_atom_iter2(_Dpth,Self,X,Y):- get_metta_atom(Eq,Self,[=,X,Y]). %, Y\=='True'.
*/
%metta_atom_iter_ref(Other,[Eq,H,B],Ref):-clause(metta_defn(Eq,Other,H,B),true,Ref).
metta_atom_iter_ref(Other,H,Ref):-clause(asserted_metta_atom(Other,H),true,Ref).


% =================================================================
% =================================================================
% =================================================================
%  CASE/SWITCH
% =================================================================
% =================================================================
% =================================================================
% Macro: case
:- nodebug(metta(case)).
/*
!(assertEqualToResult
  (case
    (Link $X B)
    ( ( (g $Y)
        (Link $X $Y)))) ())
*/
/*
eval_20(Eq,RetType,Depth,Self,['case',A,CL],Value):- !,
((eval(Depth,Self,A,AA),
  if_trace((case),(writeqln('switch'(A)=AA))),
  eval_case_result(Eq,RetType,Depth,Self,A,AA,CL,Value))*->true;
Value=found_none).

eval_case_result(Eq,RetType,Depth,Self,A,AA,CL,Value):-
    must_det_ll(into_case_list(1,CL,KVs)),
    select_switch(Depth,Self,AA,KVs,Match,Value),
    if_trace((case),(writeqln('matched'=Match))),
    if_trace((case),(writeqln('result'=Value))),
   check_returnval(Value,Eq,RetType).
eval_case_result(Eq,RetType,Depth,Self,A,AA,CL,Value):-
        select(['%void%',_],CL,Rest), Rest == [],!, Value =[].
eval_case_result(Eq,RetType,Depth,Self,A,AA,CL,Value):-
        select(['%void%',Value],CL,Rest),!.


select_switch(Depth,_Self,_A,_Cases,_Match,_Value):- Depth<1,!,fail.
select_switch(Depth,Self,A,Cases,Match,Value):-
  Depth2 is Depth -1,
  ((if_trace((case),(writeqln('select-1'=A))),select_case(Depth2,Self,A,Cases,Match,Value))*->true;
    ((eval_complete_change(Eq,_RetType,Depth2,Self,A,AA),if_trace((case),(writeqln('select-2'=AA))),
     select_switch(Depth2,Self, AA,Cases,Match,Value))*->true;
                    (best_key('%void%',Cases,Match,Value)))).

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

   %maybe_special_keys(Depth,Self,[K-V|KVI],[AK-V|KVO]):- fail,eval(Eq,RetType,Depth,Self,K,AK), K\=@=AK,!, maybe_special_keys(Depth,Self,KVI,KVO).
   maybe_special_keys(Depth,Self,[_|KVI],KVO):-
     fail, maybe_special_keys(Depth,Self,KVI,KVO).
   maybe_special_keys(_Depth,_Self,[],[]).

*/

% if there is only a void then always return nothing for each Case
eval_20(Eq,_RetType,Depth,Self,['case',A,[[Void,_]]],Res):-
   '%void%' == Void,
   eval(Eq,_UnkRetType,Depth,Self,A,_),!,Res =[].

% if there is nothing for case just treat like a collapse
eval_20(Eq,_RetType,Depth,Self,['case',A,[]],Empty):-
  %forall(eval(Eq,_RetType2,Depth,Self,Expr,_),true),
  once(eval(Eq,_RetType2,Depth,Self,A,_)),
  return_empty([],Empty).

% Macro: case
eval_20(Eq,RetType,Depth,Self,['case',A,CL|T],Res):-
   must_det_ll(T==[]),
   into_case_list(CL,CASES),
   findall(Key-Value,
     (nth0(Nth,CASES,Case0),
       (is_case(Key,Case0,Value),
        if_trace(metta(case),(format('~N'),writeqln(c(Nth,Key)=Value))))),KVs),!,
   eval_case(Eq,RetType,Depth,Self,A,KVs,Res).

eval_case(Eq,CaseRetType,Depth,Self,A,KVs,Res):-
   ((eval(Eq,_UnkRetType,Depth,Self,A,AA),
         if_trace((case),(writeqln('case'=A))),
         if_trace(metta(case),writeqln('switch'=AA)),
    (select_case(Depth,Self,AA,KVs,Value)->true;(member(Void -Value,KVs),Void=='%void%')))
     *->true;(member(Void -Value,KVs),Void=='%void%')),
    eval(Eq,CaseRetType,Depth,Self,Value,Res).

  select_case(Depth,Self,AA,Cases,Value):-
     (best_key(AA,Cases,Value) -> true ;
      (maybe_special_keys(Depth,Self,Cases,CasES),
       (best_key(AA,CasES,Value) -> true ;
        (member(Void -Value,CasES),Void=='%void%')))).

  best_key(AA,Cases,Value):-
     ((member(Match-Value,Cases),AA ==Match)->true;
      ((member(Match-Value,Cases),AA=@=Match)->true;
        (member(Match-Value,Cases),AA = Match))).

		%into_case_list([[C|ASES0]],CASES):-  is_list(C),!, into_case_list([C|ASES0],CASES),!.
	into_case_list(CASES,CASES):- is_list(CASES),!.
		is_case(AA,[AA,Value],Value):-!.
		is_case(AA,[AA|Value],Value).

   maybe_special_keys(Depth,Self,[K-V|KVI],[AK-V|KVO]):-
     eval(Depth,Self,K,AK), K\=@=AK,!,
     maybe_special_keys(Depth,Self,KVI,KVO).
   maybe_special_keys(Depth,Self,[_|KVI],KVO):-
     maybe_special_keys(Depth,Self,KVI,KVO).
   maybe_special_keys(_Depth,_Self,[],[]).


% =================================================================
% =================================================================
% =================================================================
%  COLLAPSE/SUPERPOSE
% =================================================================
% =================================================================
% =================================================================



%[collapse,[1,2,3]]
eval_20(Eq,RetType,Depth,Self,['collapse',List],Res):-!,
 bagof_eval(Eq,RetType,Depth,Self,List,Res).

eval_20(Eq,RetType,Depth,Self,PredDecl,Res):-
  Do_more_defs = do_more_defs(true),
  clause(eval_21(Eq,RetType,Depth,Self,PredDecl,Res),Body),
  Do_more_defs == do_more_defs(true),
  call_ndet(Body,DET),
  nb_setarg(1,Do_more_defs,false),
 (DET==true -> ! ; true).


eval_21(Eq,RetType,Depth,Self,['CollapseCardinality',List],Len):-!,
 bagof_eval(Eq,RetType,Depth,Self,List,Res),
 length(Res,Len).
/*
eval_21(_Eq,_RetType,_Depth,_Self,['TupleCount', [N]],N):- number(N),!.


eval_21(Eq,RetType,Depth,Self,['TupleCount',List],Len):-!,
 bagof_eval(Eq,RetType,Depth,Self,List,Res),
 length(Res,Len).
*/

%[superpose,[1,2,3]]
eval_20(Eq,RetType,Depth,Self,['superpose',List],Res):- !,
  (((is_user_defined_head(Eq,Self,List) ,eval(Eq,RetType,Depth,Self,List,UList), List\=@=UList)
    *->  eval_20(Eq,RetType,Depth,Self,['superpose',UList],Res)
       ; ((member(E,List),eval(Eq,RetType,Depth,Self,E,Res))*->true;return_empty([],Res)))),
  \+ Res = 'Empty'.

%[sequential,[1,2,3]]
eval_20(Eq,RetType,Depth,Self,['sequential',List],Res):- !,
  (((fail,is_user_defined_head(Eq,Self,List) ,eval(Eq,RetType,Depth,Self,List,UList), List\=@=UList)
    *->  eval_20(Eq,RetType,Depth,Self,['sequential',UList],Res)
       ; ((member(E,List),eval_ne(Eq,RetType,Depth,Self,E,Res))*->true;return_empty([],Res)))).


get_sa_p1(P3,E,Cmpd,SA):-  compound(Cmpd), get_sa_p2(P3,E,Cmpd,SA).
get_sa_p2(P3,E,Cmpd,call(P3,N1,Cmpd)):- arg(N1,Cmpd,E).
get_sa_p2(P3,E,Cmpd,SA):- arg(_,Cmpd,Arg),get_sa_p1(P3,E,Arg,SA).
eval20_failed(Eq,RetType,Depth,Self, Term, Res):-
  mnotrace(( get_sa_p1(setarg,ST,Term,P1), % ST\==Term,
   compound(ST), ST = [F,List],F=='superpose',nonvar(List), %maplist(atomic,List),
   call(P1,Var))), !,
   %max_counting(F,20),
   member(Var,List),
   eval(Eq,RetType,Depth,Self, Term, Res).


sub_sterm(Sub,Sub).
sub_sterm(Sub,Term):- sub_sterm1(Sub,Term).
sub_sterm1(_  ,List):- \+ compound(List),!,fail.
sub_sterm1(Sub,List):- is_list(List),!,member(SL,List),sub_sterm(Sub,SL).
sub_sterm1(_  ,[_|_]):-!,fail.
sub_sterm1(Sub,Term):- arg(_,Term,SL),sub_sterm(Sub,SL).
eval20_failed_2(Eq,RetType,Depth,Self, Term, Res):-
   mnotrace(( get_sa_p1(setarg,ST,Term,P1),
   compound(ST), ST = [F,List],F=='collapse',nonvar(List), %maplist(atomic,List),
   call(P1,Var))), !, bagof_eval(Eq,RetType,Depth,Self,List,Var),
   eval(Eq,RetType,Depth,Self, Term, Res).


% =================================================================
% =================================================================
% =================================================================
%  NOP/EQUALITU/DO
% =================================================================
% =================================================================
% ================================================================
eval_20(_Eq,_RetType,_Depth,_Self,['nop'],                 _ ):- !, fail.
eval_20(_Eq,_RetType1,Depth,Self,['nop',Expr], Empty):- !,
  ignore(eval('=',_RetType2,Depth,Self,Expr,_)),
  return_empty([], Empty).

eval_20(Eq,_RetType1,Depth,Self,['do',Expr], Empty):- !,
  forall(eval(Eq,_RetType2,Depth,Self,Expr,_),true),
  %eval_ne(Eq,_RetType2,Depth,Self,Expr,_),!,
  return_empty([],Empty).

max_counting(F,Max):- flag(F,X,X+1),  X<Max ->  true; (flag(F,_,10),!,fail).
% =================================================================
% =================================================================
% =================================================================
%  if/If
% =================================================================
% =================================================================
% =================================================================



eval_20(Eq,RetType,Depth,Self,['if',Cond,Then,Else],Res):- !,
   eval(Eq,'Bool',Depth,Self,Cond,TF),
   (is_True(TF)
     -> eval(Eq,RetType,Depth,Self,Then,Res)
     ;  eval(Eq,RetType,Depth,Self,Else,Res)).

eval_20(Eq,RetType,Depth,Self,['If',Cond,Then,Else],Res):- !,
   eval(Eq,'Bool',Depth,Self,Cond,TF),
   (is_True(TF)
     -> eval(Eq,RetType,Depth,Self,Then,Res)
     ;  eval(Eq,RetType,Depth,Self,Else,Res)).

eval_20(Eq,RetType,Depth,Self,['If',Cond,Then],Res):- !,
   eval(Eq,'Bool',Depth,Self,Cond,TF),
   (is_True(TF) -> eval(Eq,RetType,Depth,Self,Then,Res) ;
      (!, fail,Res = [],!)).

eval_20(Eq,RetType,Depth,Self,['if',Cond,Then],Res):- !,
   eval(Eq,'Bool',Depth,Self,Cond,TF),
   (is_True(TF) -> eval(Eq,RetType,Depth,Self,Then,Res) ;
      (!, fail,Res = [],!)).


eval_20(Eq,RetType,_Dpth,_Slf,[_,Nothing],NothingO):-
   'Nothing'==Nothing,!,do_expander(Eq,RetType,Nothing,NothingO).

% =================================================================
% =================================================================
% =================================================================
%  LET/LET*
% =================================================================
% =================================================================
% =================================================================



eval_until_unify(_Eq,_RetType,_Dpth,_Slf,X,X):- !.
eval_until_unify(Eq,RetType,Depth,Self,X,Y):- eval_until_eq(Eq,RetType,Depth,Self,X,Y).

eval_until_eq(Eq,RetType,_Dpth,_Slf,X,Y):-  X=Y,check_returnval(Eq,RetType,Y).
%eval_until_eq(Eq,RetType,Depth,Self,X,Y):- var(Y),!,eval_in_steps_or_same(Eq,RetType,Depth,Self,X,XX),Y=XX.
%eval_until_eq(Eq,RetType,Depth,Self,Y,X):- var(Y),!,eval_in_steps_or_same(Eq,RetType,Depth,Self,X,XX),Y=XX.
eval_until_eq(Eq,RetType,Depth,Self,X,Y):- \+is_list(Y),!,eval_in_steps_some_change(Eq,RetType,Depth,Self,X,XX),Y=XX.
eval_until_eq(Eq,RetType,Depth,Self,Y,X):- \+is_list(Y),!,eval_in_steps_some_change(Eq,RetType,Depth,Self,X,XX),Y=XX.
eval_until_eq(Eq,RetType,Depth,Self,X,Y):- eval_in_steps_some_change(Eq,RetType,Depth,Self,X,XX),eval_until_eq(Eq,RetType,Depth,Self,Y,XX).
eval_until_eq(_Eq,_RetType,_Dpth,_Slf,X,Y):- length(X,Len), \+ length(Y,Len),!,fail.
eval_until_eq(Eq,RetType,Depth,Self,X,Y):-  nth1(N,X,EX,RX), nth1(N,Y,EY,RY),
  EX=EY,!, maplist(eval_until_eq(Eq,RetType,Depth,Self),RX,RY).
eval_until_eq(Eq,RetType,Depth,Self,X,Y):-  nth1(N,X,EX,RX), nth1(N,Y,EY,RY),
  ((var(EX);var(EY)),eval_until_eq(Eq,RetType,Depth,Self,EX,EY)),
  maplist(eval_until_eq(Eq,RetType,Depth,Self),RX,RY).
eval_until_eq(Eq,RetType,Depth,Self,X,Y):-  nth1(N,X,EX,RX), nth1(N,Y,EY,RY),
  h((is_list(EX);is_list(EY)),eval_until_eq(Eq,RetType,Depth,Self,EX,EY)),
  maplist(eval_until_eq(Eq,RetType,Depth,Self),RX,RY).

 eval_1change(Eq,RetType,Depth,Self,EX,EXX):-
    eval_20(Eq,RetType,Depth,Self,EX,EXX),  EX \=@= EXX.

eval_complete_change(Eq,RetType,Depth,Self,EX,EXX):-
   eval(Eq,RetType,Depth,Self,EX,EXX),  EX \=@= EXX.

eval_in_steps_some_change(_Eq,_RetType,_Dpth,_Slf,EX,_):- \+ is_list(EX),!,fail.
eval_in_steps_some_change(Eq,RetType,Depth,Self,EX,EXX):- eval_1change(Eq,RetType,Depth,Self,EX,EXX).
eval_in_steps_some_change(Eq,RetType,Depth,Self,X,Y):- append(L,[EX|R],X),is_list(EX),
    eval_in_steps_some_change(Eq,RetType,Depth,Self,EX,EXX), EX\=@=EXX,
    append(L,[EXX|R],XX),eval_in_steps_or_same(Eq,RetType,Depth,Self,XX,Y).

eval_in_steps_or_same(Eq,RetType,Depth,Self,X,Y):-eval_in_steps_some_change(Eq,RetType,Depth,Self,X,Y).
eval_in_steps_or_same(Eq,RetType,_Dpth,_Slf,X,Y):- X=Y,check_returnval(Eq,RetType,Y).

  % (fail,return_empty([],Template))).


eval_20(Eq,RetType,Depth,Self,['let',A,A5,AA],OO):- !,
  %(var(A)->true;trace),
  ((eval(Eq,RetType,Depth,Self,A5,AE), AE=A)),
    eval(Eq,RetType,Depth,Self,AA,OO).
%eval_20(Eq,RetType,Depth,Self,['let',A,A5,AA],AAO):- !,eval(Eq,RetType,Depth,Self,A5,A),eval(Eq,RetType,Depth,Self,AA,AAO).
eval_20(Eq,RetType,Depth,Self,['let*',[],Body],RetVal):- !, eval(Eq,RetType,Depth,Self,Body,RetVal).
eval_20(Eq,RetType,Depth,Self,['let*',[[Var,Val]|LetRest],Body],RetVal):- !,
     eval_20(Eq,RetType,Depth,Self,['let',Var,Val,['let*',LetRest,Body]],RetVal).


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

:- if( \+  current_predicate( typed_list / 3 )).
typed_list(Cmpd,Type,List):-  compound(Cmpd), Cmpd\=[_|_], compound_name_arguments(Cmpd,Type,[List|_]),is_list(List).
:- endif.

%eval_20(Eq,RetType,Depth,Self,['colapse'|List], Flat):- !, maplist(eval(Eq,RetType,Depth,Self),List,Res),flatten(Res,Flat).

%eval_20(Eq,RetType,Depth,Self,['flatten'|List], Flat):- !, maplist(eval(Eq,RetType,Depth,Self),List,Res),flatten(Res,Flat).


eval_20(Eq,RetType,_Dpth,_Slf,['car-atom',Atom],CAR_Y):- !, Atom=[CAR|_],!,do_expander(Eq,RetType,CAR,CAR_Y).
eval_20(Eq,RetType,_Dpth,_Slf,['cdr-atom',Atom],CDR_Y):- !, Atom=[_|CDR],!,do_expander(Eq,RetType,CDR,CDR_Y).

eval_20(Eq,RetType,Depth,Self,['Cons', A, B ],['Cons', AA, BB]):- no_cons_reduce, !,
  eval(Eq,RetType,Depth,Self,A,AA), eval(Eq,RetType,Depth,Self,B,BB).

eval_20(Eq,RetType,Depth,Self,['Cons', A, B ],[AA|BB]):- \+ no_cons_reduce, !,
   eval(Eq,RetType,Depth,Self,A,AA), eval(Eq,RetType,Depth,Self,B,BB).



% =================================================================
% =================================================================
% =================================================================
%  STATE EDITING
% =================================================================
% =================================================================
% =================================================================

eval_20(Eq,RetType,Depth,Self,['change-state!',StateExpr, UpdatedValue], Ret):- !, eval(Eq,RetType,Depth,Self,StateExpr,StateMonad),
  eval(Eq,RetType,Depth,Self,UpdatedValue,Value),  'change-state!'(Depth,Self,StateMonad, Value, Ret).
eval_20(Eq,RetType,Depth,Self,['new-state',UpdatedValue],StateMonad):- !,
  eval(Eq,RetType,Depth,Self,UpdatedValue,Value),  'new-state'(Depth,Self,Value,StateMonad).
eval_20(Eq,RetType,Depth,Self,['get-state',StateExpr],Value):- !,
  eval(Eq,RetType,Depth,Self,StateExpr,StateMonad), 'get-state'(StateMonad,Value).



% eval_20(Eq,RetType,Depth,Self,['get-state',Expr],Value):- !, eval(Eq,RetType,Depth,Self,Expr,State), arg(1,State,Value).



check_type:- option_else(typecheck,TF,'False'), TF=='True'.

:- dynamic is_registered_state/1.
:- flush_output.
:- setenv('RUST_BACKTRACE',full).

% Function to check if an value is registered as a state name
:- dynamic(is_registered_state/1).
is_nb_state(G):- is_valid_nb_state(G) -> true ;
                 is_registered_state(G),nb_current(G,S),is_valid_nb_state(S).

/*
:- multifile(space_type_method/3).
:- dynamic(space_type_method/3).
space_type_method(is_nb_space,new_space,init_space).
space_type_method(is_nb_space,clear_space,clear_nb_atoms).
space_type_method(is_nb_space,add_atom,add_nb_atom).
space_type_method(is_nb_space,remove_atom,'change-space!').
space_type_method(is_nb_space,replace_atom,replace_nb_atom).
space_type_method(is_nb_space,atom_count,atom_nb_count).
space_type_method(is_nb_space,get_atoms,'get-space').
space_type_method(is_nb_space,atom_iter,atom_nb_iter).
*/

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

'new-state'(Init,'State'(Init, Type)):- check_type->get_type(10,'&self',Init,Type);true.

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

eval_20(Eq,RetType,Depth,Self,['get-type',Val],TypeO):- !, get_type(Depth,Self,Val,Type),ground(Type),Type\==[], Type\==Val,!,
  do_expander(Eq,RetType,Type,TypeO).



eval_20(Eq,RetType,Depth,Self,['length',L],Res):- !, eval(Eq,RetType,Depth,Self,L,LL), !, (is_list(LL)->length(LL,Res);Res=1).
eval_20(Eq,RetType,Depth,Self,['CountElement',L],Res):- !, eval(Eq,RetType,Depth,Self,L,LL), !, (is_list(LL)->length(LL,Res);Res=1).






% =================================================================
% =================================================================
% =================================================================
%  IMPORT/BIND
% =================================================================
% =================================================================
% =================================================================
nb_bind(Name,Value):- nb_current(Name,Was),same_term(Value,Was),!.
nb_bind(Name,Value):- nb_setval(Name,Value),!.
eval_20(Eq,RetType,Depth,Self,['import!',Other,File],RetVal):-
     (( into_space(Depth,Self,Other,Space),!, include_metta(Space,File),!,return_empty(Space,RetVal))),
     check_returnval(Eq,RetType,RetVal). %RetVal=[].
eval_20(Eq,RetType,_Depth,_Slf,['bind!',Other,['new-space']],RetVal):- atom(Other),!,assert(was_asserted_space(Other)),
  return_empty([],RetVal), check_returnval(Eq,RetType,RetVal).
eval_20(Eq,RetType,Depth,Self,['bind!',Other,Expr],RetVal):-
   must_det_ll((into_name(Self,Other,Name),!,eval(Eq,RetType,Depth,Self,Expr,Value),
    nb_bind(Name,Value),  return_empty(Value,RetVal))),
   check_returnval(Eq,RetType,RetVal).
eval_20(Eq,RetType,Depth,Self,['pragma!',Other,Expr],RetVal):-
   must_det_ll((into_name(Self,Other,Name),!,nd_ignore((eval(Eq,RetType,Depth,Self,Expr,Value),
   set_option_value(Name,Value))),  return_empty(Value,RetVal),
    check_returnval(Eq,RetType,RetVal))).
eval_20(Eq,RetType,_Dpth,Self,['transfer!',File],RetVal):- !, must_det_ll((include_metta(Self,File),  return_empty(Self,RetVal),check_returnval(Eq,RetType,RetVal))).


nd_ignore(Goal):- call(Goal)*->true;true.









% =================================================================
% =================================================================
% =================================================================
%  AND/OR
% =================================================================
% =================================================================
% =================================================================

is_True(T):- T\=='False',T\==[].

is_and(S):- \+ atom(S),!,fail.
is_and(',').
is_and(S):- is_and(S,_).

is_and(S,_):- \+ atom(S),!,fail.
is_and('and','True').
is_and('and2','True').
is_and('#COMMA','True'). is_and(',','True').  % is_and('And').

eval_20(Eq,RetType,_Dpth,_Slf,[And],True):- is_and(And,True),!,check_returnval(Eq,RetType,True).
eval_20(Eq,RetType,Depth,Self,[And,X,Y],TF):-  is_and(And,True),!, as_tf((
  eval_args(Eq,RetType,Depth,Self,X,True),eval_args(Eq,RetType,Depth,Self,Y,True)),TF).
eval_20(Eq,RetType,Depth,Self,[And,X],True):- is_and(And,True),!,
  eval_args(Eq,RetType,Depth,Self,X,True).
eval_20(Eq,RetType,Depth,Self,[And,X|Y],TF):- is_and(And,_True),!,
  eval_args(Eq,RetType,Depth,Self,X,TF1), \+ \+ is_True(TF1),
  eval_args(Eq,RetType,Depth,Self,[And|Y],TF).

eval_20(Eq,RetType,Depth,Self,['or',X,Y],TF):- !,
   as_tf((eval_args(Eq,RetType,Depth,Self,X,'True');eval_args(Eq,RetType,Depth,Self,Y,'True')),TF).


% =================================================================
% =================================================================
% =================================================================
%  MeTTaLog Extras
% =================================================================
% =================================================================
% =================================================================

eval_20(_Eq,_RetType1,_Depth,_Self,['call',S], TF):- !, eval_call(S,TF).
eval_20(Eq,RetType,Depth,Self,['eval',S], Res):-  !, eval(Eq,RetType,Depth,Self,S, Res).


% =================================================================
% =================================================================
% =================================================================
%  DATA FUNCTOR
% =================================================================
% =================================================================
% =================================================================
eval20_failked(Eq,RetType,Depth,Self,[V|VI],[V|VO]):-
    nonvar(V),is_metta_data_functor(V),is_list(VI),!,
    maplist(eval(Eq,RetType,Depth,Self),VI,VO).


% =================================================================
% =================================================================
% =================================================================
%  EVAL FAILED
% =================================================================
% =================================================================
% =================================================================
eval_20(Eq,RetType,Depth,Self,X,Y):-
  (eval_40(Eq,RetType,Depth,Self,X,M)*->
     M=Y ;
     % finish_eval(Depth,Self,M,Y);
    (eval_failed(Depth,Self,X,Y)*->true;X=Y)).

eval_failed(Depth,Self,T,TT):-
  finish_eval(Depth,Self,T,TT).

finish_eval(_Dpth,_Slf,T,TT):- var(T),!,TT=T.
finish_eval(_Dpth,_Slf,[],[]):-!.
%finish_eval(_Dpth,_Slf,[F|LESS],Res):- once(eval_selfless([F|LESS],Res)),mnotrace([F|LESS]\==Res),!.
%finish_eval(Depth,Self,[V|Nil],[O]):- Nil==[], once(eval(Eq,RetType,Depth,Self,V,O)),V\=@=O,!.
finish_eval(Depth,Self,[H|T],[HH|TT]):- !,
  eval(Depth,Self,H,HH),
  finish_eval(Depth,Self,T,TT).
finish_eval(Depth,Self,T,TT):- eval(Depth,Self,T,TT).

   %eval(Eq,RetType,Depth,Self,X,Y):- eval_20(Eq,RetType,Depth,Self,X,Y)*->true;Y=[].

%eval_20(Eq,RetType,Depth,_,_,_):- Depth<1,!,fail.
%eval_20(Eq,RetType,Depth,_,X,Y):- Depth<3, !, ground(X), (Y=X).
%eval_20(Eq,RetType,_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X.

% Kills zero arity functions eval_20(Eq,RetType,Depth,Self,[X|Nil],[Y]):- Nil ==[],!,eval(Eq,RetType,Depth,Self,X,Y).


/*
into_values(List,Many):- List==[],!,Many=[].
into_values([X|List],Many):- List==[],is_list(X),!,Many=X.
into_values(Many,Many).
eval_40(Eq,RetType,_Dpth,_Slf,Name,Value):- atom(Name), nb_current(Name,Value),!.
*/
% Macro Functions
%eval_20(Eq,RetType,Depth,_,_,_):- Depth<1,!,fail.
eval_40(_Eq,_RetType,Depth,_,X,Y):- Depth<3, !, fail, ground(X), (Y=X).
eval_40(Eq,RetType,Depth,Self,[F|PredDecl],Res):- fail,
   Depth>1,
   mnotrace((sub_sterm1(SSub,PredDecl), ground(SSub),SSub=[_|Sub], is_list(Sub), maplist(atomic,SSub))),
   eval(Eq,RetType,Depth,Self,SSub,Repl),
   mnotrace((SSub\=Repl, subst(PredDecl,SSub,Repl,Temp))),
   eval(Eq,RetType,Depth,Self,[F|Temp],Res).


% =================================================================
% =================================================================
% =================================================================
%  PLUS/MINUS
% =================================================================
% =================================================================
% =================================================================
eval_40(Eq,RetType,Depth,Self,['+',N1,N2],N):- number(N1),!,
   eval(Eq,RetType,Depth,Self,N2,N2Res), notrace(catch_err(N is N1+N2Res,_E,(set_last_error(['Error',N2Res,'Number']),fail))).
eval_40(Eq,RetType,Depth,Self,['-',N1,N2],N):- number(N1),!,
   eval(Eq,RetType,Depth,Self,N2,N2Res), notrace(catch_err(N is N1-N2Res,_E,(set_last_error(['Error',N2Res,'Number']),fail))).
eval_40(Eq,RetType,Depth,Self,['*',N1,N2],N):- number(N1),!,
   eval(Eq,RetType,Depth,Self,N2,N2Res), notrace(catch_err(N is N1*N2Res,_E,(set_last_error(['Error',N2Res,'Number']),fail))).

% =================================================================
% =================================================================
% =================================================================
%  METTLOG PREDEFS
% =================================================================
% =================================================================
% =================================================================

eval_40(Eq,RetType,Depth,Self,['length',L],Res):- !, eval(Depth,Self,L,LL),
   (is_list(LL)->length(LL,Res);Res=1),
   check_returnval(Eq,RetType,Res).

eval_40(Eq,RetType,_Dpth,_Slf,['arity',F,A],TF):- !,as_tf(current_predicate(F/A),TF),check_returnval(Eq,RetType,TF).

eval_40(Eq,RetType,Depth,Self,['CountElement',L],Res):- !, eval(Eq,RetType,Depth,Self,L,LL), !, (is_list(LL)->length(LL,Res);Res=1),check_returnval(Eq,RetType,Res).
eval_40(Eq,RetType,_Dpth,_Slf,['make_list',List],MettaList):- !, into_metta_cons(List,MettaList),check_returnval(Eq,RetType,MettaList).

% user defined function
eval_40(Eq,RetType,Depth,Self,[H|PredDecl],Res):-
   mnotrace(is_user_defined_head(Self,H)),!,
   eval_60(Eq,RetType,Depth,Self,[H|PredDecl],Res).

eval_40(Eq,RetType,_Dpth,_Slf,['==',X,Y],Res):-  !,
    suggest_type(RetType,'Bool'),
    eq_unify(Eq,_SharedType, X, Y, Res).

eq_unify(_Eq,_SharedType, X, Y, TF):- as_tf(X=:=Y,TF),!.
eq_unify(_Eq,_SharedType, X, Y, TF):- as_tf( '#='(X,Y),TF),!.
eq_unify( Eq,  SharedType, X, Y, TF):- as_tf(eval_until_unify(Eq,SharedType, X, Y), TF).


suggest_type(_RetType,_Bool).

eval_40(Eq,RetType,Depth,Self,[AE|More],Res):- is_special_op(AE),!,
  eval_70(Eq,RetType,Depth,Self,[AE|More],Res),
  check_returnval(Eq,RetType,Res).

eval_40(Eq,RetType,Depth,Self,[AE|More],Res):-
  maplist(must_eval_args(Eq,_,Depth,Self),More,Adjusted),
  eval_70(Eq,RetType,Depth,Self,[AE|Adjusted],Res),
  check_returnval(Eq,RetType,Res).

must_eval_args(Eq,RetType,Depth,Self,More,Adjusted):-
   (eval_args(Eq,RetType,Depth,Self,More,Adjusted)*->true;
      (with_debug(eval,eval_args(Eq,RetType,Depth,Self,More,Adjusted))*-> true;
         (
           nl,writeq(eval_args(Eq,RetType,Depth,Self,More,Adjusted)),writeln('.'),
             (More=Adjusted -> true ;
                (trace, throw(must_eval_args(Eq,RetType,Depth,Self,More,Adjusted))))))).




eval_70(Eq,RetType,Depth,Self,PredDecl,Res):-
  Do_more_defs = do_more_defs(true),
  clause(eval_80(Eq,RetType,Depth,Self,PredDecl,Res),Body),
  Do_more_defs == do_more_defs(true),
  call(Body),nb_setarg(1,Do_more_defs,false).


% =================================================================
% =================================================================
% =================================================================
% inherited by system
% =================================================================
% =================================================================
% =================================================================
is_system_pred(S):- atom(S),atom_concat(_,'!',S).



eval_80(_Eq,_RetType,_Dpth,_Slf,LESS,Res):-
   notrace((ground(LESS),once((eval_selfless(LESS,Res),mnotrace(LESS\==Res))))),!.


% predicate inherited by system
eval_80(Eq,RetType,_Depth,_Self,[AE|More],TF):-
  is_system_pred(AE),
  length(More,Len),
  is_syspred(AE,Len,Pred),
  %mnotrace( \+ is_user_defined_goal(Self,[AE|More])),!,
  %adjust_args(Depth,Self,AE,More,Adjusted),
  More = Adjusted,
  catch_warn(efbug(show_call,eval_call(apply(Pred,Adjusted),TF))),
  check_returnval(Eq,RetType,TF).

:- if( \+  current_predicate( adjust_args / 2 )).

   :- discontiguous eval_80/6.

is_user_defined_goal(Self,Head):-
  is_user_defined_head(Self,Head).

:- endif.

eval_call(S,TF):-
  s2p(S,P), !,
  dmsg(eval_call(P,'$VAR'('TF'))),as_tf(P,TF).

eval_80(Eq,RetType,_Depth,_Self,[AE|More],Res):-
  is_system_pred(AE),
  length([AE|More],Len),
  is_syspred(AE,Len,Pred),
  %mnotrace( \+ is_user_defined_goal(Self,[AE|More])),!,
  %adjust_args(Depth,Self,AE,More,Adjusted),!,
  More = Adjusted,
  append(Adjusted,[Res],Args),!,
  efbug(show_call,catch_warn(apply(Pred,Args))),
  check_returnval(Eq,RetType,Res).

:- if( \+  current_predicate( check_returnval / 3 )).
check_returnval(_,_RetType,_TF).
:- endif.

:- if( \+  current_predicate( adjust_args / 5 )).
adjust_args(_Depth,_Self,_V,VI,VI).
:- endif.

eval_80(Eq,RetType,Depth,Self,PredDecl,Res):-
    eval_67(Eq,RetType,Depth,Self,PredDecl,Res).



last_element(T,E):- \+ compound(T),!,E=T.
last_element(T,E):- is_list(T),last(T,L),last_element(L,E),!.
last_element(T,E):- compound_name_arguments(T,_,List),last_element(List,E),!.




catch_warn(G):- quietly(catch_err(G,E,(wdmsg(catch_warn(G)-->E),fail))).
catch_nowarn(G):- quietly(catch_err(G,error(_,_),fail)).


as_tf(G,TF):-  G\=[_|_], catch_nowarn((call(G)*->TF='True';TF='False')).
%eval_selfless(['==',X,Y],TF):- as_tf(X=:=Y,TF),!.
%eval_selfless(['==',X,Y],TF):- as_tf(X=@=Y,TF),!.
eval_selfless(['>',X,Y],TF):-!,as_tf(X>Y,TF).
eval_selfless(['<',X,Y],TF):-!,as_tf(X<Y,TF).
eval_selfless(['=>',X,Y],TF):-!,as_tf(X>=Y,TF).
eval_selfless(['<=',X,Y],TF):-!,as_tf(X=<Y,TF).
eval_selfless(['%',X,Y],TF):-!,eval_selfless(['mod',X,Y],TF).

eval_selfless(LIS,Y):-  notrace(( ground(LIS),
   LIS=[F,_,_], atom(F), catch_warn(current_op(_,yfx,F)),
   catch_err((LIS\=[_], s2p(LIS,IS), Y is IS),_,fail))),!.

% less Macro-ey Functions





%eval_40(Eq,RetType,Depth,Self,PredDecl,Res):- eval_6(Depth,Self,PredDecl,Res).

%eval_40(Eq,RetType,_Dpth,_Slf,L1,Res):- is_list(L1),maplist(self_eval,L1),!,Res=L1.
%eval_40(Eq,RetType,_Depth,_Self,X,X).
/*

 FAIL  METTA-MORPH-TESTS.FACTORIAL.01)
 FAIL  METTA-MORPH-TESTS.MATCH-VOID.04)
 FAIL  METTA-MORPH-TESTS.MATCH-VOID.10)
 FAIL  METTA-MORPH-TESTS.NALIFIER.01)

is_user_defined_head(Other,H):- mnotrace(is_user_defined_head0(Other,H)).
is_user_defined_head0(Other,[H|_]):- !, nonvar(H),!, is_user_defined_head_f(Other,H).
is_user_defined_head0(Other,H):- callable(H),!,functor(H,F,_), is_user_defined_head_f(Other,F).
is_user_defined_head0(Other,H):- is_user_defined_head_f(Other,H).

is_user_defined_head_f(Other,H):- is_user_defined_head_f1(Other,H).
is_user_defined_head_f(Other,H):- is_user_defined_head_f1(Other,[H|_]).

%is_user_defined_head_f1(Other,H):- metta_type(Other,H,_).
is_user_defined_head_f1(Other,H):- metta_atom(Other,[H|_]).
is_user_defined_head_f1(Other,H):- metta_defn(Eq,Other,[H|_],_).
%is_user_defined_head_f(_,H):- is_metta_builtin(H).


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
is_metta_builtin('%').
is_metta_builtin('==').
is_metta_builtin('<').
is_metta_builtin('>').
is_metta_builtin('all').
is_metta_builtin('import!').
is_metta_builtin('pragma!').

*/
% =================================================================
% =================================================================
% =================================================================
%  USER DEFINED FUNCTIONS
% =================================================================
% =================================================================
% =================================================================

call_ndet(Goal,DET):- call(Goal),deterministic(DET).

eval_60(Eq,RetType,Depth,Self,H,B):-
   (eval_64(Eq,RetType,Depth,Self,H,B)*->true;
     (fail,eval_67(Eq,RetType,Depth,Self,H,B))).


%eval_64(Eq,_RetType,_Dpth,Self,H,B):-  Eq='=',!, metta_defn(Eq,Self,H,B).
eval_64(Eq,_RetType,_Dpth,Self,H,B):-
   Eq='match', dcall(metta_atom(Self,H)),B=H.


eval_64(Eq,RetType,Depth,Self,[[H|Start]|T1],Y):-
   mnotrace((is_user_defined_head_f(Self,H),is_list(Start))),
   metta_defn(Eq,Self,[H|Start],Left),
   [Left|T1] \=@= [[H|Start]|T1],
   eval(Eq,RetType,Depth,Self,[Left|T1],Y).

eval_64(Eq,_RetType,Depth,Self,[H|Args],B):- % no weird template matchers
  % forall(metta_defn(Eq,Self,[H|Template],_),
  %    maplist(not_template_arg,Template)),
   Eq='=',
   (metta_defn(Eq,Self,[H|Args],B0)*->true;(fail,[H|Args]=B0)),
   light_eval(Depth,Self,B0,B).
    %(eval(Eq,RetType,Depth,Self,B,Y);metta_atom_iter(Depth,Self,Y)).
% Use the first template match
eval_64(Eq,_RetType,Depth,Self,[H|Args],B):- fail,
   Eq='=',
  (metta_defn(Eq,Self,[H|Template],B0),Args=Template),
  light_eval(Depth,Self,B0,B).


light_eval(_Depth,_Self,B,B).

not_template_arg(TArg):- var(TArg), !, \+ attvar(TArg).
not_template_arg(TArg):- atomic(TArg),!.
%not_template_arg(TArg):- is_list(TArg),!,fail.


% Has argument that is headed by the same function
eval_67(Eq,RetType,Depth,Self,[H1|Args],Res):-
   mnotrace((append(Left,[[H2|H2Args]|Rest],Args), H2==H1)),!,
   eval(Eq,RetType,Depth,Self,[H2|H2Args],ArgRes),
   mnotrace((ArgRes\==[H2|H2Args], append(Left,[ArgRes|Rest],NewArgs))),
   eval_60(Eq,RetType,Depth,Self,[H1|NewArgs],Res).

eval_67(Eq,RetType,Depth,Self,[[H|Start]|T1],Y):-
   mnotrace((is_user_defined_head_f(Self,H),is_list(Start))),
   metta_defn(Eq,Self,[H|Start],Left),
   eval(Eq,RetType,Depth,Self,[Left|T1],Y).

% Has subterm to eval
eval_67(Eq,RetType,Depth,Self,[F|PredDecl],Res):- fail,
   Depth>1,
   quietly(sub_sterm1(SSub,PredDecl)),
   mnotrace((ground(SSub),SSub=[_|Sub], is_list(Sub),maplist(atomic,SSub))),
   eval(Eq,RetType,Depth,Self,SSub,Repl),
   mnotrace((SSub\=Repl,subst(PredDecl,SSub,Repl,Temp))),
   eval_60(Eq,RetType,Depth,Self,[F|Temp],Res).

%eval_67(Eq,RetType,Depth,Self,X,Y):- (eval_68(Eq,RetType,Depth,Self,X,Y)*->true;metta_atom_iter(Depth,Self,[=,X,Y])).
/*
eval_67_fail(Depth,Self,PredDecl,Res):- fail,
 ((term_variables(PredDecl,Vars),
  (metta_atom(Self,PredDecl) *-> (Vars ==[]->Res='True';Vars=Res);
   (eval(Eq,RetType,Depth,Self,PredDecl,Res),ignore(Vars ==[]->Res='True';Vars=Res))))),
 PredDecl\=@=Res.
*/

%eval_68(Eq,RetType,_Dpth,Self,[H|_],_):- mnotrace( \+ is_user_defined_head_f(Self,H) ), !,fail.
%eval_68(Eq,RetType,_Dpth,Self,[H|T1],Y):- metta_defn(Eq,Self,[H|T1],Y).
%eval_68(Eq,RetType,_Dpth,Self,[H|T1],'True'):- metta_atom(Self,[H|T1]).
%eval_68(Eq,RetType,_Dpth,Self,CALL,Y):- fail,append(Left,[Y],CALL),metta_defn(Eq,Self,Left,Y).


%eval_6(Depth,Self,['ift',CR,Then],RO):- fail, !, %fail, % trace,
%   metta_defn(Eq,Self,['ift',R,Then],Become),eval(Eq,RetType,Depth,Self,CR,R),eval(Eq,RetType,Depth,Self,Then,_True),eval(Eq,RetType,Depth,Self,Become,RO).


%not_compound(Term):- \+ is_list(Term),!.
%eval_40(Eq,RetType,Depth,Self,Term,Res):- maplist(not_compound,Term),!,eval_645(Depth,Self,Term,Res).


% function inherited by system
/*
eval_80(Eq,RetType,Depth,Self,[F|X],FY):- is_function(F),  \+ is_special_op(F), is_list(X),
  maplist(eval(Eq,ArgTypes,Depth,Self),X,Y),!,
  eval_85(Depth,Self,[F|Y],FY).

eval_80(Eq,RetType,Depth,Self,FX,FY):- eval_85(Depth,Self,FX,FY).

eval_85(Depth,Self,[AE|More],TF):- length(More,Len),
  (is_syspred(AE,Len,Pred),catch_warn(as_tf(apply(Pred,More),TF)))*->true;eval_86(Depth,Self,[AE|More],TF).
eval_86(_Dpth,_Slf,[AE|More],TF):- length([AE|More],Len), is_syspred(AE,Len,Pred),append(More,[TF],Args),!,catch_warn(apply(Pred,Args)).
*/
%eval_80(Eq,RetType,Depth,Self,[X1|[F2|X2]],[Y1|Y2]):- is_function(F2),!,eval(Eq,RetType,Depth,Self,[F2|X2],Y2),eval(Eq,RetType,Depth,Self,X1,Y1).


% =================================================================
% =================================================================
% =================================================================
%  AGREGATES
% =================================================================
% =================================================================
% =================================================================

cwdl(DL,Goal):- call_with_depth_limit(Goal,DL,R), (R==depth_limit_exceeded->(!,fail);true).

%bagof_eval(Eq,RetType,Depth,Self,X,L):- bagof_eval(Eq,RetType,_RT,Depth,Self,X,L).


%bagof_eval(Eq,RetType,Depth,Self,X,S):- bagof(E,eval_ne(Eq,RetType,Depth,Self,X,E),S)*->true;S=[].
bagof_eval(_Eq,_RetType,_Dpth,_Slf,X,L):- typed_list(X,_Type,L),!.
bagof_eval(Eq,RetType,Depth,Self,X,L):-
   findall(E,eval_ne(Eq,RetType,Depth,Self,X,E),L).

setof_eval(Depth,Self,X,L):- setof_eval('=',_RT,Depth,Self,X,L).
setof_eval(Eq,RetType,Depth,Self,X,S):- bagof_eval(Eq,RetType,Depth,Self,X,L),
   sort(L,S).


eval_ne(Eq,RetType,Depth,Self,X,E):-
  eval(Eq,RetType,Depth,Self,X,E), \+ var(E), \+ is_empty(E).




:- ensure_loaded(metta_subst).
