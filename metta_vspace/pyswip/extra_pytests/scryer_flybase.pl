:- encoding(octet).
:- set_prolog_flag(encoding,octet).

% Safely executes the given Goal and prints any exception raised.
% Usage: safe(+Goal, +Info).
safe(Goal, Info) :-
    % Try to call Goal. If an exception is raised, unify Exception with the exception.
    catch(Goal, Exception, 
        % If an exception is raised, portray the clause (Info :- Goal) 
        % along with the exception, then rethrow the exception.
        (catch_ignore(portray_clause(exception:Exception:(Info:- Goal))), throw(Exception))
    ).
% Safely executes the given Goal and prints any exception raised.
% Usage: safe(+Goal).
safe(Goal) :- safe(Goal,safe/1).



% Calls the given Goal and throws an exception if Goal fails.
% Usage: must_det_ll(+Goal).
must_det_ll(M:Goal) :- !, must_det_ll(M,Goal).
must_det_ll(Goal) :- must_det_ll(user,Goal).

must_det_ll(_M,Goal) :- var(Goal),!,throw(var_must_det_ll(Goal)),!.
must_det_ll(M,Goal) :- var(M),!,strip_module(Goal,M,NewGoal),!,must_det_ll(M,NewGoal).
must_det_ll(M,(GoalA,GoalB)) :- !, must_det_ll(M,GoalA), must_det_ll(M,GoalB).
must_det_ll(M,(GoalA->GoalB;GoalC)) :- !, (call_ll(M,GoalA)-> must_det_ll(M,GoalB) ; must_det_ll(M,GoalC)).
must_det_ll(M,(GoalA*->GoalB;GoalC)) :- !, (call_ll(M,GoalA)*-> must_det_ll(M,GoalB) ; must_det_ll(M,GoalC)).
must_det_ll(M,(GoalA->GoalB)) :- !, (call_ll(M,GoalA)-> must_det_ll(M,GoalB)).
must_det_ll(_,M:Goal) :- !, must_det_ll(M,Goal).
must_det_ll(M,Goal) :-
    % Call Goal, succeed with true if Goal succeeds.
    M:call(Goal) -> true ; % If Goal fails, throw an exception indicating that Goal failed.
      throw(failed(Goal)).


call_ll(_M,Goal):- var(Goal),!,throw(var_call_ll(Goal)),!.
call_ll(M,Goal):- var(M),!,strip_module(Goal,M,NewGoal),!,call_ll(M,NewGoal).
call_ll(M,Goal):- M:call(Goal).
 
nop(_).


extreme_debug(_).
catch_ignore(G):- ignore(catch(G,E,catch_i((nl,writeq(G=E),nl)))).
catch_i(G):- ignore(catch(G,_,true)).

fbug(N=V) :- nonvar(N), !, fbdebug1(N:-V).
fbug(V) :- compound(V),functor(V,F,_A),!,fbdebug1(F:-V).
fbug(V) :- fbdebug1(debug:-V).
fbdebug1(Message) :- 
  % ISO Standard: flush_output/1
  flush_output(user_output),
  flush_output(user_error),
  catch(portray_clause(user_error,Message,[]),_,catch_ignore(format(user_error, "~n/* ~q. */~n", [Message]))),
  %format(user_error, "~n/* ~p. */~n", [Message]),
  flush_output(user_error).

% Check if the given atom contains the given subatom.
% Usage: atom_contains(+Atom1, +SubAtom).
atom_contains(Atom1, SubAtom) :- sub_atom(Atom1, _Before, _, _After, SubAtom).

swi_only(_):- is_scryer,!,fail.
swi_only(G):- call(G).
is_scryer:- \+  current_prolog_flag(libswipl,_).
:- use_module(library(csv)).

%:- current_prolog_flag(libswipl,_)->use_module(library(logicmoo_utils)); true.


kaggle_arc:- setup_call_cleanup(
     working_directory(X, '/opt/logicmoo_workspace/packs_sys/logicmoo_agi/prolog/kaggle_arc/'),
     ensure_loaded(kaggle_arc),
     working_directory(_,X)). 

% Convert flybase data from CSV to Prolog format.
load_flybase:- is_scryer,!,load_flybase_files.
load_flybase:- !,load_flybase_files.
load_flybase:- load_flybase_dirs.
load_flybase_dirs:- 
  load_flybase('das_precomputed'),
  load_flybase('precomputed_files/*'),
  load_flybase('./*sv'),!.






load_flybase_files:-  % 47 tables
  load_flybase('das_precomputed/gene_genetic_interactions_fb_2022_06.tsv'),
  load_flybase('das_precomputed/fbgn_fbtr_fbpp_expanded_fb_2022_06.tsv'),
  load_flybase('das_precomputed/dmel_gene_sequence_ontology_annotations_fb_2022_06.tsv'),
  load_flybase('das_precomputed/physical_interactions_mitab_fb_2022_06.tsv'),
  load_flybase('das_precomputed/gene_map_table_fb_2022_06.tsv'),
  load_flybase('das_precomputed/dmel_human_orthologs_disease_fb_2022_06.tsv'),
  load_flybase('das_precomputed/disease_model_annotations_fb_2022_06.tsv'),
  load_flybase('das_precomputed/ncRNA_genes_fb_2022_06.json'),
  load_flybase('das_precomputed/gene_association.tsv'),
  load_flybase('das_precomputed/allele_genetic_interactions_fb_2022_06.tsv'),
  load_flybase('das_precomputed/allele_phenotypic_data_fb_2022_06.tsv'),
  load_flybase('das_precomputed/fbrf_pmid_pmcid_doi_fb_2022_06.tsv'),
  load_flybase('precomputed_files/transposons/transposon_sequence_set.gff.tsv'),
  load_flybase('precomputed_files/alleles/fbal_to_fbgn_fb_2022_06.tsv'),
  load_flybase('precomputed_files/map_conversion/cyto-genetic-seq.tsv'),
  load_flybase('precomputed_files/map_conversion/cytotable.txt.tsv'),
  load_flybase('precomputed_files/map_conversion/genome-cyto-seq.txt.tsv'),
  load_flybase('precomputed_files/genes/fbgn_annotation_ID_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/gene_functional_complementation_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/Dmel_enzyme_data_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/fbgn_fbtr_fbpp_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/fbgn_NAseq_Uniprot_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/automated_gene_summaries.tsv'),
  load_flybase('precomputed_files/genes/gene_group_data_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/best_gene_summary_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/fbgn_exons2affy2_overlaps.tsv'),
  load_flybase('precomputed_files/genes/gene_groups_HGNC_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/pathway_group_data_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/gene_rpkm_report_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/gene_snapshots_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/fbgn_exons2affy1_overlaps.tsv'),
  load_flybase('precomputed_files/genes/fbgn_annotation_ID.tsv'),
  load_flybase('precomputed_files/genes/automated_gene_summaries_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/gene_rpkm_matrix_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/dmel_unique_protein_isoforms_fb_2022_06.tsv'),
  load_flybase('precomputed_files/genes/fbgn_gleanr_fb_2022_06.tsv'),
  load_flybase('precomputed_files/synonyms/fb_synonym_fb_2022_06.tsv'),
  load_flybase('precomputed_files/insertions/fu_gal4_table_fb_2022_06.json'),
  load_flybase('precomputed_files/insertions/insertion_mapping_fb_2022_06.tsv'),
  load_flybase('precomputed_files/references/entity_publication_fb_2022_06.tsv'),
  load_flybase('precomputed_files/collaborators/fbgn_uniprot_fb_2022_06.tsv'),
  load_flybase('precomputed_files/collaborators/pmid_fbgn_uniprot_fb_2022_06.tsv'),
  load_flybase('precomputed_files/clones/cDNA_clone_data_fb_2022_06.tsv'),
  load_flybase('precomputed_files/clones/genomic_clone_data_fb_2022_06.tsv'),
  load_flybase('precomputed_files/stocks/stocks_FB2022_06.tsv'),
  load_flybase('precomputed_files/orthologs/dmel_paralogs_fb_2022_06.tsv'),
  load_flybase('precomputed_files/species/organism_list_fb_2022_06.tsv'),
  %load_flybase('precomputed_files/metadata/dataset_metadata_fb_2022_06.tsv'),
  %load_flybase('precomputed_files/transposons/transposon_sequence_set.fa'),


  load_flybase('precomputed_files/ontologies/gene_group_FB2022_06.obo'),
  load_flybase('precomputed_files/ontologies/chebi_fb_2022_06.obo'),
  load_flybase('precomputed_files/ontologies/slice.chebi.obo'),
  load_flybase('precomputed_files/ontologies/fly_anatomy.obo'),
  load_flybase('precomputed_files/ontologies/doid.obo'),
  load_flybase('precomputed_files/ontologies/psi-mi.obo'),
  load_flybase('precomputed_files/ontologies/so-simple.obo'),
  load_flybase('precomputed_files/ontologies/flybase_controlled_vocabulary.obo'),
  load_flybase('precomputed_files/ontologies/go-basic.obo'),
  load_flybase('precomputed_files/ontologies/fly_development.obo'),
  load_flybase('precomputed_files/ontologies/flybase_stock_vocabulary.obo'),
  load_flybase('precomputed_files/ontologies/image.obo'),
  !.
  % load_flybase('./*sv'),!.



% Load flybase data in Prolog format.
load_fb_cache:- 
  load_fb_mask('das_precomputed/*.pl'),
  load_fb_mask('precomputed_files/*/*pl'),
  load_fb_mask('flybase_data/public.*.pl'),
  load_fb_mask('flybase_data/*fb_2023_01.pl').

% Process a file or directory path with a given predicate.
with_wild_path(Predicate, Dir) :- extreme_debug(fbug(with_wild_path(Predicate, Dir))),fail.
with_wild_path(_Predicate, []) :- !.
with_wild_path(Predicate, Dir) :-  is_scryer, atom(Dir), !, must_det_ll((atom_chars(Dir,Chars), with_wild_path(Predicate, Chars))).
with_wild_path(Predicate, Chars) :-  \+ is_scryer, \+ atom(Chars), !, must_det_ll((name(Atom,Chars), with_wild_path(Predicate, Atom))).
with_wild_path(Predicate, Dir) :-  exists_directory(Dir), !, 
  must_det_ll((directory_files(Dir, Files), 
  maplist(directory_file_path(Dir,Files),Paths),
  maplist(atom_chars,Paths,CharPaths),
  maplist(with_wild_path(Predicate), CharPaths))), !.
with_wild_path(Predicate, File) :- exists_file(File), !, must_det_ll(( call(Predicate, File))).
with_wild_path(Predicate, File) :- is_list(File), !,  must_det_ll((maplist(with_wild_path(Predicate), File))).
with_wild_path(Predicate, File) :- with_wild_path_swi(Predicate, File).
with_wild_path(Predicate, File) :- must_det_ll((call(Predicate, File))).


with_wild_path_swi(Predicate, File) :- 
  compound(File), 
  absolute_file_name(File, Dir, [access(read), file_errors(fail), file_type(directory)]),
  '\\=@='(Dir, File), !, 
  with_wild_path(Predicate, Dir).
with_wild_path_swi(Predicate, File) :- 
  compound(File), !, 
  absolute_file_name(File, Dir, [access(read), file_errors(fail), file_type(['csv', 'tsv', ''])]),
  '\\=@='(Dir, File), !, 
  with_wild_path(Predicate, Dir).
with_wild_path_swi(Predicate, File) :- 
  atom_contains(File, '*'), 
  expand_file_name(File, List), !, 
  maplist(with_wild_path(Predicate), List).
with_wild_path_swi(Predicate, File) :- 
  exists_directory(File),
  directory_file_path(File, '*.*sv', Wildcard), 
  expand_file_name(Wildcard, List), !, 
  maplist(Predicate, List).


/*
%encoding_trial('iso-8859-1').
%encoding_trial('us-ascii').
%encoding_trial('utf-8').
encoding_trial(ascii).
encoding_trial(iso_latin_1).
encoding_trial(octet).
encoding_trial(text).
encoding_trial(unicode_be).
encoding_trial(unicode_le).
encoding_trial(utf8).
encoding_trial(wchar_t).

try_encoding:- 'allele_genetic_interactions'('14-3-3epsilon[18A2]',X,Y,Z),
  encoding_trial(ET),set_stream(current_output,encoding(ET)),catch(write(ET=[X,Y,Z]),_,fail),fail.
*/

load_fb_mask(Filename):- is_scryer,atom(Filename),name(Filename,Chars),!,load_fb_mask(Chars).
load_fb_mask(Filename):- expand_file_name(Filename,Files1),maplist(load_fb_cache,Files1).
load_fb_cache(File):- with_wild_path(load_fb_cache0,File).
load_fb_cache0(File):- file_name_extension(Name,_E,File),
  atomic_list_concat([Pub,Table],'.',Name),
  atomic_list_concat([Pub,Table,qlf],'.',OutputFile),!,
  load_fb_cache(File,OutputFile,Table).
load_fb_cache0(File):- file_name_extension(Name,_E,File),
  atomic_list_concat([Table],'.',Name),
  atomic_list_concat([Table,qlf],'.',OutputFile),
  load_fb_cache(File,OutputFile,Table).

load_fb_cache(_File,OutputFile,_Table):- exists_file(OutputFile),!,ensure_loaded(OutputFile),!.
load_fb_cache(File,_OutputFile,_Table):- load_files([File],[qcompile(large)]).

load_flybase(File):- with_wild_path(load_flybase0,File),!.

load_flybase0(File):- file_name_extension(Name,Ext,File), 
  load_flybase0(Ext,Name,File).

load_flybase0(Ext,_Name,_File):-  Ext=='pl',!.

load_flybase0(Ext,Name,File):-  
  atomic_list_concat([Name,'pl'],'.',OutputFile),
  data_pred(Name,Table), load_flybase(Ext,File,OutputFile,Table).

%load_flybase2:- load_flybase('allele_genetic_interactions_fb_2023_01.tsv','allele_genetic_interactions_fb_2023_01.pl',allele_genetic_interactions).
%load_flybase(_Ext,_File,OutputFile,_Table):- exists_file(OutputFile),size_file(OutputFile,N),N>100,!.
load_flybase(Ext,File,OutputFile,Table):-  Ext==obo,!,load_fb_obo(Ext,File,OutputFile,Table).
load_flybase(Ext,File,OutputFile,Table):-  Ext==json,!,load_fb_json(Ext,File,OutputFile,Table).
load_flybase(Ext,File,OutputFile,Table):-  
  extreme_debug(fbug(load_flybase(Ext,File,OutputFile,Table))),
  setup_call_cleanup(open(File,read,Stream),
       setup_call_cleanup(open(OutputFile,write,OutputStream,[encoding(utf8)]),
           time(load_flybase(Ext,File,Stream,OutputStream,Table)),
    close(OutputStream)),
  close(Stream)),!,fb_statistics.

load_fb_json(Ext,File,OutputFile,Table):- fbug(load_fb_json(Ext,File,OutputFile,Table)).
load_fb_obo(Ext,File,OutputFile,Table):- extreme_debug(fbug(load_fb_obo(Ext,File,OutputFile,Table))).
  

data_pred(X,Y):- atomic_list_concat(List,'/',X),List\==[],List\=[_],!,last(List,L),data_pred(L,Y).
data_pred(X,Y):- atomic_list_concat(List,'_',X),once(not_trimmed_path(List,NewList)),
  NewList\==[],NewList\==List,atomic_list_concat(NewList,'_',Y),!.
data_pred(X,Y):- atomic_list_concat([L,_|_],'_fb_',X),!,data_pred(L,Y).
data_pred(X,X).

is_trimmed_path(X):- atom_contains(X,'0'),!.
is_trimmed_path('fb').
is_trimmed_path('data').
%is_trimmed_path(Atom):- atom_chars(Atom,Chars), read_term_from_chars(Chars,Term,[]),number(Term),!.
not_trimmed_path([H|List],NewList):- is_trimmed_path(H),!,not_trimmed_path(List,NewList).
not_trimmed_path([H|List],[H|NewList]):- !, not_trimmed_path(List,NewList).
not_trimmed_path([],[]).


%file_to_sep(_File,9).
file_to_sep(File,','):- file_name_extension(_,csv,File),!.
file_to_sep(File,'\t'):- file_name_extension(_,tsv,File),!.



load_flybase(_Ext,File,Stream,OutputStream,Table):- 
 must_det_ll((
  ignore(swi_only(format(OutputStream,":- ~q.\n",[encoding(utf8)]))),
  atomic_list_concat([header,Table],'_',HeaderPred),
  atomic_list_concat([data,Table],'_',DataPred0),
  data_pred(DataPred0,DataPred),
  file_to_sep(File,Sep),
  load_flybase_sv(File,Stream,HeaderPred,DataPred,Sep,OutputStream,Table))).
  
is_swipl:- \+ is_scryer.

:- if(is_scryer).
read_line_to_chars(S,L):- is_scryer,!,get_line_to_chars(S,L,[]).
:- endif.
read_line_to_chars(S,L):- read_line_to_string(S,Str),string_chars(Str,L).


% Assert a given term if no variant of it already exists in the database.
% Usage: fb_assert(+Term).
fb_assert(Term) :-
    % Check if Term is a rule (Head :- Body) or a fact (just Head).
    ( Term = (Head :- Body) 
    -> copy_term(Body, CopiedBody)
    ; (Head = Term, CopiedBody = true)
    ),
    % Copy the Head to generate a new term with fresh variables.
    copy_term(Head, CopiedHead),
    % If no variant of CopiedHead exists in the database with the same body,
    % assert Term; otherwise, succeed without asserting Term.
    ( \+ (clause(CopiedHead, CopiedBody), variant(CopiedHead, Head))
    -> assertz(Term)
    ; true
    ).

:- dynamic(done_reading/1).

load_flybase_sv(File,Stream,HeaderPred,DataPred,Sep,OutputStream,Table):- at_end_of_stream(Stream),!,
  once(load_fb_data(File,Stream,HeaderPred,DataPred,Sep,end_of_file,OutputStream,Table)).
load_flybase_sv(File,Stream,HeaderPred,DataPred,Sep,OutputStream,Table):- 
  flag(max_load,_,0),
  repeat,
  read_line_to_chars(Stream, Chars),  
  once(load_flybase_chars(File,Stream,HeaderPred,DataPred,Sep,Chars,OutputStream,Table)),
  once(done_reading(File);at_end_of_stream(Stream)),!,
  once(load_fb_data(File,Stream,HeaderPred,DataPred,Sep,end_of_file,OutputStream,Table)),
  flag(max_load,X,X),!,
  fbug(loaded(File)=X).


save_conversion_data(Names,Table,OutputStream,Data):- maplist(write_flybase_data(Names,Table,OutputStream),Data).

is_really_header_row([H|_],_Names):- atom_concat('#',_,H),!.

load_flybase_chars(File,_Stream,_HeaderPred,_DataPred,Sep,Chars,_OutputStream,_Table):- 
  \+ member(Sep,Chars),
  %writeln(comment(Sep)=Chars),!,
  extreme_debug(format("~n ; ~s",[Chars])),
  ignore((flag(max_load,X,X),X>100,!,assert(done_reading(File)))).


load_flybase_chars(File,Stream,_HeaderPred,DataPred,Sep,Chars,OutputStream,Table):- is_swipl,
  name(Sep,[SepCode]),
  csv_options(CompiledHeaderOptions,[separator(SepCode)]),
  open_string(Chars,CharsStream),
  csv_read_row(CharsStream, HeaderRow, CompiledHeaderOptions),
  %csv_read_file_row(File, HeaderRow, [functor(HeaderPred)]),
  HeaderRow=..[_|Header],
  maplist(fix_header_names(Header,Table),Header,Names),
  (is_really_header_row(Header,Names)
    -> (fbug(t_h_n(Table,Header,Names)),fb_assert(t_h_n(Table,Header,Names)))
     ; (fbug('NO_HEADER'(Table,Header,Names)),
         Data =.. [DataPred|Header],
        write_flybase_data(Names,Table,OutputStream,Data))),

  load_fb_data(File,Stream,Names,DataPred,Sep,is_swipl,OutputStream,Table).


:- if(is_scryer).
load_flybase_chars(File,Stream,HeaderPred,DataPred,Sep,Chars,OutputStream,Table):- 
  once(phrase(parse_csv(Data,[with_header(false), token_separator(Sep)]), Chars)),
  once(load_fb_data(File,Stream,HeaderPred,DataPred,Sep,Data,OutputStream,Table)).

load_fb_data(File,Stream,HeaderPred,DataPred,Sep,frame([],Data),OutputStream,Table):- !,
   load_fb_data(File,Stream,HeaderPred,DataPred,Sep,Data,OutputStream,Table).
load_fb_data(File,Stream,HeaderPred,DataPred,Sep,[Data],OutputStream,Table):- !,https://www.youtube.com/watch?v=UQHYpARSOL8&pp=ygUQZGF1Z2h0ZXIgY3VkZGxlcw%3D%3D
   maplist(into_atom_or_var,Data,DataL),
   load_fb_data(File,Stream,HeaderPred,DataPred,Sep,DataL,OutputStream,Table).
load_fb_data(File,Stream,HeaderPred,DataPred,Sep,[D|Data],OutputStream,Table):-!,  
  DataP =.. [DataPred,D|Data],
  load_fb_data(File,Stream,HeaderPred,DataPred,Sep,DataP,OutputStream,Table).
load_fb_data(File,_Stream,_Header,_DataPred,_Sep,Data,OutputStream,_Table):-  
 ignore((functor(Data,_,A),A>=2,
  flag(max_load,X,X+1),
  (  X>100_000 -> assert(done_reading(File)) ;
  (ignore((functor(Data,_,A),A>=2,
    fb_assert(Data),
    ignore((fail,(X<10 ; 0 is X rem 25_000),fbug(X=Data))),
    catch_ignore(must_det_ll((display(OutputStream,Data),writeln(OutputStream,'.')))))))))),!.
:- endif.

load_fb_data(File,_Stream,_Header,_DataPred,_Sep,Data,_OutputStream,_Table):-  
  (Data == end_of_file;done_reading(File)),!.

load_fb_data(File,Stream,Header,DataPred,Sep,is_swipl,OutputStream,Table):- is_swipl,  
  \+ done_reading(File),
   name(Sep,[SepCode]),
  csv_options(CompiledOptions,[functor(DataPred),separator(SepCode)]),
   repeat, 
     once((csv_read_row(Stream, Data, CompiledOptions))),
     flag(max_load,X,X),
     %display(Data),nl,
     (((Data== end_of_file);(number(Max),X>Max)) -> assert(done_reading(File)) ; 
       (write_flybase_data(Header,Table,OutputStream,Data),fail)),!.

write_flybase_data(Header,_Table,OutputStream,Data):-
  has_list(Header),
  fix_list_args(Header,Data,NewData),!,
  write_flybase_data1(Header,Data,OutputStream,NewData).
write_flybase_data(Header,_Table,OutputStream,NewData):-
  write_flybase_data1(Header,NewData,OutputStream,NewData),!.
write_flybase_data1(Header,OldData,OutputStream,Data):-
  flag(max_load,X,X+1),
  ignore((functor(Data,_,A),A>=2,
    fb_assert(Data),
    ignore((((has_list(Header),X<10); (X>0,(0 is X rem 50_000))),fbug(X=Data),ignore((fail,OldData\==Data,fbug(oldData=OldData))))),
    catch_ignore(ignore((X<1000,must_det_ll((display(OutputStream,Data),writeln(OutputStream,'.')))))))),!.

has_list(Header):- is_list(Header),member(listOf(_),Header).


fix_list_args(Header,Data,NewData):- Data=..[F|Args],
  fix_elist_args(Header,Args,NewArgs),
  NewData=..[F|NewArgs],
  extreme_debug(ignore(((NewData \== Data,fbug(NewData))))).


fix_elist_args([listOf(_)|Header],[A|Args],[New|NewArgs]):- as_list(A,New),!, fix_elist_args(Header,Args,NewArgs).
fix_elist_args([_|Header],[A|Args],[A|NewArgs]):-!, fix_elist_args(Header,Args,NewArgs).
fix_elist_args(_,X,X).

as_list(A,New):- is_list(A),!,New = A.
as_list(A,New):- var(A),!,New = [].
as_list('-',[]).
as_list('',[]).
as_list(' ',[]).
as_list(A,List):- atom(A), member(Sep,['|',',',';',' ']),catch_ignore(atomic_list_concat(List,Sep,A)),List\=[_],!.
as_list(A,[A]).




too_generic(Var):- var(Var),!,fail.
too_generic(pub_id).
too_generic(X):- \+ atomic_list_concat([_,_,_|_],'_',X).


fix_header_names(FL,Table,ID,Out):- member(RF,[' ','_']),atom_concat(MID,RF,ID),!,fix_header_names(FL,Table,MID,Out).
fix_header_names(FL,Table,ID,Out):- member(RF,['#',' ','_']),atom_concat(RF,MID,ID),!,fix_header_names(FL,Table,MID,Out).
fix_header_names(FL,Table,ID,Out):- member(RF,['__',' ']),atomic_list_concat(MIDL,RF,ID),MIDL\=[_],atomic_list_concat(MIDL,'_',MID),!,
   fix_header_names(FL,Table,MID,Out).
fix_header_names(FL,Table,ID,listOf(AOut)):- member(RF,['(es)','(s)']),atomic_list_concat([Left,Right],RF,ID),atomic_list_concat([Left,Right],'_',MID),!,
   fix_header_names(FL,Table,MID,AOut),!. % atom_concat('ListOf_',AOut,Out),!.
fix_header_names(_,_,Name,Name):- \+ too_generic(Name),!.
fix_header_names(_,_,Name,Name):- atomic_list_concat([_,_|_],'_',Name),!.
%fix_header_names(_,Table,ID,Out):- atomic_list_concat([Table,ID],'_column_',Out).
%fix_header_names(FieldList,Table,ID,Out):- atomic_list_concat([Table,ID],'_',Out), \+ member(Out,FieldList).
fix_header_names(_,_,Name,Name).


pmt :-flybase_tables(FBT),forall(member(T,FBT), ( '\\+'(flybase_cols(T,_)) -> format('~N~q.~n',[get_fbt(T)]);true)).
use_flybase_cols(Table,Columns):-
 must_det_ll((
  maplist(fix_header_names(Columns,Table),Columns,Names),  
  assert(flybase_col_names(Table,Columns,Names)),
  do_arity_2_names(Table,Names))).

do_arity_2_names(Table,[ID|Names]):-
  must_det_ll((
  atom_concat('data_',Table,F),
  length([ID|Names],Arity),
  length(Args,Arity),
  DataCall=..[F|Args],
  do_arity_2_names_dc(Table,DataCall,2,Names))).

do_arity_2_names_dc(Table,DataCall,N,[Nth|Names]):-
  do_arity_2_names_dc1(Table,DataCall,N,Nth),!,
  N2 is N+1, do_arity_2_names_dc(Table,DataCall,N2,Names).
do_arity_2_names_dc(_Table,_DataCall,_N,[]).

do_arity_2_names_dc1(Table,DataCall,N,Nth):-
 must_det_ll((
  arg(1,DataCall,Arg1Data),
  arg(N,DataCall,Arg2Data),
  make_arity_2_name(Table,Nth,Arity2),
  Arg1=..[Table,Arg1Data],
  clip_id(Nth,NthNoID),
  (Nth==NthNoID -> Arg2=Arg2Data ;  Arg2 =..[NthNoID,Arg2Data]),
  Arity2Call=..[Arity2,Arg1,Arg2],
  fbug((Arity2Call:-DataCall)),
  fb_assert((Arity2Call:-DataCall)))).
  
make_arity_2_name(Table,Nth,Arity2):-
  clip_id(Nth,NthNoID),
  (atom_concat(Table,_,Nth)
    -> Arity2 = Nth 
    ; atomic_list_concat([Table,NthNoID],'_',Arity2)).


clip_id(Nth,ID):- (atom_concat(ID,'_id',Nth)->true;Nth=ID),!.




setup_flybase_cols:- forall(flybase_cols(Table,Columns),
  use_flybase_cols(Table,Columns)).

%:- load_flybase("das_precomputed/allele_genetic_interactions_fb_2022_06.tsv").




flybase_cols(allele_genetic_interactions,['##allele_symbol','allele_FBal#',interaction,'FBrf#']).

flybase_cols(analysis,[ analysis_id,name,description,program,programversion,algorithm,sourcename,sourceversion,sourceuri,timeexecuted]).
flybase_cols(analysisfeature,[ analysisfeature_id,feature_id,analysis_id,rawscore,normscore,significance,identity]).
flybase_cols(analysisgrp,[ analysisgrp_id,rawscore,normscore,significance,identity,analysis_id,grp_id]).
flybase_cols(analysisgrpmember,[ analysisgrpmember_id,rawscore,normscore,significance,identity,analysis_id,grpmember_id]).
flybase_cols(analysisprop,[ analysisprop_id,analysis_id,type_id,value]).
flybase_cols(audit_chado,[ audit_transaction,transaction_timestamp,userid,audited_table,record_pkey,record_ukey_cols,record_ukey_vals,audited_cols,audited_vals]).

flybase_cols(cell_line,[ cell_line_id,name,uniquename,organism_id,timeaccessioned,timelastmodified]).
flybase_cols(cell_line_loaderm,[ cell_line_loaderm_id,cell_line_id,loaderm_id,pub_id,rank]).
flybase_cols(cell_line_loadermprop,[ cell_line_loadermprop_id,cell_line_loaderm_id,type_id,value,rank]).
flybase_cols(cell_line_dbxref,[ cell_line_dbxref_id,cell_line_id,dbxref_id,is_current]).
flybase_cols(cell_line_feature,[ cell_line_feature_id,cell_line_id,feature_id,pub_id]).
flybase_cols(cell_line_library,[ cell_line_library_id,cell_line_id,library_id,pub_id]).
flybase_cols(cell_line_libraryprop,[ cell_line_libraryprop_id,cell_line_library_id,type_id,value,rank]).
flybase_cols(cell_line_relationship,[ cell_line_relationship_id,subject_id,object_id,type_id]).
flybase_cols(cell_line_strain,[ cell_line_strain_id,strain_id,cell_line_id,pub_id]).
flybase_cols(cell_line_strainprop,[ cell_line_strainprop_id,cell_line_strain_id,type_id,value,rank]).
flybase_cols(cell_line_synonym,[ cell_line_synonym_id,cell_line_id,synonym_id,pub_id,is_current,is_internal]).
flybase_cols(cell_lineprop,[ cell_lineprop_id,cell_line_id,type_id,value,rank]).
flybase_cols(cell_lineprop_pub,[ cell_lineprop_pub_id,cell_lineprop_id,pub_id]).
flybase_cols(cell_line_pub,[ cell_line_pub_id,cell_line_id,pub_id]).
flybase_cols(contact,[ contact_id,description,name]).
flybase_cols(cv,[ cv_id,name,definition]).
flybase_cols(loaderm,[ loaderm_id,cv_id,definition,dbxref_id,is_obsolete,is_relationshiptype,name]).
flybase_cols(loaderm_dbxref,[ loaderm_dbxref_id,loaderm_id,dbxref_id,is_for_definition]).
flybase_cols(loaderm_relationship,[ loaderm_relationship_id,type_id,subject_id,object_id]).
flybase_cols(loadermpath,[ loadermpath_id,type_id,subject_id,object_id,cv_id,pathdistance]).
flybase_cols(loadermprop,[ loadermprop_id,loaderm_id,type_id,value,rank]).
flybase_cols(loadermsynonym,[ loadermsynonym_id,loaderm_id,name,type_id]).
flybase_cols(db,[ db_id,name,contact_id,description,urlprefix,url]).
flybase_cols(dbxref,[ dbxref_id,db_id,accession,version,description,url]).
flybase_cols(dbxrefprop,[ dbxrefprop_id,dbxref_id,type_id,value,rank]).
flybase_cols(eimage,[ eimage_id,eimage_data,eimage_type,image_uri]).
flybase_cols(environment,[ environment_id,uniquename,description]).
flybase_cols(environment_loaderm,[ environment_loaderm_id,environment_id,loaderm_id]).
flybase_cols(expression,[ expression_id,uniquename,md5checksum,description]).
flybase_cols(expression_loaderm,[ expression_loaderm_id,expression_id,loaderm_id,rank,loaderm_type_id]).
flybase_cols(expression_loadermprop,[ expression_loadermprop_id,expression_loaderm_id,type_id,value,rank]).
flybase_cols(expression_image,[ expression_image_id,expression_id,eimage_id]).
flybase_cols(expressionprop,[ expressionprop_id,expression_id,type_id,value,rank]).
flybase_cols(expression_pub,[ expression_pub_id,expression_id,pub_id]).
flybase_cols(feature,[ feature_id,dbxref_id,organism_id,name,uniquename,residues,seqlen,md5checksum,type_id,is_analysis,timeaccessioned,timelastmodified,is_obsolete]).
flybase_cols(feature_loaderm,[ feature_loaderm_id,feature_id,loaderm_id,pub_id,is_not]).
flybase_cols(feature_loaderm_dbxref,[ feature_loaderm_dbxref_id,feature_loaderm_id,dbxref_id]).
flybase_cols(feature_loadermprop,[ feature_loadermprop_id,feature_loaderm_id,type_id,value,rank]).
flybase_cols(feature_dbxref,[ feature_dbxref_id,feature_id,dbxref_id,is_current]).
flybase_cols(feature_expression,[ feature_expression_id,expression_id,feature_id,pub_id]).
flybase_cols(feature_expressionprop,[ feature_expressionprop_id,feature_expression_id,type_id,value,rank]).
flybase_cols(feature_genotype,[ feature_genotype_id,feature_id,genotype_id,chromosome_id,rank,cgroup,loaderm_id]).
flybase_cols(feature_grpmember,[ feature_grpmember_id,grpmember_id,feature_id]).
flybase_cols(feature_grpmember_pub,[ feature_grpmember_pub_id,pub_id,feature_grpmember_id]).
flybase_cols(feature_humanhealth_dbxref,[ feature_humanhealth_dbxref_id,humanhealth_dbxref_id,feature_id,pub_id]).
flybase_cols(feature_interaction,[ feature_interaction_id,feature_id,interaction_id,role_id,rank]).
flybase_cols(feature_interactionprop,[ feature_interactionprop_id,feature_interaction_id,type_id,value,rank]).
flybase_cols(feature_interaction_pub,[ feature_interaction_pub_id,feature_interaction_id,pub_id]).
flybase_cols(feature_phenotype,[ feature_phenotype_id,feature_id,phenotype_id]).
flybase_cols(feature_pubprop,[ feature_pubprop_id,feature_pub_id,type_id,value,rank]).
flybase_cols(feature_relationship,[ feature_relationship_id,subject_id,object_id,type_id,rank,value]).
flybase_cols(feature_relationshipprop,[ feature_relationshipprop_id,feature_relationship_id,type_id,value,rank]).
flybase_cols(feature_relationshipprop_pub,[ feature_relationshipprop_pub_id,feature_relationshipprop_id,pub_id]).
flybase_cols(feature_relationship_pub,[ feature_relationship_pub_id,feature_relationship_id,pub_id]).
flybase_cols(feature_synonym,[ feature_synonym_id,synonym_id,feature_id,pub_id,is_current,is_internal]).
flybase_cols(featureloc,[ featureloc_id,feature_id,srcfeature_id,fmin,is_fmin_partial,fmax,is_fmax_partial,strand,phase,residue_info,locgroup,rank]).
flybase_cols(featureloc_pub,[ featureloc_pub_id,featureloc_id,pub_id]).
flybase_cols(featuremap,[ featuremap_id,name,description,unittype_id]).
flybase_cols(featuremap_pub,[ featuremap_pub_id,featuremap_id,pub_id]).
flybase_cols(featurepos,[ featurepos_id,featuremap_id,feature_id,map_feature_id,mappos]).
flybase_cols(featureprop,[ featureprop_id,feature_id,type_id,value,rank]).
flybase_cols(featureprop_pub,[ featureprop_pub_id,featureprop_id,pub_id]).
flybase_cols(feature_pub,[ feature_pub_id,feature_id,pub_id]).
flybase_cols(featurerange,[ featurerange_id,featuremap_id,feature_id,leftstartf_id,leftendf_id,rightstartf_id,rightendf_id,rangestr]).
flybase_cols(genotype,[ genotype_id,uniquename,description,name,is_obsolete]).
flybase_cols(genotype_loaderm,[ genotype_loaderm_id,genotype_id,loaderm_id,pub_id,is_not,rank]).
flybase_cols(genotype_loadermprop,[ genotype_loadermprop_id,genotype_loaderm_id,type_id,value,rank]).
flybase_cols(genotype_dbxref,[ genotype_dbxref_id,genotype_id,dbxref_id,is_current]).
flybase_cols(genotype_synonym,[ genotype_synonym_id,genotype_id,synonym_id,pub_id,is_current,is_internal]).
flybase_cols(genotypeprop,[ genotypeprop_id,genotype_id,type_id,value,rank,cvalue_id]).
flybase_cols(genotypeprop_pub,[ genotypeprop_pub_id,genotypeprop_id,pub_id]).
flybase_cols(genotype_pub,[ genotype_pub_id,genotype_id,pub_id]).
flybase_cols(grp,[ grp_id,name,uniquename,type_id,is_analysis,is_obsolete]).
flybase_cols(grp_loaderm,[ grp_loaderm_id,is_not,loaderm_id,grp_id,pub_id]).
flybase_cols(grp_dbxref,[ grp_dbxref_id,is_current,dbxref_id,grp_id]).
flybase_cols(grp_pubprop,[ grp_pubprop_id,value,rank,type_id,grp_pub_id]).
flybase_cols(grp_relationship,[ grp_relationship_id,value,rank,type_id,subject_id,object_id]).
flybase_cols(grp_relationshipprop,[ grp_relationshipprop_id,value,rank,type_id,grp_relationship_id]).
flybase_cols(grp_relationship_pub,[ grp_relationship_pub_id,pub_id,grp_relationship_id]).
flybase_cols(grp_synonym,[ grp_synonym_id,synonym_id,grp_id,pub_id,is_current,is_internal]).
flybase_cols(grpmember,[ grpmember_id,rank,type_id,grp_id]).
flybase_cols(grpmember_loaderm,[ grpmember_loaderm_id,is_not,loaderm_id,grpmember_id,pub_id]).
flybase_cols(grpmemberprop,[ grpmemberprop_id,value,rank,type_id,grpmember_id]).
flybase_cols(grpmemberprop_pub,[ grpmemberprop_pub_id,pub_id,grpmemberprop_id]).
flybase_cols(grpmember_pub,[ grpmember_pub_id,pub_id,grpmember_id]).
flybase_cols(grpprop,[ grpprop_id,value,rank,type_id,grp_id]).
flybase_cols(grpprop_pub,[ grpprop_pub_id,pub_id,grpprop_id]).
flybase_cols(grp_pub,[ grp_pub_id,pub_id,grp_id]).
flybase_cols(humanhealth,[ humanhealth_id,name,uniquename,organism_id,dbxref_id,is_obsolete]).
flybase_cols(humanhealth_loaderm,[ humanhealth_loaderm_id,humanhealth_id,loaderm_id,pub_id]).
flybase_cols(humanhealth_loadermprop,[ humanhealth_loadermprop_id,humanhealth_loaderm_id,type_id,value,rank]).
flybase_cols(humanhealth_dbxref,[ humanhealth_dbxref_id,humanhealth_id,dbxref_id,is_current]).
flybase_cols(humanhealth_dbxrefprop,[ humanhealth_dbxrefprop_id,humanhealth_dbxref_id,type_id,value,rank]).
flybase_cols(humanhealth_dbxrefprop_pub,[ humanhealth_dbxrefprop_pub_id,humanhealth_dbxrefprop_id,pub_id]).
flybase_cols(humanhealth_feature,[ humanhealth_feature_id,humanhealth_id,feature_id,pub_id]).
flybase_cols(humanhealth_featureprop,[ humanhealth_featureprop_id,humanhealth_feature_id,type_id,value,rank]).
flybase_cols(humanhealth_phenotype,[ humanhealth_phenotype_id,humanhealth_id,phenotype_id,pub_id]).
flybase_cols(humanhealth_phenotypeprop,[ humanhealth_phenotypeprop_id,humanhealth_phenotype_id,type_id,value,rank]).
flybase_cols(humanhealth_pubprop,[ humanhealth_pubprop_id,value,rank,type_id,humanhealth_pub_id]).
flybase_cols(humanhealth_relationship,[ humanhealth_relationship_id,subject_id,object_id,type_id,value,rank]).
flybase_cols(humanhealth_relationship_pub,[ humanhealth_relationship_pub_id,humanhealth_relationship_id,pub_id]).
flybase_cols(humanhealth_synonym,[ humanhealth_synonym_id,humanhealth_id,synonym_id,pub_id,is_current,is_internal]).
flybase_cols(humanhealthprop,[ humanhealthprop_id,humanhealth_id,type_id,value,rank]).
flybase_cols(humanhealthprop_pub,[ humanhealthprop_pub_id,humanhealthprop_id,pub_id]).
flybase_cols(humanhealth_pub,[ humanhealth_pub_id,humanhealth_id,pub_id]).
flybase_cols(interaction,[ interaction_id,uniquename,type_id,description,is_obsolete]).
flybase_cols(interaction_cell_line,[ interaction_cell_line_id,cell_line_id,interaction_id,pub_id]).
flybase_cols(interaction_loaderm,[ interaction_loaderm_id,interaction_id,loaderm_id]).
flybase_cols(interaction_loadermprop,[ interaction_loadermprop_id,interaction_loaderm_id,type_id,value,rank]).
flybase_cols(interaction_expression,[ interaction_expression_id,expression_id,interaction_id,pub_id]).
flybase_cols(interaction_expressionprop,[ interaction_expressionprop_id,interaction_expression_id,type_id,value,rank]).
flybase_cols(interaction_group,[ interaction_group_id,uniquename,is_obsolete,description]).
flybase_cols(interaction_group_feature_interaction,[ interaction_group_feature_interaction_id,interaction_group_id,feature_interaction_id,rank,ftype]).
flybase_cols(interactionprop,[ interactionprop_id,interaction_id,type_id,value,rank]).
flybase_cols(interactionprop_pub,[ interactionprop_pub_id,interactionprop_id,pub_id]).
flybase_cols(interaction_pub,[ interaction_pub_id,interaction_id,pub_id]).
flybase_cols(library,[ library_id,organism_id,name,uniquename,type_id,is_obsolete,timeaccessioned,timelastmodified]).
flybase_cols(library_loaderm,[ library_loaderm_id,library_id,loaderm_id,pub_id]).
flybase_cols(library_loadermprop,[ library_loadermprop_id,library_loaderm_id,type_id,value,rank]).
flybase_cols(library_dbxref,[ library_dbxref_id,library_id,dbxref_id,is_current]).
flybase_cols(library_dbxrefprop,[ library_dbxrefprop_id,library_dbxref_id,type_id,value,rank]).
flybase_cols(library_expression,[ library_expression_id,expression_id,library_id,pub_id]).
flybase_cols(library_expressionprop,[ library_expressionprop_id,library_expression_id,type_id,value,rank]).
flybase_cols(library_feature,[ library_feature_id,library_id,feature_id]).
flybase_cols(library_featureprop,[ library_featureprop_id,library_feature_id,type_id,value,rank]).
flybase_cols(library_grpmember,[ library_grpmember_id,grpmember_id,library_id]).
flybase_cols(library_humanhealth,[ library_humanhealth_id,humanhealth_id,library_id,pub_id]).
flybase_cols(library_humanhealthprop,[ library_humanhealthprop_id,library_humanhealth_id,type_id,value,rank]).
flybase_cols(library_interaction,[ library_interaction_id,interaction_id,library_id,pub_id]).
flybase_cols(library_relationship,[ library_relationship_id,subject_id,object_id,type_id]).
flybase_cols(library_relationship_pub,[ library_relationship_pub_id,library_relationship_id,pub_id]).
flybase_cols(library_strain,[ library_strain_id,strain_id,library_id,pub_id]).
flybase_cols(library_strainprop,[ library_strainprop_id,library_strain_id,type_id,value,rank]).
flybase_cols(library_synonym,[ library_synonym_id,synonym_id,library_id,pub_id,is_current,is_internal]).
flybase_cols(libraryprop,[ libraryprop_id,library_id,type_id,value,rank]).
flybase_cols(libraryprop_pub,[ libraryprop_pub_id,libraryprop_id,pub_id]).
flybase_cols(library_pub,[ library_pub_id,library_id,pub_id]).
flybase_cols(lock,[ lock_id,username,locktype,lockname,lockrank,lockstatus,timeaccessioend,timelastmodified,chadoxmlfile,comment,task]).
flybase_cols(organism,[ organism_id,abbreviation,genus,species,common_name,comment]).
flybase_cols(organism_loaderm,[ organism_loaderm_id,organism_id,loaderm_id,rank,pub_id]).
flybase_cols(organism_loadermprop,[ organism_loadermprop_id,organism_loaderm_id,type_id,value,rank]).
flybase_cols(organism_dbxref,[ organism_dbxref_id,organism_id,dbxref_id,is_current]).
flybase_cols(organism_grpmember,[ organism_grpmember_id,grpmember_id,organism_id]).
flybase_cols(organism_library,[ organism_library_id,organism_id,library_id]).
flybase_cols(organismprop,[ organismprop_id,organism_id,type_id,value,rank]).
flybase_cols(organismprop_pub,[ organismprop_pub_id,organismprop_id,pub_id]).
flybase_cols(organism_pub,[ organism_pub_id,organism_id,pub_id]).
flybase_cols(phendesc,[ phendesc_id,genotype_id,environment_id,description,type_id,pub_id]).
flybase_cols(phenotype,[ phenotype_id,uniquename,observable_id,attr_id,value,cvalue_id,assay_id]).
flybase_cols(phenotype_comparison,[ phenotype_comparison_id,genotype1_id,environment1_id,genotype2_id,environment2_id,phenotype1_id,phenotype2_id,pub_id,organism_id]).
flybase_cols(phenotype_comparison_loaderm,[ phenotype_comparison_loaderm_id,phenotype_comparison_id,loaderm_id,rank]).
flybase_cols(phenotype_loaderm,[ phenotype_loaderm_id,phenotype_id,loaderm_id,rank]).
flybase_cols(phenstatement,[ phenstatement_id,genotype_id,environment_id,phenotype_id,type_id,pub_id]).
flybase_cols(project,[ project_id,name,description]).
flybase_cols(pub,[ pub_id,title,volumetitle,volume,series_name,issue,pyear,pages,miniref,type_id,is_obsolete,publisher,pubplace,uniquename]).
flybase_cols(pub_dbxref,[ pub_dbxref_id,pub_id,dbxref_id,is_current]).
flybase_cols(pub_relationship,[ pub_relationship_id,type_id,subject_id,object_id]).
flybase_cols(pubauthor,[ pubauthor_id,pub_id,rank,editor,surname,givennames,suffix]).
flybase_cols(pubprop,[ pubprop_id,pub_id,type_id,value,rank]).
flybase_cols(stock,[ stock_id,dbxref_id,organism_id,name,uniquename,description,type_id,is_obsolete]).
flybase_cols(stock_loaderm,[ stock_loaderm_id,stock_id,loaderm_id,pub_id]).
flybase_cols(stock_dbxref,[ stock_dbxref_id,stock_id,dbxref_id,is_current]).
flybase_cols(stock_genotype,[ stock_genotype_id,stock_id,genotype_id]).
flybase_cols(stock_relationship,[ stock_relationship_id,subject_id,object_id,type_id,value,rank]).
flybase_cols(stock_relationship_pub,[ stock_relationship_pub_id,stock_relationship_id,pub_id]).
flybase_cols(stockcollection,[ stockcollection_id,type_id,contact_id,name,uniquename]).
flybase_cols(stockcollection_stock,[ stockcollection_stock_id,stockcollection_id,stock_id]).
flybase_cols(stockcollectionprop,[ stockcollectionprop_id,stockcollection_id,type_id,value,rank]).
flybase_cols(stockprop,[ stockprop_id,stock_id,type_id,value,rank]).
flybase_cols(stockprop_pub,[ stockprop_pub_id,stockprop_id,pub_id]).
flybase_cols(stock_pub,[ stock_pub_id,stock_id,pub_id]).
flybase_cols(strain,[ strain_id,name,uniquename,organism_id,dbxref_id,is_obsolete]).
flybase_cols(strain_loaderm,[ strain_loaderm_id,strain_id,loaderm_id,pub_id]).
flybase_cols(strain_loadermprop,[ strain_loadermprop_id,strain_loaderm_id,type_id,value,rank]).
flybase_cols(strain_dbxref,[ strain_dbxref_id,strain_id,dbxref_id,is_current]).
flybase_cols(strain_feature,[ strain_feature_id,strain_id,feature_id,pub_id]).
flybase_cols(strain_featureprop,[ strain_featureprop_id,strain_feature_id,type_id,value,rank]).
flybase_cols(strain_phenotype,[ strain_phenotype_id,strain_id,phenotype_id,pub_id]).
flybase_cols(strain_phenotypeprop,[ strain_phenotypeprop_id,strain_phenotype_id,type_id,value,rank]).
flybase_cols(strain_relationship,[ strain_relationship_id,subject_id,object_id,type_id,value,rank]).
flybase_cols(strain_relationship_pub,[ strain_relationship_pub_id,strain_relationship_id,pub_id]).
flybase_cols(strain_synonym,[ strain_synonym_id,strain_id,synonym_id,pub_id,is_current,is_internal]).
flybase_cols(strainprop,[ strainprop_id,strain_id,type_id,value,rank]).
flybase_cols(strainprop_pub,[ strainprop_pub_id,strainprop_id,pub_id]).
flybase_cols(strain_pub,[ strain_pub_id,strain_id,pub_id]).
flybase_cols(synonym,[ synonym_id,name,type_id,synonym_sgml]).
flybase_cols(tableinfo,[ tableinfo_id,name,primary_key_column,is_view,view_on_table_id,superclass_table_id,is_updateable,modification_date]).
flybase_cols(update_track,[ update_track_id,release,fbid,time_update,author,statement,comment,annotation_id]).

flybase_tables([
analysis, analysisfeature, analysisgrp, analysisgrpmember, analysisprop, audit_chado, cell_line, cell_line_loaderm, cell_line_loadermprop, 
cell_line_dbxref, cell_line_feature, cell_line_library, cell_line_libraryprop, cell_line_pub, cell_line_relationship, cell_line_strain, 
cell_line_strainprop, cell_line_synonym, cell_lineprop, cell_lineprop_pub, contact, cv, loaderm, loaderm_dbxref, loaderm_relationship, 
loadermpath, loadermprop, loadermsynonym, db, dbxref, dbxrefprop, eimage, environment, environment_loaderm, expression, expression_loaderm, 
expression_loadermprop, expression_image, expression_pub, expressionprop, feature, feature_loaderm, feature_loaderm_dbxref, 
feature_loadermprop, feature_dbxref, feature_expression, feature_expressionprop, feature_genotype, feature_grpmember, 
feature_grpmember_pub, feature_humanhealth_dbxref, feature_interaction, feature_interaction_pub, feature_interactionprop, 
feature_phenotype, feature_pub, feature_pubprop, feature_relationship, feature_relationship_pub, feature_relationshipprop, 
feature_relationshipprop_pub, feature_synonym, featureloc, featureloc_pub, featuremap, featuremap_pub, featurepos, featureprop, 
featureprop_pub, featurerange, genotype, genotype_loaderm, genotype_loadermprop, genotype_dbxref, genotype_pub, genotype_synonym, 
genotypeprop, genotypeprop_pub, grp, grp_loaderm, grp_dbxref, grp_pub, grp_pubprop, grp_relationship, grp_relationship_pub, 
grp_relationshipprop, grp_synonym, grpmember, grpmember_loaderm, grpmember_pub, grpmemberprop, grpmemberprop_pub, grpprop, 
grpprop_pub, humanhealth, humanhealth_loaderm, humanhealth_loadermprop, humanhealth_dbxref, humanhealth_dbxrefprop, 
humanhealth_dbxrefprop_pub, humanhealth_feature, humanhealth_featureprop, humanhealth_phenotype, humanhealth_phenotypeprop, 
humanhealth_pub, humanhealth_pubprop, humanhealth_relationship, humanhealth_relationship_pub, humanhealth_synonym, humanhealthprop, 
humanhealthprop_pub, interaction, interaction_cell_line, interaction_loaderm, interaction_loadermprop, interaction_expression, 
interaction_expressionprop, interaction_group, interaction_group_feature_interaction, interaction_pub, interactionprop, 
interactionprop_pub, library, library_loaderm, library_loadermprop, library_dbxref, library_dbxrefprop, library_expression, 
library_expressionprop, library_feature, library_featureprop, library_grpmember, library_humanhealth, library_humanhealthprop, 
library_interaction, library_pub, library_relationship, library_relationship_pub, library_strain, library_strainprop, library_synonym,
 libraryprop, libraryprop_pub, lock, organism, organism_loaderm, organism_loadermprop, organism_dbxref, organism_grpmember, 
 organism_library, organism_pub, organismprop, organismprop_pub, phendesc, phenotype, phenotype_comparison, phenotype_comparison_loaderm,
  phenotype_loaderm, phenstatement, project, pub, pub_dbxref, pub_relationship, pubauthor, pubprop, sql_features, sql_implementation_info, 
  sql_parts, sql_sizing, stock, stock_loaderm, stock_dbxref, stock_genotype, stock_pub, stock_relationship, stock_relationship_pub, 
  stockcollection, stockcollection_stock, stockcollectionprop, stockprop, stockprop_pub, strain, strain_loaderm, strain_loadermprop, 
  strain_dbxref, strain_feature, strain_featureprop, strain_phenotype, strain_phenotypeprop, 
strain_pub, strain_relationship, strain_relationship_pub, strain_synonym, strainprop, strainprop_pub, synonym, tableinfo, update_track]).


%:- initialization(load_flybase).

