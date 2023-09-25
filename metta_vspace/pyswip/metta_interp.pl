
:- ensure_loaded(metta_compiler).


% Function to check if an atom is registered as a space name
:- dynamic is_registered_space_name/1.
is_nb_space(G):- is_valid_nb_space(G) -> true ;
                 is_registered_space_name(G),nb_current(G,S),is_valid_nb_space(S).

:- dynamic(is_python_space/1).

:- multifile(space_type_method/3).
:- dynamic(space_type_method/3).
space_type_method(is_as_nb_space,new_space,init_space).
space_type_method(is_as_nb_space,clear_space,clear_nb_atoms).
space_type_method(is_as_nb_space,add_atom,add_nb_atom).
space_type_method(is_as_nb_space,remove_atom,remove_nb_atom).
space_type_method(is_as_nb_space,replace_atom,replace_nb_atom).
space_type_method(is_as_nb_space,atom_count,atom_nb_count).
space_type_method(is_as_nb_space,get_atoms,get_nb_atoms).
space_type_method(is_as_nb_space,atom_iter,atom_nb_iter).
%space_type_method(is_as_nb_space,query,space_nb_query).

% Clear all atoms from a space
clear_nb_atoms(SpaceNameOrInstance) :-
    fetch_or_create_space(SpaceNameOrInstance, Space),
    nb_setarg(1, Space, []).

% Add an atom to the space
add_nb_atom(SpaceNameOrInstance, Atom) :-
    fetch_or_create_space(SpaceNameOrInstance, Space),
    arg(1, Space, Atoms),
    NewAtoms = [Atom | Atoms],
    nb_setarg(1, Space, NewAtoms).

% Count atoms in a space
atom_nb_count(SpaceNameOrInstance, Count) :-
    fetch_or_create_space(SpaceNameOrInstance, Space),
    arg(1, Space, Atoms),
    length(Atoms, Count).

% Remove an atom from a space
remove_nb_atom(SpaceNameOrInstance, Atom) :-
    fetch_or_create_space(SpaceNameOrInstance, Space),
    arg(1, Space, Atoms),
    select(Atom, Atoms, UpdatedAtoms),
    nb_setarg(1, Space, UpdatedAtoms).

% Fetch all atoms from a space
get_nb_atoms(SpaceNameOrInstance, Atoms) :-
    fetch_or_create_space(SpaceNameOrInstance, Space),
    arg(1, Space, Atoms).

% Replace an atom in the space
replace_nb_atom(SpaceNameOrInstance, OldAtom, NewAtom) :-
    fetch_or_create_space(SpaceNameOrInstance, Space),
    arg(1, Space, Atoms),
    ( (select(Found, Atoms, TempAtoms),OldAtom=@=Found)
    ->  NewAtoms = [NewAtom | TempAtoms],
        nb_setarg(1, Space, NewAtoms)
    ;   false
    ).




% Function to confirm if a term represents a space
is_valid_nb_space(Space):- compound(Space),functor(Space,'Space',_).

% Find the original name of a given space
space_original_name(Space, Name) :-
    is_registered_space_name(Name),
    nb_current(Name, Space).

% Register and initialize a new space
init_space(Name) :-
    Space = 'Space'([]),
    asserta(is_registered_space_name(Name)),
    nb_setval(Name, Space).

fetch_or_create_space(Name):- fetch_or_create_space(Name,_).
% Fetch an existing space or create a new one
fetch_or_create_space(NameOrInstance, Space) :-
    (   atom(NameOrInstance)
    ->  (is_registered_space_name(NameOrInstance)
        ->  nb_current(NameOrInstance, Space)
        ;   init_space(NameOrInstance),
            nb_current(NameOrInstance, Space))
    ;   is_valid_nb_space(NameOrInstance)
    ->  Space = NameOrInstance
    ;   writeln('Error: Invalid input.')
    ),
    is_valid_nb_space(Space).


% Match Pattern in Space and produce Template
'match'(Space, Pattern, Template) :-
    'get-atoms'(Space, Atoms),
    'match-pattern'(Atoms, Pattern, Template).

% Simple pattern match
'match-pattern'([], _, []).
'match-pattern'([H |_T], H, H) :- !.
'match-pattern'([_H| T], Pattern, Template) :- 'match-pattern'(T, Pattern, Template).


metta_cmd_args(Rest):- current_prolog_flag(argv,P),append(_,['--'|Rest],P),!.
metta_cmd_args(Rest):- current_prolog_flag(os_argv,P),append(_,['--'|Rest],P),!.
metta_cmd_args(Rest):- current_prolog_flag(argv,Rest).
run_file_arg:- metta_cmd_args(Rest), !,  do_cmdline_load_metta('&self',Rest).
loon:- run_file_arg, !, loonit_report, halt(7).
%loon:- time(loon_metta('./examples/compat/test_scripts/*.metta')),fail.
loon:- repl, halt(7).

metta_make_hook:-  loonit_reset, option_value(not_a_reload,true),!.
metta_make_hook:-
  metta_cmd_args(Rest), into_reload_options(Rest,Reload), cmdline_load_metta('&self',Reload).

:- multifile(prolog:make_hook/2).
:- dynamic(prolog:make_hook/2).
prolog:make_hook(after, _Some):- metta_make_hook.

into_reload_options(Reload,Reload).

is_cmd_option(Opt,M, TF):- atom(M),
   atom_concat('-',Opt,Flag),
   atom_contains(M,Flag),!,
   get_flag_value(M,FV),
   TF=FV.

get_flag_value(M,V):- atomic_list_concat([_,V],'=',M),!.
get_flag_value(M,false):- atom_contains(M,'-no'),!.
get_flag_value(_,true).


early_opts('repl').
early_opts('exec').
early_opts('html').
early_opts('python').

process_early_opts:- \+ option_value('python',false), skip(ensure_loaded(metta_python)).
process_early_opts.


process_late_opts:- option_value('html',true), shell('./total_loonits.sh').
process_late_opts:- \+ option_value('repl',false), repl.
process_late_opts:- halt(7).

do_cmdline_load_metta(Self,List):-
  select(M,List,Rest),
  atom_concat('-',_,M),
  early_opts(Opt),
  is_cmd_option(Opt,M, TF),!,
  write(' '), write_src(M), nl, !, set_option_value(Opt,TF),
  do_cmdline_load_metta(Self,Rest).

do_cmdline_load_metta(Self,Rest):-
  set_prolog_flag(late_metta_opts,Rest),
  forall(process_early_opts,true),
  cmdline_load_metta(Self,Rest),
  forall(process_late_opts,true).


cmdline_load_metta(Self,[Filemask|Rest]):- atom(Filemask), \+ atom_concat('-',_,Filemask),
  must_det_ll((Src=load_metta(Self,Filemask),nl,write_src(Src),nl,catch_red(Src),!,flush_output,
  cmdline_load_metta(Self,Rest))).
cmdline_load_metta(Self,[M|Rest]):-
  write(' '), write_src(M), nl, !,
  cmdline_load_metta(Self,Rest).
cmdline_load_metta(_,Nil):- Nil==[],!.

:- set_prolog_flag(occurs_check,true).

start_html_of(_Filename):-
 must_det_ll((
  S = _,
  retractall(metta_defn(S,_,_)),
  retractall(metta_type(S,_,_)),
  retractall(metta_atom(S,_)),
  loonit_reset,
  tee_file(TEE_FILE),
  sformat(S,'cat /dev/null > "~w"',[TEE_FILE]),

  writeln(doing(S)),
  shell(S))).
save_html_of(Filename):-
 must_det_ll((
  file_name_extension(Base,_,Filename),
  file_name_extension(Base,html,HtmlFilename),
  loonit_reset,
  tee_file(TEE_FILE),
  sformat(S,'ansi2html < "~w" > "~w" ',[TEE_FILE,HtmlFilename]),
  writeln(doing(S)),
  shell(S))).

tee_file(TEE_FILE):- getenv('TEE_FILE',TEE_FILE),!.
tee_file(TEE_FILE):- metta_dir(Dir),directory_file_path(Dir,'TEE.ansi',TEE_FILE),!.
metta_dir(Dir):- getenv('METTA_DIR',Dir),!.

load_metta(Filename):-
 clear_spaces, load_metta('&self',Filename).
load_metta(Self,Filename):-
 atom(Filename),exists_file(Filename),!,
 track_load_into_file(Filename,
   setup_call_cleanup(open(Filename,read,In),
    ((directory_file_path(Directory, _BaseName, Filename),
      with_cwd(Directory,
         load_metta_stream(Self,In)))),close(In))).

load_metta(_Self,Filename):- Filename=='--repl',!,repl.
load_metta(Self,Filename):-
  (\+ atom(Filename); \+ exists_file(Filename)),!,
  with_wild_path(load_metta(Self),Filename),!,loonit_report.

%writeqln(Q):- write(' '),writeq(Q),nl.
writeqln(Q):- format('~N'),write(' '),writeq(Q),nl.

clear_spaces:- clear_space(_).
clear_space(S):-
   retractall(metta_defn(S,_,_)),
   retractall(metta_type(S,_,_)),
   retractall(metta_atom(S,_)).

load_metta_stream(Fn,String):- string(String),!,open_string(String,Stream),load_metta_stream(Fn,Stream).
load_metta_stream(_Fn,In):- (at_end_of_stream(In)/*;reached_file_max*/),!.
load_metta_stream(Self,In):-
 repeat,
  once(read_metta(In,Read)), %write_src(read_metta=Read),nl,
  once(do_metta(Self,load,Read)),
  flush_output,
  at_end_of_stream(In),!.

'metta_learner::vspace-main':- repl.

:- nb_setval(self_space, '&self').
evals_to(XX,Y):- Y==XX,!.   evals_to(XX,Y):- Y=='True',!, XX\=='False'.

eval_arg(A,AA):-
  nb_current(self_space,Space),
  eval_arg(11,Space,A,AA).

:- discontiguous eval_arg/4.
:- discontiguous eval_args1/4.
:- discontiguous eval_args2/4.
:- discontiguous eval_args_final/4.
:- dynamic eval_arg/4.
:- dynamic eval_args1/4.
:- dynamic eval_args2/4.
:- dynamic eval_args_final/4.

into_underscores(D,U):- atom(D),!,atomic_list_concat(L,'-',D),atomic_list_concat(L,'_',U).
into_underscores(D,U):- descend_and_transform(into_underscores,D,U),!.

into_hyphens(D,U):- atom(D),!,atomic_list_concat(L,'_',D),atomic_list_concat(L,'-',U).
into_hyphens(D,U):- descend_and_transform(into_hyphens,D,U),!.

descend_and_transform(P2, Input, Transformed) :-
    (   var(Input)
    ->  Transformed = Input  % Keep variables as they are
    ;   compound(Input)
    -> (compound_name_arguments(Input, Functor, Args),
        maplist(descend_and_transform(P2), Args, TransformedArgs),
        compound_name_arguments(Transformed, Functor, TransformedArgs))
    ;   (atom(Input),call(P2,Input,Transformed))
    ->  true % Transform atoms using xform_atom/2
    ;   Transformed = Input  % Keep other non-compound terms as they are
    ).


is_predicate(H,_Ln,_Prd):- \+ atom(H),!,fail.
is_predicate(H,_Ln,_Prd):- upcase_atom(H,U),downcase_atom(H,U),!,fail.
is_predicate(H,Len,Pred):- current_predicate(H/Len),!,Pred=H.
is_predicate(H,Len,Pred):- into_underscores(H,Pred), H\==Pred, current_predicate(Pred/Len),!.

%eval_arg(Depth,_Self,X,_Y):- forall(between(6,Depth,_),write(' ')),writeqln(eval_args(X)),fail.
eval_arg(Depth,Self,X,Y):- nonvar(Y),!,eval_arg(Depth,Self,X,XX),evals_to(XX,Y).

eval_arg(Depth,Self,X,Y):-
  no_repeats_var(YY), 
  D1 is Depth-1,
  eval_args0(D1,Self,X,Y), \+ (Y\=YY).


debugging_metta(G):-debugging(metta(eval))->ignore(G);true.


:- nodebug(metta(eval)).


eval_args0(Depth,_Slf,X,Y):- Depth<1,!,X=Y.
eval_args0(Depth,Self,X,Y):-
  Depth2 is Depth-1,
  eval_args1(Depth,Self,X,M),
  (M\=@=X ->eval_args0(Depth2,Self,M,Y);Y=X).


eval_args1(_Dpth,_Slf, V, V):- var(V),!.
eval_args1(_Dpth,_Slf,Name,Value):- atom(Name), nb_current(Name,Value),!.
eval_args1(_Dpth,_Slf,Name,Value):- atomic(Name), !, Name=Value.
eval_args1(_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X.

eval_args1(Depth,Self,[V|Nil],[O]):- Nil==[], once(eval_arg(Depth,Self,V,O)),V\=@=O,!.

eval_args1(Depth,Self,[V|VI],[V|VO]):- var(V),is_list(VI),!,maplist(eval_arg(Depth,Self),VI,VO).
eval_args1(Depth,Self,[V|VI],VVO):-  \+ is_list(VI),!,
 eval_arg(Depth,Self,VI,VM),
  ( VM\==VI -> eval_arg(Depth,Self,[V|VM],VVO) ;
    (eval_arg(Depth,Self,V,VV), (V\==VV -> eval_arg(Depth,Self,[VV|VI],VVO) ; VVO = [V|VI]))).

eval_args1(Depth,Self,['assertTrue',X],TF):- !, eval_arg(Depth,Self,['assertEqual',X,'True'],TF).
eval_args1(Depth,Self,['assertFalse',X],TF):- !, eval_arg(Depth,Self,['assertEqual',X,'False'],TF).
eval_args1(Depth,Self,['assertEqual',X,Y],TF):- !,
     ((loonit_asserts(
        (setof_eval(Depth,Self,X,XX),
         setof_eval(Depth,Self,Y,YY),!),
       XX=@=YY))),!,
    as_tf(XX=@=YY,TF),!.
eval_args1(Depth,Self,['assertEqualToResult',X,Y],TF):- !,
   loonit_asserts((setof_eval(Depth,Self,X,L),sort(Y,YY)), L=@=YY),
   !, as_tf(L=@=YY,TF).

eval_args1(Depth,Self,['match',Other,Goal,Template],Template):- into_space(Self,Other,Space),!, metta_atom_iter(Depth,Space,Goal).
eval_args1(Depth,Self,['match',Other,Goal,Template,Else],Template):- into_space(Self,Other,Space),!,  (metta_atom_iter(Depth,Space,Goal)*->true;Else=Template).

% Macro: case
eval_args1(Depth,Self,X,Res):-
   X= [CaseSym,A,CL],CaseSym == 'case', !,
   into_case_list(CL,CASES),
   findall(Key-Value,
     (nth0(Nth,CASES,Case0),
       (is_case(Key,Case0,Value),
        debug_only((format('~N'),writeqln(c(Nth,Key)=Value))))),KVs),!,
   ((eval_arg(Depth,Self,A,AA),debug_only((writeqln(switch=AA))),
    (select_case(Depth,Self,AA,KVs,Value)->true;(member(Void -Value,KVs),Void=='%void%')))
     *->true;(member(Void -Value,KVs),Void=='%void%')),
    eval_arg(Depth,Self,Value,Res).

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
     eval_arg(Depth,Self,K,AK), K\=@=AK,!,
     maybe_special_keys(Depth,Self,KVI,KVO).
   maybe_special_keys(Depth,Self,[_|KVI],KVO):-
     maybe_special_keys(Depth,Self,KVI,KVO).
   maybe_special_keys(_Depth,_Self,[],[]).


%[superpose,[1,2,3]]
eval_args1(Depth,Self,['superpose',List],Res):- !, member(E,List),eval_arg(Depth,Self,E,Res).
get_sa_p1(P3,E,Cmpd,SA):-  compound(Cmpd), get_sa_p2(P3,E,Cmpd,SA).
get_sa_p2(P3,E,Cmpd,call(P3,N1,Cmpd)):- arg(N1,Cmpd,E).
get_sa_p2(P3,E,Cmpd,SA):- arg(_,Cmpd,Arg),get_sa_p1(P3,E,Arg,SA).
eval_args1(Depth,Self, Term, Res):-
   get_sa_p1(setarg,ST,Term,P1), % ST\==Term,
   compound(ST), ST = [F,List],F=='superpose',nonvar(List), %maplist(atomic,List),
   call(P1,Var),
   %max_counting(F,20),
   !, member(Var,List),
   eval_args1(Depth,Self, Term, Res).

%[collapse,[1,2,3]]
eval_args1(Depth,Self,['collapse',List],Res):-!, setof_eval(Depth,Self,List,Res).
eval_args1(Depth,Self, Term, Res):-
   get_sa_p1(setarg,ST,Term,P1),
   compound(ST), ST = [F,List],F=='collapse',nonvar(List), %maplist(atomic,List),
   call(P1,Var), setof_eval(Depth,Self,List,Var),
   eval_args1(Depth,Self, Term, Res).


max_counting(F,Max):- flag(F,X,X+1),  X<Max ->  true; (flag(F,_,10),!,fail).


eval_args1(Depth,Self,['if',Cond,Then,Else],Res):- !,
   eval_arg(Depth,Self,Cond,TF),
   (is_True(TF) -> eval_arg(Depth,Self,Then,Res);eval_arg(Depth,Self,Else,Res)).

eval_args1(Depth,Self,['if',Cond,Then],Res):- trace, !,
   eval_arg(Depth,Self,Cond,TF),
   (is_True(TF) -> eval_arg(Depth,Self,Then,Res) ; Res = []).

eval_args1(_Dpth,_Slf,[_,Nothing],Nothing):- 'Nothing'==Nothing,!.

eval_args1(Depth,Self,['let',A,A5,AA],OO):- !,
  %(var(A)->true;trace),
  ((eval_arg(Depth,Self,A5,AE), AE=A)),
  eval_arg(Depth,Self,AA,OO).
%eval_args1(Depth,Self,['let',A,A5,AA],AAO):- !,eval_arg(Depth,Self,A5,A),eval_arg(Depth,Self,AA,AAO).
eval_args1(Depth,Self,['let*',[],Body],RetVal):- !, eval_args1(Depth,Self,Body,RetVal).
eval_args1(Depth,Self,['let*',[[Var,Val]|LetRest],Body],RetVal):- !,
    eval_args1(Depth,Self,['let',Var,Val,['let*',LetRest,Body]],RetVal).

eval_args1(Depth,Self,['colapse'|List], Flat):- !, maplist(eval_arg(Depth,Self),List,Res),flatten(Res,Flat).
eval_args1(Depth,Self,['get-atoms',Other],PredDecl):- !,into_space(Self,Other,Space), metta_atom_iter(Depth,Space,PredDecl).
eval_args1(_Dpth,_Slf,['car-atom',Atom],CAR):- !, Atom=[CAR|_],!.
eval_args1(_Dpth,_Slf,['cdr-atom',Atom],CDR):- !, Atom=[_|CDR],!.
eval_args1(Depth,Self,['get-state',Expr],Value):- !, eval_arg(Depth,Self,Expr,State), arg(1,State,Value).

eval_args1(Depth,Self,['get-type',Val],Type):-!, get_type(Depth,Self,Val,Type),ground(Type),Type\==[], Type\==Val.



get_type(_Dpth,_Slf,Var,'%Undefined%'):- var(Var),!.
get_type(_Dpth,_Slf,Val,'Number'):- number(Val),!.
get_type(Depth,Self,Expr,['StateMonad',Type]):- compound(Expr), Expr=..['State',Val],!,get_type(Depth,Self,Val,Type).
get_type(_Dpth,Self,[Fn|_],Type):- nonvar(Fn),metta_type(Self,Fn,List),!,last_element(List,Type).
get_type(_Dpth,Self,List,Type):- is_list(List),metta_type(Self,Type,['->'|List]).
get_type(_Dpth,Self,List,Type):- is_list(List),metta_type(Self,List,LType),!,last_element(LType,Type).

get_type(Depth,_Slf,Type,Type):- Depth<1,!.
get_type(Depth,Self,List,Types):- List\==[], is_list(List),Depth2 is Depth-1,maplist(get_type(Depth2,Self),List,Types).
get_type(_Dpth,Self,Fn,Type):- symbol(Fn),metta_type(Self,Fn,Type),!.
%get_type(Depth,Self,Fn,Type):- nonvar(Fn),metta_type(Self,Fn,Type2),Depth2 is Depth-1,get_type(Depth2,Self,Type2,Type).
%get_type(Depth,Self,Fn,Type):- Depth>0,nonvar(Fn),metta_type(Self,Type,Fn),!. %,!,last_element(List,Type).

get_type(Depth,Self,Expr,Type):-Depth2 is Depth-1, eval_arg(Depth2,Self,Expr,Val),Expr\=@=Val,get_type(Depth2,Self,Val,Type).


get_type(_Dpth,_Slf,Val,'Symbol'):- symbol(Val),!.
get_type(Depth,Self,[T|List],['List',Type]):- Depth2 is Depth-1,  is_list(List),get_type(Depth2,Self,T,Type),!,
  forall((member(Ele,List),nonvar(Ele)),get_type(Depth2,Self,Ele,Type)),!.
%get_type(Depth,_Slf,Cmpd,Type):- compound(Cmpd), functor(Cmpd,Type,1),!.
get_type(_Dpth,_Slf,Cmpd,Type):- \+ ground(Cmpd),!,Type=[].
get_type(_Dpth,_Slf,_,'%Undefined%'):- fail.
eval_args1(Depth,Self,X,Y):-
  (eval_args2(Depth,Self,X,Y)*->true;
    (eval_args_l(Depth,Self,X,Y)*->true;X=Y)).

eval_args_l(_Dpth,_Slf,T,TT):- T==[],!,TT=[].
eval_args_l(_Dpth,_Slf,T,TT):- var(T),!,TT=T.
eval_args_l(_Dpth,_Slf,[F|LESS],Res):- once(eval_selfless([F|LESS],Res)),[F|LESS]\==Res,!.
eval_args_l(Depth,Self,[H|T],[HH|TT]):- !,
  eval_arg(Depth,Self,H,HH),
  eval_args_l(Depth,Self,T,TT).

eval_args_l(Depth,Self,T,TT):- eval_arg(Depth,Self,T,TT).

   %eval_arg(Depth,Self,X,Y):- eval_args1(Depth,Self,X,Y)*->true;Y=[].

%eval_args1(Depth,_,_,_):- Depth<1,!,fail.
%eval_args1(Depth,_,X,Y):- Depth<3, !, ground(X), (Y=X).
%eval_args1(_Dpth,_Slf,X,Y):- self_eval(X),!,Y=X.

% Kills zero arity functions eval_args1(Depth,Self,[X|Nil],[Y]):- Nil ==[],!,eval_arg(Depth,Self,X,Y).


cwdl(DL,Goal):- call_with_depth_limit(Goal,DL,R), (R==depth_limit_exceeded->(!,fail);true).
setof_eval(Depth,Self,X,S):- !,findall(E,eval_arg(Depth,Self,X,E),L),sort(L,S).
%setof_eval(Depth,Self,X,S):- setof(E,eval_arg(Depth,Self,X,E),S)*->true;S=[].

debug_only(G):- ignore(notrace(catch_warn(G))).
debug_only(_What,G):- ignore((fail,notrace(catch_warn(G)))).
/*
into_values(List,Many):- List==[],!,Many=[].
into_values([X|List],Many):- List==[],is_list(X),!,Many=X.
into_values(Many,Many).
eval_args2(_Dpth,_Slf,Name,Value):- atom(Name), nb_current(Name,Value),!.
*/
% Macro Functions
%eval_args1(Depth,_,_,_):- Depth<1,!,fail.
eval_args2(Depth,_,X,Y):- Depth<3, !, fail, ground(X), (Y=X).
eval_args2(Depth,Self,[F|PredDecl],Res):-
   Depth>1,
   sub_sterm1(SSub,PredDecl), ground(SSub),SSub=[_|Sub], is_list(Sub),
   maplist(atomic,SSub),
   eval_arg(Depth,Self,SSub,Repl),
   SSub\=Repl,
   subst(PredDecl,SSub,Repl,Temp),!,
   eval_args1(Depth,Self,[F|Temp],Res).



/*
eval_args2(Depth,Self,[F,A|Args],Res):-
   \+ self_eval(A),
   eval_arg(Depth,Self,A,AA),AA\==A,
   eval_arg(Depth,Self,[F,AA|Args],Res).


eval_args2(Depth,Self,[F,A1|AArgs],Res):- fail, member(F,['+']),
 cwdl(40,((
   append(L,[A|R],AArgs),
   \+ self_eval(A),
   eval_arg(Depth,Self,A,AA),AA\==A,!,
   append(L,[AA|R],NewArgs), eval_arg(Depth,Self,[F,A1|NewArgs],Res)))).
*/

/* %%

% !(assertEqualToResult ((inc) 2) (3))
eval_args2(Depth,Self,[F|Args],Res):- is_list(F),
  metta_atom_iter(Depth,Self,['=',F,R]), eval_arg(Depth,Self,[R|Args],Res).

eval_args2(Depth,Self,[F|Args],Res):- is_list(F), Args\==[],
  append(F,Args,FArgs),!,eval_arg(Depth,Self,FArgs,Res).
*/
eval_args2(_Dpth,Self,['import!',Other,File],Space):- into_space(Self,Other,Space),!, load_metta(Space,File).
eval_args2(Depth,Self,['bind!',Other,Expr],Value):- into_name(Self,Other,Name),!,eval_arg(Depth,Self,Expr,Value),
  nb_setval(Name,Value).


eval_args2(_Dpth,_Slf,['new-state',Expr],Value):- !, 'new-state'(Expr,Value),!.
eval_args2(_Dpth,_Slf,['new-state'],Value):- !, 'new-state'(Value),!.
%eval_args2(_Dpth,_Slf,['new-state'|Expr],['new-state'|Expr]):- !.

eval_args2(_Dpth,_Slf,['get-state',Expr],Value):- !, arg(1,Expr,Value).

eval_args2(Depth,Self,['nop',Expr],[]):- !,  eval_arg(Depth,Self,Expr,_).

is_True(T):- T\=='False',T\==[].

is_and(S):- \+ atom(S),!,fail.
is_and('#COMMA'). is_and(','). is_and('and').

eval_args2(_Dpth,_Slf,[And],'True'):- is_and(And),!.
eval_args2(Depth,Self,['and',X,Y],TF):- !, as_tf((eval_arg(Depth,Self,X,'True'),eval_arg(Depth,Self,Y,'True')),TF).
eval_args2(Depth,Self,[And,X|Y],TF):- is_and(And),!,eval_arg(Depth,Self,X,TF1),
  is_True(TF1),eval_args2(Depth,Self,[And|Y],TF).
%eval_args2(Depth,Self,[H|T],_):- \+ is_list(T),!,fail.
eval_args2(Depth,Self,['or',X,Y],TF):- !, (eval_arg(Depth,Self,X,TF);eval_arg(Depth,Self,Y,TF)).



eval_args2(_Dpth,Self,['add-atom',Other,PredDecl],TF):- !, into_space(Self,Other,Space), as_tf(do_metta(Space,load,PredDecl),TF).
eval_args2(_Dpth,Self,['remove-atom',Other,PredDecl],TF):- !, into_space(Self,Other,Space), as_tf(do_metta(Space,unload,PredDecl),TF).
eval_args2(_Dpth,Self,['atom-count',Other],Count):- !, into_space(Self,Other,Space), findall(_,metta_defn(Other,_,_),L1),length(L1,C1),findall(_,metta_atom(Space,_),L2),length(L2,C2),Count is C1+C2.
eval_args2(_Dpth,Self,['atom-replace',Other,Rem,Add],TF):- !, into_space(Self,Other,Space), copy_term(Rem,RCopy),
  as_tf((metta_atom_iter_ref(Space,RCopy,Ref), RCopy=@=Rem,erase(Ref), do_metta(Other,load,Add)),TF).


last_element(T,E):- \+ compound(T),!,E=T.
last_element(T,E):- is_list(T),last(T,L),last_element(L,E),!.
last_element(T,E):- compound_name_arguments(T,_,List),last_element(List,E),!.




catch_warn(G):- catch(G,E,(wdmsg(catch_warn(G)-->E),fail)).
catch_nowarn(G):- catch(G,error(_,_),fail).

as_tf(G,TF):- catch_nowarn((call(G)*->TF='True';TF='False')).
eval_selfless(['==',X,Y],TF):- as_tf(X=:=Y,TF),!.
eval_selfless(['==',X,Y],TF):- as_tf(X=@=Y,TF),!.
eval_selfless(['=',X,Y],TF):-!,as_tf(X=Y,TF).
eval_selfless(['>',X,Y],TF):-!,as_tf(X>Y,TF).
eval_selfless(['<',X,Y],TF):-!,as_tf(X<Y,TF).
eval_selfless(['=>',X,Y],TF):-!,as_tf(X>=Y,TF).
eval_selfless(['<=',X,Y],TF):-!,as_tf(X=<Y,TF).

eval_selfless(['%',X,Y],TF):-!,eval_selfless(['mod',X,Y],TF).

eval_selfless(LIS,Y):-  notrace((
   LIS=[F,_,_], atom(F), catch_warn(current_op(_,yfx,F)),
   catch((LIS\=[_], s2p(LIS,IS), Y is IS),_,fail))),!.

% less Macro-ey Functions




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
:- discontiguous eval_args3/4.
%eval_args2(Depth,Self,PredDecl,Res):- eval_args3(Depth,Self,PredDecl,Res).

eval_args2(Depth,Self,PredDecl,Res):- eval_args34(Depth,Self,PredDecl,Res)*->true;PredDecl=Res.
%eval_args2(_Dpth,_Slf,L1,Res):- is_list(L1),maplist(self_eval,L1),!,Res=L1.
%eval_args2(_Depth,_Self,X,X).


is_user_defined_head(Other,[H|_]):- !, nonvar(H),!, is_user_defined_head_f(Other,H).
is_user_defined_head(Other,H):- callable(H),!,functor(H,F,_), is_user_defined_head_f(Other,F).
is_user_defined_head(Other,H):- is_user_defined_head_f(Other,H).

is_user_defined_head_f(Other,H):- metta_type(Other,H,_).
is_user_defined_head_f(Other,H):- metta_atom(Other,[H|_]).
is_user_defined_head_f(Other,H):- metta_defn(Other,[H|_],_).
%is_user_defined_head_f(_,H):- is_metta_builtin(H).


is_special_op(F):- \+ atom(F), \+ var(F), !, fail.
is_special_op('case').
is_special_op(':').
is_special_op('=').
is_special_op('->').
is_special_op('let').
is_special_op('let*').
is_special_op('if').
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
is_metta_builtin('%').
is_metta_builtin('==').
is_metta_builtin('<').
is_metta_builtin('>').
is_metta_builtin('all').
is_metta_builtin('import!').
is_metta_builtin('pragma!').


%metta_atom_iter(Depth,Other,H):- metta_atom(Other,H).
%metta_atom_iter(Depth,Other,H):- eval_arg(Depth,Other,H,_).

%eval_args3(Depth,Self,X,Y):- show_call(metta(eval),metta_atom_iter(Depth,Self,[=,X,Y])).

eval_args30(Depth,Self,[[H|Start]|T1],Y):- is_user_defined_head_f(Self,H),
   is_list(Start),!,append([H|Start],T1,HST),!,eval_args3(Depth,Self,HST,Y).
eval_args30(_Dpth,Self,[H|_],_):- \+ is_user_defined_head_f(Self,H),!,fail.
eval_args30(_Dpth,Self,CALL,Y):- append(Left,[Y],CALL),metta_defn(Self,Left,Y).
eval_args30(_Dpth,Self,[H|T1],Y):- metta_defn(Self,[H|T1],Y).
eval_args30(_Dpth,Self,[H|T1],'True'):- metta_atom(Self,[H|T1]).

eval_args3(Depth,Self,X,Y):-
   (eval_args30(Depth,Self,X,Y)*->true;metta_atom_iter(Depth,Self,[=,X,Y])).

eval_args3(Depth,Self,PredDecl,Res):- fail,
 ((term_variables(PredDecl,Vars),
  (metta_atom(Self,PredDecl) *-> (Vars ==[]->Res='True';Vars=Res);
   (eval_arg(Depth,Self,PredDecl,Res),ignore(Vars ==[]->Res='True';Vars=Res))))),
 PredDecl\=@=Res.

%eval_args3(Depth,Self,['ift',CR,Then],RO):- fail, !, %fail, % trace,
%   metta_defn(Self,['ift',R,Then],Become),eval_arg(Depth,Self,CR,R),eval_arg(Depth,Self,Then,_True),eval_arg(Depth,Self,Become,RO).

metta_atom_iter(Depth,_,_):- Depth<3,!,fail.
metta_atom_iter(_Dpth,_Slf,[]):-!.
metta_atom_iter(_Dpth,Other,H):- metta_atom(Other,H).
metta_atom_iter(Depth,Other,H):- D2 is Depth -1, metta_defn(Other,H,B),metta_atom_iter(D2,Other,B).
metta_atom_iter(_Dpth,Other,[Equal,H,B]):- '=' == Equal,!,
  (metta_defn(Other,H,B)*->true;(metta_atom(Other,H),B='True')).
metta_atom_iter(_Dpth,_Slf,[And]):- is_and(And),!.
metta_atom_iter(Depth,Self,[And,X|Y]):- is_and(And),!,D2 is Depth -1, metta_atom_iter(D2,Self,X),metta_atom_iter(D2,Self,[And|Y]).
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
sub_sterm1(Sub,List):- is_list(List),!,member(SL,List),sub_sterm(Sub,SL).
sub_sterm1(Sub,Term):- compound(Term),!,arg(_,Term,SL),sub_sterm(Sub,SL).

%not_compound(Term):- \+ is_list(Term),!.
%eval_args34(Depth,Self,Term,Res):- maplist(not_compound,Term),!,eval_args345(Depth,Self,Term,Res).


eval_args34(Depth,Self,[F|PredDecl],Res):-
   Depth>1,
   sub_sterm1(SSub,PredDecl), ground(SSub),SSub=[_|Sub], is_list(Sub),
   maplist(atomic,SSub),
   eval_arg(Depth,Self,SSub,Repl),
   SSub\=Repl,
   subst(PredDecl,SSub,Repl,Temp),!,
   eval_args34(Depth,Self,[F|Temp],Res).

eval_args34(Depth,Self,PredDecl,Res):-
   eval_args3(Depth,Self,PredDecl,Res)*->true;eval_args4(Depth,Self,PredDecl,Res).


eval_args4(Depth,Self,[F|X],FY):- is_function(F), \+ is_special_op(F), is_list(X),!,
  maplist(eval_arg(Depth,Self),X,Y), eval_args5(Depth,Self,[F|Y],FY).
eval_args4(Depth,Self,FX,FY):- eval_args5(Depth,Self,FX,FY).

eval_args5(_Dpth,_Slf,[F|LESS],Res):- once(eval_selfless([F|LESS],Res)),[F|LESS]\==Res,!.
eval_args5(_Dpth,_Slf,[AE|More],TF):- length(More,Len), is_predicate(AE,Len,Pred),!,catch_warn(as_tf(apply(Pred,More),TF)).
eval_args5(_Dpth,_Slf,[AE|More],TF):- length([AE|More],Len), is_predicate(AE,Len,Pred),append(More,[TF],Args),!,catch_warn(apply(Pred,Args)).

%eval_args4(Depth,Self,[X1|[F2|X2]],[Y1|Y2]):- is_function(F2),!,eval_arg(Depth,Self,[F2|X2],Y2),eval_arg(Depth,Self,X1,Y1).



'True':- true.
'False':- fail.



fn_append(List,X,Call):-
  fn_append1(List,X,ListX),
  into_fp(ListX,Call).

is_function(F):- atom(F).

is_False(X):- X\=='True', (is_False1(X)-> true ; (eval_arg(X,Y),is_False1(Y))).
is_False1(Y):- (Y==0;Y==[];Y=='False').

is_conz(Self):- compound(Self), Self=[_|_].

%dont_x(eval_arg(Depth,Self,metta_if(A<B,L1,L2),R)).
dont_x(eval_arg(_<_,_)).

into_fp(D,D):- \+ \+ dont_x(D),!.
into_fp(ListX,CallAB):-
  sub_term(STerm,ListX),needs_expanded(STerm,Term),
  %copy_term(Term,CTerm),
  =(Term,CTerm),
  substM(ListX,CTerm,Var,CallB), fn_append1(Term,Var,CallA),
  into_fp((CallA,CallB),CallAB).
into_fp(A,A).

needs_expand(Expand):- compound(Expand),functor(Expand,F,N),N>=1,atom_concat(metta_,_,F).
needs_expanded(eval_arg(Term,_),Expand):- !,sub_term(Expand,Term),compound(Expand),Expand\=@=Term,
   compound(Expand), \+ is_conz(Expand), \+ is_ftVar(Expand), needs_expand(Expand).
needs_expanded([A|B],Expand):- sub_term(Expand,[A|B]), compound(Expand), \+ is_conz(Expand), \+ is_ftVar(Expand), needs_expand(Expand).

fn_append1(eval_arg(Term,X),X,eval_arg(Term,X)):-!.
fn_append1(Term,X,eval_arg(Term,X)).


% Check if parentheses are balanced in a list of characters
balanced_parentheses(Chars) :- balanced_parentheses(Chars, 0).
balanced_parentheses([], 0).
balanced_parentheses(['('|T], N) :- N1 is N + 1, balanced_parentheses(T, N1).
balanced_parentheses([')'|T], N) :- N > 0, N1 is N - 1, balanced_parentheses(T, N1).
balanced_parentheses([H|T], N) :- H \= '(', H \= ')', balanced_parentheses(T, N).
% Recursive function to read lines until parentheses are balanced.
repl_read(NewAccumulated, Read):-
    atom_concat(Atom, '.', NewAccumulated),
    catch((read_term_from_atom(Atom, Term, []), Read=call(Term)), E,
       (write('Syntax error: '), writeq(E), nl, repl_read(Read))),!.
repl_read(NewAccumulated, Read):-
    normalize_space(string(Renew),NewAccumulated), Renew \== NewAccumulated, !,
    repl_read(Renew, Read).
repl_read(NewAccumulated,exec(Read)):- string_concat("!",Renew,NewAccumulated), !,
    repl_read(Renew, Read).
repl_read(NewAccumulated, Read):- string_chars(NewAccumulated, Chars),
    balanced_parentheses(Chars), length(Chars, Len), Len > 0, parse_sexpr_untyped(NewAccumulated, Read), !.
repl_read(Accumulated, Read) :- read_line_to_string(current_input, Line), repl_read(Accumulated, Line, Read).
repl_read(Accumulated, "", Read):- !, repl_read(Accumulated, Read).
repl_read(_Accumulated, Line, Read):- Line == end_of_file, !, Read = Line.
repl_read(Accumulated, Line, Read) :- atomics_to_string([Accumulated," ",Line], NewAccumulated), !,
    repl_read(NewAccumulated, Read).
repl_read(Read) :- notrace(repl_read("", Read)).



repl:-
   current_input(In),
   ignore(catch(load_history,_,true)),
   repeat, with_option(not_a_reload,true,make),
   ((nb_current(self_space,Self),Self\==[])->true;Self='&self'),
   format('~N~n'), format(atom(P),'metta@~w: ',[Self]),
   write(P),
   setup_call_cleanup(prompt(Was,''),
      (once(read_metta(In,Read)),once(do_repl(Self,Read))),
       prompt(_,Was)).
do_repl(_Self,end_of_file):- writeln('\n\n% To restart, use: ?- repl.').
do_repl(_Slf,call(Term)):- add_history1(Term), !, repl_call(Term),!, fail.

do_repl(Self,!):- !, repl_read(Exec),do_repl(Self,exec(Exec)).
do_repl(Self,Read):- string(Read),!,add_history_string(Read),repl_read(Read,Term), do_metta(Self,load,Term),!,fail.
do_repl(Self,exec(Exec)):- !, save_exec_history(Exec),!, time(do_metta_exec(Self,Exec)),!,fail.
do_repl(Self,Read):- (with_output_to(string(H),write_src(Read)),add_history_string(H)), do_metta(Self,load,Read),!,fail.

add_history_string(Str):- ignore(catch_i(add_history01(Str))),!.

save_exec_history(exec(Exec)):- !, notrace((save_exec_history(Exec))).
save_exec_history(Exec):- with_output_to(string(H),(write('!'),write_src(Exec))),add_history_string(H).

read_metta1(_,O2):- clause(t_l:s_reader_info(O2),_,Ref),erase(Ref).
read_metta1(In,Read):- current_input(In0),In==In0,!, repl_read(Read).
read_metta1(In,Read):- peek_char(In,Char), read_metta1(In,Char,Read).

read_metta1(In,Char,Read):- char_type(Char,white),get_char(In,Char),put(Char),!,read_metta1(In,Read).
read_metta1(In,';',Read):- read_line_to_string(In,Str),write_comment(Str),!,read_metta1(In,Read).
read_metta1(In,_,Read1):- parse_sexpr_untyped(In,Read),!,must_det_ll(Read=Read1).



read_metta(In,Read):-
 read_metta1(In,Read1),
  (Read1=='!'
     -> (read_metta1(In,Read2), Read=exec(Read2), save_exec_history(Read))
     ; Read = Read1),!.

write_comment(Cmt):- format('~N;~w~n',[Cmt]).
do_metta_cmt(_,'$COMMENT'(Cmt,_,_)):- write_comment(Cmt),!.
do_metta_cmt(_,'$STRING'(Cmt)):- write_comment(Cmt),!.
do_metta_cmt(Self,[Cmt]):- !, do_metta_cmt(Self, Cmt),!.


untyped_to_metta(U,O):- maybe_fix_vars(U,O).

mlog_sym('@').

maybe_fix_vars(I,exec(O)):- compound(I),I=exec(M),!,maybe_fix_vars(M,O).
maybe_fix_vars(I,O):-
 must_det_ll((
  mfix_vars1(I,M),
  cons_to_l(M,O))).
mfix_vars1(I,O):- var(I),!,I=O.
mfix_vars1([K,H|T],Cmpd):- atom(K),mlog_sym(K),is_list(T),mfix_vars1([H|T],[HH|TT]),atom(HH),is_list(TT),!,compound_name_arguments(Cmpd,HH,TT).
mfix_vars1([H|T],[HH|TT]):- !, mfix_vars1(H,HH),mfix_vars1(T,TT).
mfix_vars1(I,O):- compound(I),!,compound_name_arguments(I,F,II),maplist(mfix_vars1,II,OO),!,compound_name_arguments(O,F,OO).
mfix_vars1(I,O):- \+ atom(I),!,I=O.
mfix_vars1(I,'$VAR'(O)):- atom_concat('$',N,I),dvar_name(N,O).
mfix_vars1(I,I).


dvar_name(N,O):- atom(N),atom_number(N,Num),atom_concat('Num',Num,M),!,svar_fixvarname(M,O).
dvar_name(N,O):- number(N),atom_concat('Num',N,M),!,svar_fixvarname(M,O).
dvar_name('','__'):-!. % "$"
dvar_name('_','_'):-!. % "$_"
dvar_name(N,O):- svar_fixvarname(N,O),!.

cons_to_l3(Cons,[Cons0,H,T],[H|TT]):- !, Cons0==Cons,!, cons_to_l3(Cons,T,TT).
cons_to_l3(Cons,Nil0,T):- is_cf_nil(Cons,Nil),Nil0==Nil,!,T=[].
cons_to_l3(_Cons,A,A).

%simplify_cons(I,O):- I=['=', O, 'True'].
%simplify_cons(I,O):- I=['match','&self',O,'True'].
simplify_cons(I,O):- I=['And', 'True', O].
simplify_cons(I,O):- I=['And', O, 'True'].


cons_to_l(I,O):- var(I),!,O=I.
cons_to_l(I,O):- I=='Nil',!,O=[].
cons_to_l(I,O):- I=='nil',!,O=[].
cons_to_l(I,O):- I=='T',!,O='True'.
cons_to_l(I,O):- I=='F',!,O='False'.
%cons_to_l(I,O):- I==':=',!,O='='.
cons_to_l(I,O):- I==[quote, s],!, O=is.

cons_to_l(C,O):- \+ compound(C),!,O=C.
cons_to_l(I,O):- term_variables(I,IV), simplify_cons(I,O), maplist(var,IV),!.
cons_to_l('$STRING'(Res),Res):- !.
cons_to_l('$OBJ'(claz_bracket_vector,List),Res):- !, append(['['|List],[']'],Res),!.

%cons_to_l(N,NO):- cons_to_l3('Cons',N,NO),!.
cons_to_l([Cons,H,T],[HH|TT]):- atom(Cons),is_cons_f(Cons),!, cons_to_l(H,HH),cons_to_l(T,TT).
% dmiles % %cons_to_l([Cons|List],ListO):- Cons=='::',!,cons_to_l(List,ListO).
cons_to_l([H|T],[HH|TT]):- !, cons_to_l(H,HH),cons_to_l(T,TT).
cons_to_l(I,I).

is_cons_f(Cons):- is_cf_nil(Cons,_).
is_cf_nil('Cons','Nil').
is_cf_nil('::','nil').


subst_vars(TermWDV, NewTerm):-
   subst_vars(TermWDV, NewTerm, NamedVarsList),
   b_setval(variable_names,NamedVarsList).

subst_vars(TermWDV, NewTerm, NamedVarsList) :-
    subst_vars(TermWDV, NewTerm, [], NamedVarsList).

subst_vars(Term, Term, NamedVarsList, NamedVarsList) :- var(Term), !.
subst_vars([], [], NamedVarsList, NamedVarsList):- !.
subst_vars([TermWDV|RestWDV], [Term|Rest], Acc, NamedVarsList) :- !,
    subst_vars(TermWDV, Term, Acc, IntermediateNamedVarsList),
    subst_vars(RestWDV, Rest, IntermediateNamedVarsList, NamedVarsList).
subst_vars('$VAR'('_'), _, NamedVarsList, NamedVarsList) :- !.
subst_vars('$VAR'(VName), Var, Acc, NamedVarsList) :- nonvar(VName), svar_fixvarname(VName,Name), !,
    (memberchk(Name=Var, Acc) -> NamedVarsList = Acc ; ( !, Var = _, NamedVarsList = [Name=Var|Acc])).
subst_vars(Term, Var, Acc, NamedVarsList) :- atom(Term),atom_concat('$',DName,Term),
   dvar_name(DName,Name),!,subst_vars('$VAR'(Name), Var, Acc, NamedVarsList).

subst_vars(TermWDV, NewTerm, Acc, NamedVarsList) :-
    compound(TermWDV), !,
    compound_name_arguments(TermWDV, Functor, ArgsWDV),
    subst_vars(ArgsWDV, Args, Acc, NamedVarsList),
    compound_name_arguments(NewTerm, Functor, Args).
subst_vars(Term, Term, NamedVarsList, NamedVarsList).



:- nb_setval(variable_names,[]).


metta_anew1(load,OBO):- subst_vars(OBO,Cl),assert_if_new(Cl). %to_metta(Cl).
metta_anew1(unload,OBO):- subst_vars(OBO,Cl),ignore((clause(Cl,_,Ref),clause(Cl2,_,Ref),Cl=@=Cl2,erase(Ref),pp_m(Cl))).

metta_anew(Load,OBO):- pp_m(Load=OBO),metta_anew1(Load,OBO).

assert_to_metta(_):- reached_file_max,!.
assert_to_metta(OBO):-
 functor(OBO,Fn,A),
 ignore(( A>=2,A<700,
 must_det_ll((
  heartbeat,
  OBO=..[Fn|Cols],
  make_assertion4(Fn,Cols,Data,OldData),
  functor(Data,FF,AA),
  decl_fb_pred(FF,AA),
  ((fail,call(Data))->true;(
   must_det_ll((assert(Data),incr_file_count(_),
     ignore((((should_show_data(X),
       ignore((OldData\==Data,write('; oldData '),write_src(OldData),format('  ; ~w ~n',[X]))),
       write_src(Data),format('  ; ~w ~n',[X]))))),
     ignore((
       fail, option_value(output_stream,OutputStream),
       is_stream(OutputStream),
       should_show_data(X1),X1<1000,must_det_ll((display(OutputStream,Data),writeln(OutputStream,'.'))))))))))))),!.

assert_MeTTa(_):- reached_file_max,!.
assert_MeTTa(OBO):- assert_to_metta(OBO),!.
assert_MeTTa(Data):- !, heartbeat, functor(Data,F,A), A>=2,
   decl_fb_pred(F,A),
   incr_file_count(_),
   ignore((((should_show_data(X),
       write(newData(X)),write(=),write_src(Data))))),
   assert(Data),!.



:- dynamic((metta_type/3,metta_defn/3,metta_atom/2)).

into_space(Self,'&self',Self):-!.
into_space(_,Other,Other).
into_name(_,Other,Other).

%eval_f_args(Depth,Self,F,ARGS,[F|EARGS]):- maplist(eval_arg(Depth,Self),ARGS,EARGS).
self_eval(X):- var(X),!.
self_eval(X):- number(X),!.
self_eval([]).
self_eval(X):- is_list(X),!,fail.
%self_eval(X):- is_ref(X),!,fail.
self_eval(X):- atom(X),!.
self_eval('True'). self_eval('False').

combine_result(TF,R2,R2):- TF == [], !.
combine_result(TF,_,TF):-!.


do_metta1_e(_Self,_,exec(Exec)):- !,write_exec(Exec),!.
do_metta1_e(_Self,_,[=,A,B]):- !, with_concepts(false,
  (write('(= '), with_indents(false,write_src(A)), (is_list(B) -> nl ; true),write(' '),with_indents(true,write_src(B)),write(')'))),nl.
do_metta1_e(_Self,_LoadExec,Term):- write_src(Term),nl.

write_exec(Exec):-
  ignore((format('~N'),notrace((color_g_mesg('#004400',(write('!'),with_indents(false,write_src((Exec))))))),nl)).

do_metta(Self,LoadExec,Term):-
  once(maybe_fix_vars(Term,NewTerm)),Term\=@=NewTerm,!,
  do_metta(Self,LoadExec,NewTerm),!.
do_metta(Self,LoadExec,Term):- do_metta1(Self,LoadExec,Term)*->true;
                               pp_m(unknown_do_metta(Self,LoadExec,Term)).

do_metta1(Self,_,Cmt):- nonvar(Cmt),do_metta_cmt(Self,Cmt),!.

do_metta1(_Slf,load,exec(Exec)):- option_value('exec',skip),!,write_exec(Exec),!.
do_metta1(Self,_,exec(Exec)):- !,do_metta_exec(Self,Exec),!.
do_metta1(_Slf,exec,Exec):- option_value('exec',skip),!,write_exec(Exec),!.
do_metta1(Self,exec,Exec):- !,do_metta_exec(Self,Exec),!.

do_metta1(Self,Load,[':',Fn,TypeDecL]):- decl_length(TypeDecL,Len),LenM1 is Len - 1, last_element(TypeDecL,LE),
  color_g_mesg('#ffa500',metta_anew(Load,metta_type(Self,Fn,TypeDecL))),
  metta_anew1(Load,metta_arity(Self,Fn,LenM1)),
  arg_types(TypeDecL,[],EachArg),
  metta_anew1(Load,metta_params(Self,Fn,EachArg)),!,
  metta_anew1(Load,metta_last(Self,Fn,LE)).

do_metta1(Self,Load,[':',Fn,TypeDecL,RetType]):-
  decl_length(TypeDecL,Len),
  append(TypeDecL,[RetType],TypeDecLRet),
  color_g_mesg('#ffa500',metta_anew(Load,metta_type(Self,Fn,TypeDecLRet))),
  metta_anew1(Load,metta_arity(Self,Fn,Len)),
  arg_types(TypeDecL,[RetType],EachArg),
  metta_anew1(Load,metta_params(Self,Fn,EachArg)),
  metta_anew1(Load,metta_return(Self,Fn,RetType)).

/*do_metta1(Self,Load,PredDecl):- fail,
   metta_anew(Load,metta_atom(Self,PredDecl)),
   ignore((PredDecl=['=',Head,Body], metta_anew(Load,metta_defn(Self,Head,Body)))),
   ignore((Body == 'True',!,do_metta1(Self,Load,Head))),
   nop((fn_append(Head,X,Head), fn_append(PredDecl,X,Body), metta_anew((Head:- Body)))),!.*/

do_metta1(Self,Load,['=',PredDecl,True]):- True == 'True',!,
  discover_head(Self,Load,PredDecl),
  color_g_mesg('#ffa500',metta_anew(Load,metta_atom(Self,PredDecl))).

do_metta1(Self,Load,['=',PredDecl,False]):- (False == 'False';False == [];False == 'Nil';False == 'F'),!,
  discover_head(Self,Load,PredDecl),
  color_g_mesg('#ffa500',metta_anew(Load,metta_atom(Self,[=,PredDecl,'False']))).
  %metta_anew(Load,metta_atom(Self,PredDecl)).


do_metta1(Self,Load,['=',Head,PredDecl]):- !,
    discover_head(Self,Load,Head),
    color_g_mesg('#ffa500',metta_anew(Load,metta_defn(Self,Head,PredDecl))),
    discover_body(Self,Load,PredDecl),
    nop((fn_append(Head,X,Head),fn_append(PredDecl,X,Body), metta_anew((Head:- Body)))),!.

do_metta1(Self,Load,PredDecl):-
   discover_head(Self,Load,PredDecl),
   color_g_mesg('#ffa500',metta_anew(Load,metta_atom(Self,PredDecl))).

do_metta_exec(Self,Var):- var(Var), !, pp_m(eval(Var)), freeze(Var,wdmsg(laterVar(Self,Var))).
do_metta_exec(Self,TermV):-!,
  must_det_ll((
  \+ \+ write_exec(TermV),
  subst_vars(TermV,Term,NamedVarsList),
  copy_term(NamedVarsList,Was),
  term_variables(Term,Vars),
  skip((\+ \+
  ((numbervars(v(TermV,Term,NamedVarsList,Vars),999,_,[]),
  %nb_current(variable_names,NamedVarsList),
  nl,print(subst_vars(TermV,Term,NamedVarsList,Vars)),nl)))),
  nop(maplist(verbose_unify,Vars)),
  forall(may_rtrace(eval_arg(13,Self,Term,X)),
     ignore(notrace(((color_g_mesg(yellow,
     ((write(' '),
        write_src(X),nl,
        (NamedVarsList\=@=Was-> (color_g_mesg(green,writeq(NamedVarsList)),nl); true),
        ignore(( \+ is_list(X),compound(X),format(' % '),writeq(X),nl)))))))))))).

verbose_unify(Var):- put_attr(Var,verbose_unify,true).
verbose_unify:attr_unify_hook(Attr, Value) :-
    format('~N~q~n',[verbose_unify:attr_unify_hook(Attr, Value)]),
    (ground(Value)->true;trace).

:- nodebug(metta(exec)).
may_rtrace(Goal):-
(option_value('exec',rtrace);debugging(metta(exec))),!,
  rtrace(Goal).
may_rtrace(Goal):- call(Goal).


repl_call(Term):- catch_red(Term).

catch_red(Term):- catch(Term,E,pp_m(red,in(Term,E))).

s2p(I,O):- sexpr_sterm_to_pterm(I,O),!.


discover_head(Self,Load,[Fn|PredDecl]):-
 nop(( arg_types(PredDecl,[],EachArg),
  metta_anew(Load,metta_head(Self,Fn,EachArg)))).

discover_body(Self,Load,[Fn|PredDecl]):-
  nop(( arg_types(PredDecl,[],EachArg),
  metta_anew(Load,metta_body(Self,Fn,EachArg)))).

decl_length(TypeDecL,Len):- is_list(TypeDecL),!,length(TypeDecL,Len).
decl_length(_TypeDecL,1).

arg_types([['->'|L]],R,LR):-!, arg_types(L,R,LR).
arg_types(['->'|L],R,LR):-!, arg_types(L,R,LR).
arg_types(L,R,LR):- append(L,R,LR).




:- ignore(((
   \+ prolog_load_context(reloading,true),
   metta_final,
   load_history,
   loon))).

