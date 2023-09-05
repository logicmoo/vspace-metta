:- encoding(octet).
:- set_prolog_flag(encoding,octet).
:- set_prolog_flag(max_per_file,inf+0).
:- set_prolog_flag(max_per_file,10_000_000).
:- set_prolog_flag(max_per_file,inf).
:- set_prolog_flag(max_per_file,1_000_000).
:- set_prolog_flag(max_per_file,inf).


:- multifile(is_pre_statistic/2).
:- dynamic(is_pre_statistic/2).
save_pre_statistic(Name):- is_pre_statistic(Name,_)-> true; (statistics(Name,AS),term_number(AS,FN),assert(is_pre_statistic(Name,FN))).
pre_statistic(N,V):- is_pre_statistic(N,V)-> true ; V = 0.
post_statistic(N,V):- statistics(N,VV),term_number(VV,FV),pre_statistic(N,WV), V0 is FV-WV, (V0>0 -> V=V0 ; V=0).
term_number(T,N):- sub_term(N,T),number(N).

/*
:- ensure_loaded('./reqs/obo_core/prolog/obo_core/goslim.pl').
:- ensure_loaded('./reqs/obo_metadata/prolog/obo_metadata.pl').
:- ensure_loaded('./reqs/obo_metadata/prolog/obo_metadata/iao_metadata.pl').
:- ensure_loaded('./reqs/obo_metadata/prolog/obo_metadata/oio.pl').
:- ensure_loaded('./reqs/obo_ro/prolog/obo_ro/ro.pl').
*/
:- attach_packs('./reqs',[]).
:- ensure_loaded(library(obo_metadata)).
:- goslim:ensure_loaded(library(obo_core/goslim)).
:- ensure_loaded(library(obo_ro/ro)).
:- ensure_loaded(swi_support).


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



gc_now:- set_prolog_flag(gc,true), garbage_collect,garbage_collect_atoms,garbage_collect_clauses.

extreme_debug(_).


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

swi_only(_):- is_scryer,!,fail.
swi_only(G):- call(G).
is_scryer:- \+  current_prolog_flag(libswipl,_).
:- use_module(library(csv)).

%:- current_prolog_flag(libswipl,_)->use_module(library(logicmoo_utils)); true.


option_value(N,V):- nb_current(N,VV),!,V=VV.
option_value(N,V):- current_prolog_flag(N,VV),!,V=VV.
option_value(_N,V):- !,V=[].
with_option_value(N,V,G):-  option_value(N,W),
  setup_call_cleanup(nb_setval(N,V),
     setup_call_cleanup(set_prolog_flag(N,V),G,
        set_prolog_flag(N,W)),
              nb_setval(N,W)).



/* mine
; Total         Atoms (Atomspace size): .................................................. 56,354,849
;               ConceptNodes: ............................................................. 9,472,616
;               Bytes Per Atom (Average): ....................................................... 140
;               Bytes Per ConceptNode (Average): ................................................ 120
;               Relational Memory: ............................................................ 7.39G
;               ConceptNode Memory: ........................................................... 1.07G
;               Atoms per minute: ......................................................... 3,491,880
;               Total Physical Memory Used: ................................................... 9.08G
;               Runtime (days:hh:mm:ss): ................................................. 0:00:16:08

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*/
% Convert flybase data from CSV to Prolog format.
load_flybase:- is_scryer,!,load_flybase_files.
load_flybase:- !,flag(total_atoms,_,0),load_flybase_files,fb_stats.
load_flybase:- load_flybase_dirs.
load_flybase_dirs:-
  load_flybase('das_precomputed'),
  load_flybase('precomputed_files/*'),
  load_flybase('./*sv'),!.




load_flybase_files2:-  % 47 tables
  w_load_option(use_va,t,load_flybase('./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_exons2affy1_overlaps.tsv')),
  w_load_option(use_va,t,load_flybase('./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_exons2affy2_overlaps.tsv')),
  load_flybase('./data/ftp.flybase.net/releases/current/precomputed_files/'),
  !.


load_flybase_files:-  % 47 tables

  % DAS's 11 files

  load_flybase('precomputed_files/*/allele_genetic_interactions_fb_*.tsv'),
  load_flybase('precomputed_files/*/allele_phenotypic_data_fb_*.tsv'),
  load_flybase('precomputed_files/*/disease_model_annotations_fb_*.tsv'),
  load_flybase('precomputed_files/*/dmel_gene_sequence_ontology_annotations_fb_*.tsv'),
  load_flybase('precomputed_files/*/dmel_human_orthologs_disease_fb_*.tsv'),
  load_flybase('precomputed_files/*/fbgn_fbtr_fbpp_expanded_fb_*.tsv'),
  load_flybase('precomputed_files/*/fbrf_pmid_pmcid_doi_fb_*.tsv'),
  load_flybase('precomputed_files/*/gene_association_*.fb',tsv),
  load_flybase('precomputed_files/*/gene_genetic_interactions_fb_*.tsv'),
  load_flybase('precomputed_files/*/gene_map_table_fb_*.tsv'),
  load_flybase('precomputed_files/*/ncRNA_genes_fb_*.json'),
  load_flybase('precomputed_files/*/physical_interactions_mitab_fb_*.tsv'),

  % 36 more that DAS doesnt load
  load_flybase('precomputed_files/alleles/fbal_to_fbgn_fb_*.tsv'),
  %load_flybase('precomputed_files/alleles/genotype_phenotype_data_fb_*.tsv'),
  load_flybase('precomputed_files/clones/cDNA_clone_data_fb_*.tsv'),
  load_flybase('precomputed_files/clones/genomic_clone_data_fb_*.tsv'),
  load_flybase('precomputed_files/collaborators/fbgn_uniprot_fb_*.tsv'),
  %load_flybase('precomputed_files/collaborators/gp_information.fb'),
  load_flybase('precomputed_files/collaborators/pmid_fbgn_uniprot_fb_*.tsv'),
  load_flybase('precomputed_files/genes/automated_gene_summaries.tsv'),
  load_flybase('precomputed_files/genes/automated_gene_summaries_fb_*.tsv'),
  load_flybase('precomputed_files/genes/best_gene_summary_fb_*.tsv'),
  load_flybase('precomputed_files/genes/Dmel_enzyme_data_fb_*.tsv'),
  load_flybase('precomputed_files/genes/dmel_unique_protein_isoforms_fb_*.tsv'),
  load_flybase('precomputed_files/genes/fbgn_annotation_ID_fb_*.tsv'),
  w_load_option(use_va,t,load_flybase('precomputed_files/genes/fbgn_exons2affy1_overlaps.tsv')),
  w_load_option(use_va,t,load_flybase('precomputed_files/genes/fbgn_exons2affy2_overlaps.tsv')),
  load_flybase('precomputed_files/genes/fbgn_fbtr_fbpp_fb_*.tsv'),
  load_flybase('precomputed_files/genes/fbgn_gleanr_fb_*.tsv'),
  load_flybase('precomputed_files/genes/fbgn_NAseq_Uniprot_fb_*.tsv'),
  load_flybase('precomputed_files/genes/gene_functional_complementation_fb_*.tsv'),
  load_flybase('precomputed_files/genes/gene_group_data_fb_*.tsv'),
  load_flybase('precomputed_files/genes/gene_groups_HGNC_fb_*.tsv'),
  load_flybase('precomputed_files/genes/gene_rpkm_matrix_fb_*.tsv'),
  load_flybase('precomputed_files/genes/gene_rpkm_report_fb_*.tsv'),
  load_flybase('precomputed_files/genes/gene_snapshots_fb_*.tsv'),
  load_flybase('precomputed_files/genes/pathway_group_data_fb_*.tsv'),
  %load_flybase('precomputed_files/genes/scRNA-Seq_gene_expression_fb_*.tsv'),
  %load_flybase('precomputed_files/insertions/construct_maps.zip'),
  load_flybase('precomputed_files/insertions/fu_gal4_table_fb_*.json'),
  load_flybase('precomputed_files/insertions/insertion_mapping_fb_*.tsv'),
  load_flybase('precomputed_files/map_conversion/cyto-genetic-seq.tsv'),
  load_flybase('precomputed_files/map_conversion/cytotable.txt',tsv),
  load_flybase('precomputed_files/map_conversion/genome-cyto-seq.txt',tsv),
  load_flybase('precomputed_files/metadata/dataset_metadata_fb_*.tsv'),
  load_flybase('precomputed_files/orthologs/dmel_paralogs_fb_*.tsv'),
  load_flybase('precomputed_files/references/entity_publication_fb_*.tsv'),
  load_flybase('precomputed_files/species/organism_list_fb_*.tsv'),
  load_flybase('precomputed_files/stocks/stocks_FB*.tsv'),
  load_flybase('precomputed_files/synonyms/fb_synonym_fb_*.tsv'),
  %load_flybase('precomputed_files/transposons/transposon_sequence_set.fa'),
  load_flybase('precomputed_files/transposons/transposon_sequence_set.gff',tsv),


  load_flybase('precomputed_files/ontologies/chebi_fb_*.obo'),
  load_flybase('precomputed_files/ontologies/doid.obo'),
  load_flybase('precomputed_files/ontologies/fly_anatomy.obo'),
  load_flybase('precomputed_files/ontologies/fly_development.obo'),
  load_flybase('precomputed_files/ontologies/flybase_controlled_vocabulary.obo'),
  load_flybase('precomputed_files/ontologies/flybase_stock_vocabulary.obo'),
  load_flybase('precomputed_files/ontologies/gene_group_FB*.obo'),
  load_flybase('precomputed_files/ontologies/go-basic.obo'),
  load_flybase('precomputed_files/ontologies/image.obo'),
  load_flybase('precomputed_files/ontologies/psi-mi.obo'),
  load_flybase('precomputed_files/ontologies/slice.chebi.obo'),
  load_flybase('precomputed_files/ontologies/so-simple.obo'),
  !.
  % load_flybase('./*sv'),!.



% Load flybase data in Prolog format.
load_fb_cache:-
  load_fb_mask('precomputed_files/*/*pl'),
  load_fb_mask('flybase_data/public.*.pl'),
  load_fb_mask('flybase_data/*fb_2023_01.pl').

% Process a file or directory path with a given predicate.
with_wild_path(Predicate, Dir) :- extreme_debug(fbug(with_wild_path(Predicate, Dir))),fail.
with_wild_path(_Predicate, []) :- !.
with_wild_path(Predicate, Dir) :-  is_scryer, atom(Dir), !, must_det_ll((atom_chars(Dir,Chars), with_wild_path(Predicate, Chars))).
with_wild_path(Predicate, Chars) :-  \+ is_scryer, \+ atom(Chars), !, must_det_ll((name(Atom,Chars), with_wild_path(Predicate, Atom))).
with_wild_path(Predicate, File) :- exists_file(File), !, must_det_ll(( call(Predicate, File))).
with_wild_path(Predicate, File) :- with_wild_path_swi(Predicate, File).
with_wild_path(Predicate, Dir) :-  exists_directory(Dir), !,
  must_det_ll((directory_files(Dir, Files),
  maplist(directory_file_path(Dir,Files),Paths),
  maplist(atom_chars,Paths,CharPaths),
  maplist(with_wild_path(Predicate), CharPaths))), !.
with_wild_path(Predicate, File) :- is_list(File), !,  must_det_ll((maplist(with_wild_path(Predicate), File))).
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

load_flybase(File,_).
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
           load_flybase(Ext,File,Stream,OutputStream,Table),
    close(OutputStream)),
  close(Stream)),!,fb_stats.


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
  time((repeat,
  read_line_to_chars(Stream, Chars),
  once(load_flybase_chars(File,Stream,HeaderPred,DataPred,Sep,Chars,OutputStream,Table)),
  once(done_reading(File);at_end_of_stream(Stream)),!,
  once(load_fb_data(File,Stream,HeaderPred,DataPred,Sep,end_of_file,OutputStream,Table)))),
  flag(max_load,X,X),!,
  flag(total_atoms,TA,TA+X),!,
  fb_stats(DataPred),
  pl_stats(File,X).


%save_conversion_data(Names,Table,OutputStream,Data):- maplist(write_flybase_data(Names,Table,OutputStream),Data).

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
        write_flybase_data(Names,Table,OutputStream,DataPred,Header))),

  load_fb_data(File,Stream,Names,DataPred,Sep,is_swipl,OutputStream,Table).

load_fb_data(File,_Stream,_Header,_DataPred,_Sep,Data,_OutputStream,_Table):-
  (Data == end_of_file;done_reading(File)),!.
load_fb_data(File,Stream,Header,DataPred,Sep, is_swipl,OutputStream,Table):-
   name(Sep,[SepCode]),
  csv_options(CompiledOptions,[functor(DataPred),separator(SepCode)]),
   (current_prolog_flag(table_max,Max)->true;Max=inf),
   repeat,
     once((csv_read_row(Stream, RData, CompiledOptions))),
     flag(max_load,X,X),
      (((RData== end_of_file);(number(Max),X>Max)) -> assert(done_reading(File)) ;
       (RData =..[_|Data], write_flybase_data(Header,Table,OutputStream,DataPred,Data),fail)),!.

write_flybase_data(_Header,_Table,_OutputStream,_DataPred,[]):-!.
write_flybase_data(Header,_Table,OutputStream,DataPred,Data):-
  has_list(Header),
  fix_list_args(Header,Data,NewData),!,
  write_flybase_data1(Header,Data,OutputStream,DataPred,NewData).
write_flybase_data(Header,_Table,OutputStream,DataPred,NewData):-
  write_flybase_data1(Header,NewData,OutputStream,DataPred,NewData),!.
write_flybase_data1(Header,OldData,OutputStream,DataPred,DataL):-
  ignore((
   into_datum(DataPred,DataL,Data), functor(Data,F,A), A>=2,
   (fb_pred(F,A)-> true; (dynamic(F/A),assert(fb_pred(F,A)))),
    flag(max_load,X,X+1),
    assert(Data),
    ignore((((has_list(Header)->(X<23,X>20); (X<13,X>10)); (X>0,(0 is X rem 500_000),fb_stats)),fbug(X=Data),ignore((fail,OldData\==Data,fbug(oldData=OldData))))),
    catch_ignore(ignore((X<1000,must_det_ll((display(OutputStream,Data),writeln(OutputStream,'.')))))))),!.

into_datum(DataPred,[D|DataL],Data):-
  (load_option(pred_va,t) -> Data=..[DataPred,D,DataL]; Data=..[DataPred,D|DataL]).

has_list(Header):- is_list(Header),member(listOf(_),Header).


:- dynamic(fb_pred/2).
fb_pred(fb_pred,2).

full_atom_count(SL):- flag(total_loaded_atoms,SL,SL),SL>1,!.
full_atom_count(SL):- findall(NC,(fb_pred(F,A),fb_stats(F,A,NC)),Each), sumlist(Each,SL).

fb_stats:- gc_now,
   writeln('\n\n\n\n\n\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'),
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'),
   full_atom_count(SL),
   format("~N~n; Total\t\tAtoms (Atomspace size): ~`.t ~D~108|~n",[SL]),

   post_statistic(memory,Mem),
   post_statistic(atom_space,AS),
   post_statistic(cputime,TotalSeconds),
   post_statistic(atoms,Concepts),
   post_statistic(stack,StackMem),


   PM is Mem + StackMem,
   RM is Mem-AS,
   PA is RM//(SL+1),
   APS is 60*floor(SL/(TotalSeconds+1)),
   ACS is AS//(Concepts+1),

   pl_stats('ConceptNodes',Concepts),
   nop((
   pl_stats('Bytes Per Atom (Average)',PA),
   pl_stats('Bytes Per ConceptNode (Average)',ACS))),
   pl_stats('Relational Memory',RM),
   pl_stats('ConceptNode Memory',AS),
   %pl_stats('Queryspace Memory',StackMem),
   %CPU is CPUTime-57600,
   nop((pl_stats('Atoms per minute',APS))),
   pl_stats('Total Physical Memory Used',PM),
   format_time(TotalSeconds, Formatted),
   pl_stats('Runtime (days:hh:mm:ss)',Formatted),
   nl,nl.
fb_stats(F):- forall(fb_pred(F,A),fb_stats(F,A)).
fb_stats(F,A):- fb_stats(F,A,NC), pl_stats(F/A,NC).
fb_stats(F,A,NC):- functor(P,F,A),predicate_property(P,number_of_clauses(NC)).
pl_stats(Stat):- statistics(Stat,Value),pl_stats(Stat,Value).
pl_stats(Stat,[Value|_]):- nonvar(Value),!, pl_stats(Stat,Value).
pl_stats(Stat,Value):- format("~N;\t\t~@: ~`.t ~@~100|",[format_value(Stat),format_value(Value)]),!.


% Predicate to print the formatted result.
format_value(Value) :- float(Value),!,format("~2f",[Value]),!.
format_value(Bytes) :- integer(Bytes),format_bytes(Bytes, Formatted), write(Formatted).
format_value(Term)  :- format("~w",[Term]).
%  Base case: If the number is 1G or more, show it in gigabytes (G).
format_bytes(Bytes, Formatted) :-  Bytes >= 1073741824, GB is Bytes / 1073741824, format(atom(Formatted), '~2fG', [GB]).
% If the number is less than 1G, show it in megabytes (M).
format_bytes(Bytes, Formatted) :- Bytes >= 104857600, Bytes < 1073741824, !, MB is Bytes / 1048576, D is floor(MB), format(atom(Formatted), '~DM', [D]).
% If the number is less than 1K, show it in bytes (B).
format_bytes(Bytes, Formatted) :- format(atom(Formatted), '~D', [Bytes]).
% % If the number is less than 1M, show it in kilobytes (K).
%format_bytes(Bytes, Formatted) :- Bytes >= 1024, Bytes < 1048576, !, KB is Bytes / 1024, format(atom(Formatted), '~0fK', [KB]).

% Convert total seconds to days, hours, minutes, seconds, and milliseconds.
format_time(TotalSeconds, Formatted) :-
    Seconds is floor(TotalSeconds),
    % Get days, remaining seconds
    Days is div(Seconds, 86400),
    Remain1 is mod(Seconds, 86400)-57600,
    format_time(atom(Out),'%T',Remain1),
    % Format the result
    format(atom(Formatted), '~w:~w', [Days, Out]).

% Predicate to print the formatted time.
print_formatted_time(TotalSeconds) :-
    format_time(TotalSeconds, Formatted),
    writeln(Formatted).




fix_list_args(Header,Args,NewArgs):-
  fix_elist_args(Header,Args,NewArgs),
  extreme_debug(ignore(((Args \== NewArgs,fbug(NewArgs))))).


fix_elist_args([listOf(_)|Header],[A|Args],[New|NewArgs]):- as_list(A,New),!, fix_elist_args(Header,Args,NewArgs).
fix_elist_args([_|Header],[A|Args],[A|NewArgs]):-!, fix_elist_args(Header,Args,NewArgs).
fix_elist_args(_,X,X).

as_list(A,New):- is_list(A),!,New = A.
as_list(A,New):- var(A),!,New = [].
as_list('-',[]).
as_list('',[]).
as_list(' ',[]).
as_list(A,List):- atom(A), member(Sep,['|',',',';']),catch_ignore(atomic_list_concat(List,Sep,A)),List\=[_],!.
as_list(A,[A]).

fix_atoms(A,A):- \+ atom(A),!.
fix_atoms(A,AO):-  atom_concat('flybase:',AM,A),fix_atoms(AM,AO),!.
fix_atoms(A,AO):- reprefix(List,To),member(E,List),atom_concat(E,AM,A),atom_concat(To,AM,AO).

/*
FBgn: FlyBase gene number - Represents a gene.
FBal: FlyBase allele number - Represents an allele.
FBst: FlyBase stock number - Represents a stock.
FBtp: FlyBase transposon number - Represents a transposon.
FBab: FlyBase aberration number - Represents a chromosomal aberration.
FBba: FlyBase balancer number - Represents a balancer.
FBcl: FlyBase clone number - Represents a DNA or RNA clone.
FBim: FlyBase image number - Represents an image.
FBpp: FlyBase polypeptide number - Represents a protein.
FBtr: FlyBase transcript number - Represents a transcript.
FBte: FlyBase transgenic element number - Represents a transgenic element.
*/

% FlyBase prefixes
atom_prefix('FBgn', flybase, 'Gene').
atom_prefix('FBal', flybase, 'Allele').
atom_prefix('FBst', flybase, 'Stock').
atom_prefix('FBtp', flybase, 'Transposon').
atom_prefix('FBab', flybase, 'Aberration').
atom_prefix('FBba', flybase, 'Balancer').
atom_prefix('FBcl', flybase, 'Clone').
atom_prefix('FBim', flybase, 'Image').
atom_prefix('FBpp', flybase, 'Polypeptide').
atom_prefix('FBtr', flybase, 'Transcript').
atom_prefix('FBte', flybase, 'Transgenic Element').

% Some common OBO prefixes (Note: these are more generalized and not specific to FlyBase)
atom_prefix('GO', obo, 'Gene Ontology').
atom_prefix('PO', obo, 'Plant Ontology').
atom_prefix('DOID', obo, 'Disease Ontology').
atom_prefix('UBERON', obo, 'Uber-anatomy ontology').
atom_prefix('CHEBI', obo, 'Chemical Entities of Biological Interest').


% FBcv_0000743 % "FBtp0000743 %CL:0000743 % WBPhenotype_0000743
reprefix(['GO_','GO:','GO--','FBgn','BiologicalProcess:GO:'],'GO:').
%./KBs/SUMO-OBO/gene-merged-SUMO.kif
%#
%FBbt_00051628

:- discontiguous column_description/4.
:- discontiguous primary_column/2.
:- discontiguous column_names/2.
:- discontiguous file_location/2.

column_description('Bin_value', "The expression bin classification of this gene in this RNA-Seq experiment, based on RPKM value.", numeric, 'Expression Bin').
column_description('Cluster_Cell_Type_ID', "The FlyBase FBbt ID for the cell type represented by the cell cluster.", identifier, 'Cell Type').
column_description('Cluster_Cell_Type_Name', "The FlyBase name for the cell type represented by the cell cluster.", name, 'Cell Type Name').
column_description('Cluster_ID', "The FlyBase FBlc ID for the dataset representing the cell cluster.", identifier, 'Cell Cluster').
column_description('Cluster_Name', "The FlyBase name for the dataset representing the cell cluster.", name, 'Cell Cluster Name').
column_description('Clustering_Analysis_ID', "The FlyBase FBlc ID for the dataset representing the clustering analysis.", identifier, 'Dataset').
column_description('Clustering_Analysis_Name', "The FlyBase name for the dataset representing the clustering analysis.", name, 'Dataset Name').
column_description('Count_used', "Indicates if the RPKM expression value was calculated using only the exonic regions unique to the gene and not overlapping exons of other genes (Unique), or, if the RPKM expression value was calculated based on all exons of the gene regardless of overlap with other genes (Total).", category, 'Count Type').
column_description('current_fullname', "Current full name used in FlyBase for the object.", name, 'Name').
column_description('current_symbol', "Current symbol used in FlyBase for the object.", symbol, 'Symbol').
column_description('DATASAMPLE_NAME_(DATASET_ID)', "Each subsequent column reports the gene RPKM values for the sample listed in the header.", matrix, 'Expression Matrix').
column_description('FBgn#', "The unique FlyBase gene ID for this gene.", identifier, 'Gene').
column_description('FBgn_id', "Unique FlyBase gene ID.", identifier, 'Gene').
column_description('FBrf_id', "FlyBase reference ID for the publication.", identifier, 'Reference').
column_description('gene_fullname', "The official full name for this gene.", name, 'Gene Name').
column_description('Gene_ID', "The FlyBase FBgn ID for the expressed gene.", identifier, 'Gene').
column_description('gene_primary_id', "The unique FlyBase gene ID for this gene.", identifier, 'Gene').
column_description('Gene_Symbol', "The FlyBase symbol for the expressed gene.", symbol, 'Gene Symbol').
column_description('gene_symbol', "The official FlyBase symbol for this gene.", symbol, 'Gene Symbol').
column_description('gene_type', "The type of gene.", category, 'Gene Type').
column_description('GeneSymbol', "The official FlyBase symbol for this gene.", symbol, 'Gene Symbol').
column_description('Interaction_type', "Type of interaction observed, either 'suppressible' or 'enhanceable'.", category, 'Interaction Type').
column_description('Mean_Expression', "The average level of expression of the gene across all cells of the cluster.", numeric, 'Expression Level').
column_description('organism_abbreviation', "Abbreviation indicating the species of origin.", abbreviation, 'Organism').
column_description('Parent_library_FBlc#', "The unique FlyBase ID for the dataset project to which the RNA-Seq experiment belongs.", identifier, 'Dataset Project').
column_description('Parent_library_name', "The official FlyBase symbol for the dataset project to which the RNA-Seq experiment belongs.", name, 'Dataset Project Name').
column_description('PMID', "PubMed ID for the publication.", identifier, 'Publication').
column_description('primary_FBid', "Primary FlyBase identifier for the object.", identifier, 'Object').
column_description('Pub_ID', "The FlyBase FBrf ID for the reference in which the expression was reported.", identifier, 'Publication').
column_description('Pub_miniref', "The FlyBase citation for the publication in which the expression was reported.", citation, 'Publication Citation').
column_description('Publication_FBrf', "Current FlyBase identifier (FBrf#) of publication from which the data came.", identifier, 'Publication Reference').
column_description('Release_ID', "The D. melanogaster annotation set version from which the gene model used in the analysis derives.", version, 'Annotation Version').
column_description('RNASource_FBlc#', "The unique FlyBase ID for the RNA-Seq experiment used for RPKM expression calculation.", identifier, 'RNA-Seq Experiment').
column_description('RNASource_name', "The official FlyBase symbol for the RNA-Seq experiment used for RPKM expression calculation.", name, 'RNA-Seq Experiment Name').
column_description('RPKM_value', "The RPKM expression value for the gene in the specified RNA-Seq experiment.", numeric, 'Expression Value').
column_description('Source_Tissue_Anatomy', "The anatomical region of the source tissue used for the experiment.", category, 'Tissue Anatomy').
column_description('Source_Tissue_Sex', "The sex of the source tissue used for the experiment.", category, 'Tissue Sex').
column_description('Source_Tissue_Stage', "The life stage of the source tissue used for the experiment.", category, 'Tissue Stage').
column_description('Spread', "The proportion of cells in the cluster in which the gene is detected.", proportion, 'Expression Spread').
column_description('Total_exon_base_count', "The number of bases in all exons of this gene.", numeric, 'Total Exonic Base Count').
column_description('UniProt_database', "Database in UniProt where the protein is listed (either UniProt/TrEMBL or UniProt/Swiss-Prot).", category, 'Protein Database').
column_description('UniProt_id', "Unique identifier for the protein in UniProt.", identifier, 'Protein').
column_description('Unique_exon_base_count', "The number of exonic bases unique to the gene (not overlapping exons of other genes).", numeric, 'Exonic Base Count').
column_description(listOf('fullname_synonym', ['|']), "Non-current full name(s) associated with the object.", list, 'Name Synonyms').
column_description(listOf('Interacting_gene_FBgn', ['|']), "Current FlyBase identifier (FBgn#) of gene(s) involved in the interacting genotype.", list, 'Gene Identifier').
column_description(listOf('Interacting_gene_symbol', ['|']), "Current FlyBase symbol of gene(s) involved in the interacting genotype.", list, 'Gene Symbol').
column_description(listOf('Starting_gene_FBgn', ['|']), "Current FlyBase identifier (FBgn#) of gene(s) involved in the starting genotype.", list, 'Gene Identifier').
column_description(listOf('Starting_gene_symbol', ['|']), "Current FlyBase symbol of gene(s) involved in the starting genotype.", list, 'Gene Symbol').
column_description(listOf(symbol_synonym, ['|']), "Non-current symbol(s) associated with the object.", list, 'Symbol Synonyms').

column_names('fb_synonym', ['primary_FBid', 'organism_abbreviation', 'current_symbol', 'current_fullname', listOf(fullname_synonym, ['|']), listOf(symbol_synonym, ['|'])]).
column_names('gene_genetic_interactions', [listOf('Starting_gene_symbol', ['|']), listOf('Starting_gene_FBgn', ['|']), listOf('Interacting_gene_symbol', ['|']), listOf('Interacting_gene_FBgn', ['|']), 'Interaction_type', 'Publication_FBrf']).
column_names('gene_rpkm_matrix', ['gene_primary_id', 'gene_symbol', 'gene_fullname', 'gene_type', 'DATASAMPLE_NAME_(DATASET_ID)']).
column_names('gene_rpkm_report', ['Release_ID', 'FBgn#', 'GeneSymbol', 'Parent_library_FBlc#', 'Parent_library_name', 'RNASource_FBlc#', 'RNASource_name', 'RPKM_value', 'Bin_value', 'Unique_exon_base_count', 'Total_exon_base_count', 'Count_used']).
column_names('pmid_fbgn_uniprot', ['FBrf_id', 'PMID', 'FBgn_id', 'UniProt_database', 'UniProt_id']).
column_names('scRNA-Seq_gene_expression', ['Pub_ID', 'Pub_miniref', 'Clustering_Analysis_ID', 'Clustering_Analysis_Name', 'Source_Tissue_Sex', 'Source_Tissue_Stage', 'Source_Tissue_Anatomy', 'Cluster_ID', 'Cluster_Name', 'Cluster_Cell_Type_ID', 'Cluster_Cell_Type_Name', 'Gene_ID', 'Gene_Symbol', 'Mean_Expression', 'Spread']).

% 466_896_429
primary_column('fb_synonym', 'primary_FBid').
primary_column('gene_genetic_interactions', 'Starting_gene_FBgn').
primary_column('gene_rpkm_matrix', 'gene_primary_id').
primary_column('gene_rpkm_report', 'FBgn#').
primary_column('pmid_fbgn_uniprot', 'FBgn_id').
primary_column('scRNA-Seq_gene_expression', 'Gene_ID').

% For the file allele_genetic_interactions_*.tsv
file_location('allele_genetic_interactions', "path_to_file/allele_genetic_interactions_*.tsv").
column_names('allele_genetic_interactions', ['allele_symbol', 'allele_FBal#', 'interaction', 'FBrf#']).
primary_column('allele_genetic_interactions', 'allele_FBal#').

% Descriptions for allele_genetic_interactions columns
column_description('allele_symbol', "Current FlyBase allele symbol.", symbol, 'Allele Symbol').
column_description('allele_FBal#', "Current FlyBase identifier (FBal#) of allele.", identifier, 'Allele Identifier').
column_description('interaction', "Interaction information associated with allele.", text, 'Interaction Info').
column_description('FBrf#', "Current FlyBase identifer (FBrf#) of publication from which data came.", identifier, 'Publication Identifier').

% For the file genotype_phenotype_data_*.tsv
file_location('genotype_phenotype_data', "path_to_file/genotype_phenotype_data_*.tsv").
column_names('genotype_phenotype_data', [listOf('genotype_symbols', ['/', ' ']), listOf('genotype_FBids', ['/', ' ']), 'phenotype_name', 'phenotype_id', listOf('qualifier_names', ['|']), listOf('qualifier_ids', ['|']), 'reference']).
primary_column('genotype_phenotype_data', 'genotype_FBids').

% Descriptions for genotype_phenotype_data columns
column_description(listOf('genotype_symbols', ['/', ' ']), "Current FlyBase symbol(s) of the components that make up the genotype.", list, 'Genotype Symbols').
column_description(listOf('genotype_FBids', ['/', ' ']), "Current FlyBase identifier(s) of the components that make up the genotype.", list, 'Genotype Identifiers').
column_description('phenotype_name', "Phenotypic name associated with the genotype.", name, 'Phenotype Name').
column_description('phenotype_id', "Phenotypic identifier associated with the genotype.", identifier, 'Phenotype Identifier').
column_description(listOf('qualifier_names', ['|']), "Qualifier name(s) associated with phenotypic data for genotype.", list, 'Qualifier Names').
column_description(listOf('qualifier_ids', ['|']), "Qualifier identifier(s) associated with phenotypic data for genotype.", list, 'Qualifier Identifiers').
column_description('reference', "Current FlyBase identifer (FBrf#) of publication from which data came.", identifier, 'Publication Identifier').


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

%:- load_flybase("precomputed_files/allele_genetic_interactions_fb_*.tsv").




flybase_cols(allele_genetic_interactions,['##allele_symbol','allele_FBal',interaction,'FBrf']).

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

table_columns(T,List):- fbc(TT,List), eigther_contains(T,TT),!.
table_columns(T,List):- column_names(TT,List), eigther_contains(T,TT),!.
table_columns(T,List):- flybase_cols(TT,List), eigther_contains(T,TT),!.
table_columns(T,List):- t_h_n(TT,_,List), eigther_contains(T,TT),!.

eigther_contains(TT,T):- TT=T,!.
eigther_contains(T,TT):- atom_contains(T,TT),!.
eigther_contains(TT,T):- atom_contains(T,TT),!.


fbc(fbgn_exons2affy1_overlaps,['FBgn',listOf(affy)]).
fbc(fbgn_fbtr_fbpp_expanded,[ organism, gene_type,gene_ID,gene_symbol,gene_fullname,
                              annotation_ID,transcript_type,transcript_ID,
                              transcript_symbol,polypeptide_ID,polypeptide_symbol]).

fbc(dmel_gene_sequence_ontology_annotations,[gene_primary_id,gene_symbol,so_term_name,so_term_id]).

fbc(gene_map_table,[ organism_abbreviation, current_symbol,primary_FBid,
                     recombination_loc,cytogenetic_loc,sequence_loc]).

fbc(dmel_human_orthologs_disease,[ 'Dmel_gene', 'Dmel_gene_symbol','Human_gene_HGNC',
                                      'Human_gene_OMIM', 'Human_gene_symbol', 'DIOPT_score', 'OMIM_Phenotype_IDs', 'OMIM_Phenotype_IDs[name]']).

fbc(disease_model_annotations,[ 'FBgn', 'Gene_symbol','HGNC','DO_qualifier','DO',
                                'DO_term',
                                'Allele_used_in_model_(FBal)',  'Allele_used_in_model_(symbol)', 'Based_on_orthology_with_(HGNC_ID)', 'Based_on_orthology_with_(symbol)', 'Evidence/interacting_alleles', 'Reference_(FBrf)']).

fbc(fbal_to_fbgn,[ '', 'AlleleID','AlleleSymbol','GeneID',
                   'GeneSymbol']).

fbc('cyto-genetic-seq',[ 'Cytogenetic_map_position',  'Genetic_map_position', 'Sequence_coordinates_(release_6)', 'R6_conversion_notes']).

fbc(fbgn_annotation_ID,[ gene_symbol, organism_abbreviation,'primary_FBgn',
                         listOf('secondary_FBgn'),annotation_ID,
                         listOf(secondary_annotation_ID)]).

fbc(gene_functional_complementation,[ 'Dmel_gene_symbol', 'Dmel_gene_FBgn',ortholog_gene_symbol,
                                      ortholog_gene_FBgn_ID,reference_FBrf]).

fbc('Dmel_enzyme',[ gene_group_id, gene_group_name,listOf(gene_group_GO_id),
                    listOf(gene_group_GO_name),
                    listOf(gene_group_EC_number), listOf(gene_group_EC_name),gene_id,
                    gene_symbol,gene_name,
                    listOf(gene_EC_number),listOf(gene_EC_name)]).

fbc(fbgn_fbtr_fbpp,['FlyBase_FBgn','FlyBase_FBtr','FlyBase_FBpp']).

fbc(fbgn_NAseq_Uniprot,[ gene_symbol, organism_abbreviation,'primary_FBgn',
                         nucleotide_accession,na_based_protein_accession,
                         'UniprotKB/Swiss-Prot/TrEMBL_accession','EntrezGene',
                         'RefSeq_transcripts','RefSeq_proteins']).

fbc(automated_gene_summaries,[primary_FBgn,summary_text]).

fbc(gene_group,[ 'FB_group', 'FB_group_symbol','FB_group_name',
                 'Parent_FB_group','Parent_FB_group_symbol',
                 'Group_member_FB_gene','Group_member_FB_gene_symbol']).

fbc(best_gene_summary,['FBgn','Gene_Symbol','Summary_Source','Summary']).

fbc(gene_groups_HGNC,['FB_group','FB_group_symbol','FB_group_name','HGNC_family']).

fbc(pathway_group,[ 'FB_group', 'FB_group_symbol','FB_group_name',
                    'Parent_FB_group','Parent_FB_group_symbol',
                    'Group_member_FB_gene','Group_member_FB_gene_symbol']).

%fbc(gene_rpkm_report,['gene_rpkm_report_report:','Mon_Nov_14_07:45:05_2022']).

fbc(gene_snapshots,[ 'FBgn', 'GeneSymbol','GeneName',datestamp,
                     gene_snapshot_text]).

fbc(gene_rpkm_matrix,[ gene_primary_id, gene_symbol,gene_fullname,gene_type,
                       'BCM_1_E2-4hr_(FBlc0000061)', 'BCM_1_E14-16hr_(FBlc0000062)','BCM_1_E2-16hr_(FBlc0000063)',
                       'BCM_1_E2-16hr100_(FBlc0000064)','BCM_1_L3i_(FBlc0000065)',
                       'BCM_1_L3i100_(FBlc0000066)','BCM_1_P3d_(FBlc0000067)',
                       'BCM_1_FA3d_(FBlc0000068)', 'BCM_1_MA3d_(FBlc0000069)','BCM_1_P_(FBlc0000070)',
                       'BCM_1_L_(FBlc0000071)','BCM_1_A17d_(FBlc0000072)',
                       'mE_mRNA_em0-2hr_(FBlc0000086)',
                       'mE_mRNA_em2-4hr_(FBlc0000087)',
                       'mE_mRNA_em4-6hr_(FBlc0000088)',
                       'mE_mRNA_em6-8hr_(FBlc0000089)',
                       'mE_mRNA_em8-10hr_(FBlc0000090)',
                       'mE_mRNA_em10-12hr_(FBlc0000091)',
                       'mE_mRNA_em12-14hr_(FBlc0000092)',
                       'mE_mRNA_em14-16hr_(FBlc0000093)',
                       'mE_mRNA_em16-18hr_(FBlc0000094)',
                       'mE_mRNA_em18-20hr_(FBlc0000095)',
                       'mE_mRNA_em20-22hr_(FBlc0000096)', 'mE_mRNA_em22-24hr_(FBlc0000097)','mE_mRNA_L1_(FBlc0000098)',
                       'mE_mRNA_L2_(FBlc0000099)','mE_mRNA_L3_12hr_(FBlc0000100)',
                       'mE_mRNA_L3_PS1-2_(FBlc0000101)',
                       'mE_mRNA_L3_PS3-6_(FBlc0000102)',
                       'mE_mRNA_L3_PS7-9_(FBlc0000103)', 'mE_mRNA_WPP_(FBlc0000104)','mE_mRNA_P5_(FBlc0000105)',
                       'mE_mRNA_P6_(FBlc0000106)','mE_mRNA_P8_(FBlc0000107)',
                       'mE_mRNA_P9-10_(FBlc0000108)','mE_mRNA_P15_(FBlc0000109)',
                       'mE_mRNA_AdF_Ecl_1days_(FBlc0000110)',
                       'mE_mRNA_AdF_Ecl_5days_(FBlc0000111)',
                       'mE_mRNA_AdF_Ecl_30days_(FBlc0000112)',
                       'mE_mRNA_AdM_Ecl_1days_(FBlc0000113)',
                       'mE_mRNA_AdM_Ecl_5days_(FBlc0000114)',
                       'mE_mRNA_AdM_Ecl_30days_(FBlc0000115)',
                       'mE_mRNA_A_MateF_1d_head_(FBlc0000207)',
                       'mE_mRNA_A_MateF_4d_ovary_(FBlc0000208)',
                       'mE_mRNA_A_MateM_1d_head_(FBlc0000209)',
                       'mE_mRNA_A_VirF_1d_head_(FBlc0000210)',
                       'mE_mRNA_A_VirF_4d_head_(FBlc0000211)',
                       'mE_mRNA_A_MateF_20d_head_(FBlc0000212)',
                       'mE_mRNA_A_MateF_4d_head_(FBlc0000213)',
                       'mE_mRNA_A_MateM_20d_head_(FBlc0000214)',
                       'mE_mRNA_A_MateM_4d_acc_gland_(FBlc0000215)',
                       'mE_mRNA_A_MateM_4d_head_(FBlc0000216)',
                       'mE_mRNA_A_MateM_4d_testis_(FBlc0000217)',
                       'mE_mRNA_A_1d_carcass_(FBlc0000218)',
                       'mE_mRNA_A_1d_dig_sys_(FBlc0000219)',
                       'mE_mRNA_A_20d_carcass_(FBlc0000220)',
                       'mE_mRNA_A_20d_dig_sys_(FBlc0000221)',
                       'mE_mRNA_A_4d_carcass_(FBlc0000222)',
                       'mE_mRNA_A_4d_dig_sys_(FBlc0000223)',
                       'mE_mRNA_P8_CNS_(FBlc0000224)',
                       'mE_mRNA_L3_CNS_(FBlc0000225)',
                       'mE_mRNA_L3_Wand_carcass_(FBlc0000226)',
                       'mE_mRNA_L3_Wand_dig_sys_(FBlc0000227)',
                       'mE_mRNA_L3_Wand_fat_(FBlc0000228)',
                       'mE_mRNA_L3_Wand_imag_disc_(FBlc0000229)',
                       'mE_mRNA_L3_Wand_saliv_(FBlc0000230)',
                       'mE_mRNA_A_VirF_20d_head_(FBlc0000231)',
                       'mE_mRNA_A_VirF_4d_ovary_(FBlc0000232)',
                       'mE_mRNA_WPP_fat_(FBlc0000233)',
                       'mE_mRNA_WPP_saliv_(FBlc0000234)',
                       'mE_mRNA_P8_fat_(FBlc0000235)',
                       'mE_mRNA_A_4d_Cold1_(FBlc0000237)',
                       'mE_mRNA_A_4d_Cold2_(FBlc0000238)',
                       'mE_mRNA_L3_Cu_0.5mM_(FBlc0000239)',
                       'mE_mRNA_L3_late_Zn_5mM_(FBlc0000240)',
                       'mE_mRNA_A_4d_Cu_15mM_(FBlc0000241)',
                       'mE_mRNA_A_4d_Zn_4.5mM_(FBlc0000242)',
                       'mE_mRNA_A_4d_Caffeine_25mg/ml_(FBlc0000243)',
                       'mE_mRNA_A_4d_Caffeine_2.5mg/ml_(FBlc0000244)',
                       'mE_mRNA_L3_Caffeine_1.5mg/ml_(FBlc0000245)',
                       'mE_mRNA_A_4d_Cd_0.1M_(FBlc0000246)',
                       'mE_mRNA_A_4d_Cd_0.05M_(FBlc0000247)',
                       'mE_mRNA_L3_Cd_12h_(FBlc0000248)',
                       'mE_mRNA_L3_Cd_6hr_(FBlc0000249)',
                       'mE_mRNA_A_4d_Paraquat_5mM_(FBlc0000250)',
                       'mE_mRNA_A_4d_Paraquat_10mM_(FBlc0000251)',
                       'mE_mRNA_L3_Rotenone_8ug_(FBlc0000252)',
                       'mE_mRNA_L3_Rotenone_2ug_(FBlc0000253)',
                       'mE_mRNA_L3_EtOH_10_(FBlc0000254)',
                       'mE_mRNA_L3_EtOH_5_(FBlc0000255)',
                       'mE_mRNA_L3_EtOH_2.5_(FBlc0000256)',
                       'mE_mRNA_A_4d_Heatshock_(FBlc0000257)',
                       'mE_mRNA_A_10d_Resveratrol_100uM_(FBlc0000672)',
                       'mE_mRNA_A_10d_Rotenone_Starved_(FBlc0000673)',
                       'mE_mRNA_F_Sindbis_virus_(FBlc0000674)',
                       'mE_mRNA_L_Sindbis_virus_(FBlc0000675)',
                       'mE_mRNA_M_Sindbis_virus_(FBlc0000676)',
                       'mE_mRNA_P_Sindbis_virus_(FBlc0000677)',
                       'mE_mRNA_CME-W2_cells_(FBlc0000261)',
                       'mE_mRNA_GM2_cells_(FBlc0000262)',
                       'mE_mRNA_mbn2_cells_(FBlc0000263)',
                       'mE_mRNA_BG2-c2_cells_(FBlc0000264)',
                       'mE_mRNA_D20-c5_cells_(FBlc0000265)',
                       'mE_mRNA_S3_cells_(FBlc0000266)',
                       'mE_mRNA_1182-4H_cells_(FBlc0000267)',
                       'mE_mRNA_CME_L1_cells_(FBlc0000268)',
                       'mE_mRNA_Kc167_cells_(FBlc0000269)',
                       'mE_mRNA_BG1-c1_cells_(FBlc0000270)',
                       'mE_mRNA_D11_cells_(FBlc0000271)',
                       'mE_mRNA_D16-c3_cells_(FBlc0000272)',
                       'mE_mRNA_D17-c3_cells_(FBlc0000273)',
                       'mE_mRNA_D21_cells_(FBlc0000274)',
                       'mE_mRNA_D32_cells_(FBlc0000275)',
                       'mE_mRNA_D4-c1_cells_(FBlc0000276)',
                       'mE_mRNA_D8_cells_(FBlc0000277)',
                       'mE_mRNA_D9_cells_(FBlc0000278)',
                       'mE_mRNA_S1_cells_(FBlc0000279)',
                       'mE_mRNA_S2R+_cells_(FBlc0000280)',
                       'mE_mRNA_Sg4_cells_(FBlc0000281)',
                       'mE_mRNA_OSS_cells_(FBlc0000282)',
                       'mE_mRNA_OSC_cells_(FBlc0000283)',
                       'mE_mRNA_fGS_cells_(FBlc0000284)',
                       'Knoblich_mRNA_L3_CNS_neuroblast_(FBlc0000505)',
                       'Knoblich_mRNA_L3_CNS_neuron_(FBlc0000506)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_Brain_(FBlc0003619)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_Crop_(FBlc0003620)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_Carcass_(FBlc0003621)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_Eye_(FBlc0003622)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_FatBody_(FBlc0003623)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_Head_(FBlc0003624)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_Hindgut_(FBlc0003625)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_Midgut_(FBlc0003626)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_Ovary_(FBlc0003627)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_RectalPad_(FBlc0003628)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_SalivaryGland_(FBlc0003629)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_ThoracicoAbdominalGanglion_(FBlc0003630)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_MalpighianTubule_(FBlc0003631)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_Mated_Spermathecum_(FBlc0003632)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_Virgin_Spermathecum_(FBlc0003633)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Female_Whole_(FBlc0003634)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_Brain_(FBlc0003635)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_Crop_(FBlc0003636)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_Carcass_(FBlc0003637)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_Eye_(FBlc0003638)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_FatBody_(FBlc0003639)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_Head_(FBlc0003640)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_Hindgut_(FBlc0003641)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_Midgut_(FBlc0003642)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_RectalPad_(FBlc0003643)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_SalivaryGland_(FBlc0003644)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_ThoracicoAbdominalGanglion_(FBlc0003645)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_MalpighianTubule_(FBlc0003646)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_Testis_(FBlc0003647)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_AccessoryGland_(FBlc0003648)',
                       'RNA-Seq_Profile_FlyAtlas2_Adult_Male_Whole_(FBlc0003649)',
                       'RNA-Seq_Profile_FlyAtlas2_L3_CNS_(FBlc0003650)',
                       'RNA-Seq_Profile_FlyAtlas2_L3_FatBody_(FBlc0003651)',
                       'RNA-Seq_Profile_FlyAtlas2_L3_Hindgut_(FBlc0003652)',
                       'RNA-Seq_Profile_FlyAtlas2_L3_MalpighianTubule_(FBlc0003653)',
                       'RNA-Seq_Profile_FlyAtlas2_L3_Midgut_(FBlc0003654)',
                       'RNA-Seq_Profile_FlyAtlas2_L3_SalivaryGland_(FBlc0003655)',  'RNA-Seq_Profile_FlyAtlas2_L3_Trachea_(FBlc0003656)', 'RNA-Seq_Profile_FlyAtlas2_L3_Carcass_(FBlc0003657)', 'RNA-Seq_Profile_FlyAtlas2_L3_Whole_(FBlc0003658)', 'RNA-Seq_Profile_FlyAtlas2_Adult_Female_Heart_(FBlc0003724)', 'RNA-Seq_Profile_FlyAtlas2_Adult_Male_Heart_(FBlc0003725)']).

fbc(dmel_unique_protein_isoforms,[ 'FBgn', 'FB_gene_symbol',representative_protein,
                                   listOf(identical_protein)]).

fbc(fbgn_gleanr,[organism_abbreviation,gene_symbol,'primary_FBgn','GLEANR']).

fbc(synonym,[ primary_FBid, organism_abbreviation,current_symbol,current_fullname,
              listOf(fullname_synonym),listOf(symbol_synonym)]).

fbc(insertion_mapping,[ insertion_symbol, 'FBti',genomic_location,range,orientation,
                        estimated_cytogenetic_location,observed_cytogenetic_location]).

fbc(entity_publication,[entity_id,entity_name,'FlyBase_publication','PubMed']).

fbc(fbgn_uniprot,['primary_FBgn',gene_symbol,'CG','UniprotKB/Swiss-Prot/TrEMBL_accession']).

fbc(pmid_fbgn_uniprot,[ 'FBrf', 'PMID','FBgn',
                        'UniProt_database','UniProt']).

fbc(cDNA_clone,[ 'FBcl', organism_abbreviation,clone_name,
                 dataset_metadata_name,listOf(cDNA_accession),
                 listOf('EST_accession')]).

fbc(genomic_clone,['FBcl',organism_abbreviation,clone_name,accession]).

fbc(dmel_paralogs,[ 'FBgn',
                    'GeneSymbol', 'Arm/Scaffold','Location','Strand',
                    'Paralog_FBgn','Paralog_GeneSymbol',
                       'Paralog_Arm/Scaffold', 'Paralog_Location', 'Paralog_Strand', 'DIOPT_score']).

fbc(organism_list,[ genus, species,abbreviation,common_name, 'NCBI_taxon','drosophilid?']).

fbc(gene_genetic_interactions,[ listOf('Starting_gene_symbol'),
                                listOf('Starting_gene_FBgn'),
                                listOf('Interacting_gene_symbol'), listOf('Interacting_gene_FBgn'),'Interaction_type',
                                'Publication_FBrf']).

fbc(physical_interactions_mitab,[ listOf('ID_Interactor_A'), listOf('ID_Interactor_B'),listOf('Alt_ID_Interactor_A'),
                                  listOf('Alt_ID_Interactor_B'),listOf('Alias_Interactor_A'),
                                  listOf('Alias_Interactor_B'),
                                  listOf('Interaction_Detection_Method'),
                                  listOf('Publication_1st_Author'), listOf('Publication'),
                                  'Taxid_Interactor_A','Taxid_Interactor_B',
                                  listOf('Interaction_Type'),listOf('Source_Database'),
                                  listOf('Interaction_Identifier'),listOf('Confidence_Value'),
                                  listOf('Expansion_Method'),
                                  listOf('Biological_Role_Interactor_A'),
                                  listOf('Biological_Role_Interactor_B'),
                                  listOf('Experimental_Role_Interactor_A'),
                                  listOf('Experimental_Role_Interactor_B'), listOf('Type_Interactor_A'),listOf('Type_Interactor_B'),
                                  listOf('Xref_Interactor_A'), listOf('Xref_Interactor_B'),listOf('Interaction_Xref'),
                                  listOf('Annotation_Interactor_A'),
                                  listOf('Annotation_Interactor_B'),
                                  listOf('Interaction_Annotation'),
                                  listOf('Host_Organism'),
                                  'Interaction_Parameters', 'Creation_Date','Update_Date','Checksum_Interactor_A',
                                  'Checksum_Interactor_B', 'Interaction_Checksum','Negative',
                                  listOf('Feature_Interactor_A'), listOf('Feature_Interactor_B'),'Stoichiometry_Interactor_A',
                                  'Stoichiometry_Interactor_B',
                                  listOf('Identification_Method_Participant_A'),
                                  listOf('Identification_Method_Participant_B')]).

fbc(allele_genetic_interactions,[allele_symbol,'allele_FBal',interaction,'FBrf']).

fbc(allele_phenotypic,[allele_symbol,'allele_FBal',phenotype,'FBrf']).

fbc(fbrf_pmid_pmcid_doi,[ 'FBrf', 'PMID','PMCID','DOI',pub_type,miniref, pmid_added]).

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

:- ensure_loaded(swi_support).
%_:- ensure_loaded(read_obo).

%:- prolog_load_context(source,This),forall((source_file(P0,This),functor(P0,F,0)),writeln(add_history1(F))).
%add_history1(setup_flybase_cols)
%add_history1(pmt)
ah:- add_history1(fb_stats),
  add_history1(mine_atomspace_overlaps),
  add_history1(mine_typelevel_overlaps),
  add_history1(mine_overlaps),
  add_history1(load_flybase_files),
  add_history1(load_flybase).
:- ah,ah,ah.

%:- initialization(load_flybase).
:- save_pre_statistic(memory).
:- save_pre_statistic(atoms).
:- save_pre_statistic(atom_space).

:- fb_stats.

