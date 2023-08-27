
:- use_module(library(csv)).



:- current_prolog_flag(libswipl,_)->use_module(library(logicmoo_utils)); true.

kaggle_arc:- setup_call_cleanup(
     working_directory(X, '/opt/logicmoo_workspace/packs_sys/logicmoo_agi/prolog/kaggle_arc/'),
     ensure_loaded(kaggle_arc),
     working_directory(_,X)). 


must_det_ll(G):- call(G)->true;throw(failed(G)).


cvt_flybase:- 
  cvt_flybase('das_precomputed'),
  cvt_flybase('precomputed_files/*'),
  cvt_flybase('./*sv'),!.


load_flybase:- 
  load_fb_mask('das_precomputed/*.pl'),
  load_fb_mask('precomputed_files/*/*pl'),
  load_fb_mask('flybase_data/public.*.pl'),
  load_fb_mask('flybase_data/*fb_2023_01.pl').

with_wild_path(P1,File):- is_list(File),!,maplist(with_wild_path(P1),File).

with_wild_path(P1,File):- compound(File),
  absolute_file_name(File,Dir,[access(read), file_errors(fail),file_type(directory)]),
  '\\=@='(Dir,File), !, with_wild_path(P1,Dir).

with_wild_path(P1,File):- compound(File),!,absolute_file_name(File,Dir,[access(read), file_errors(fail),file_type(['csv','tsv',''])]),
  '\\=@='(Dir,File),!, with_wild_path(P1,Dir).
with_wild_path(P1,File):- atom_contains(File,'*'),expand_file_name(File,List),!,maplist(with_wild_path(P1),List).
with_wild_path(P1,File):- exists_directory(File), 
  directory_file_path(File,'*.*sv',Wildcard),expand_file_name(Wildcard,List),!,maplist(P1,List).
with_wild_path(P1,File):- call(P1,File).

cvt_flybase(File):- with_wild_path(cvt_flybase0,File),!.

cvt_flybase0(File):- file_name_extension(Name,_E,File),
  atomic_list_concat([Pub,Table],'.',Name),
  atomic_list_concat([Pub,Table,'pl'],'.',OutputFile),
  cvt_flybase(File,OutputFile,Table).
cvt_flybase0(File):- file_name_extension(Name,_E,File),
  atomic_list_concat([Name,'pl'],'.',OutputFile),
  cvt_flybase(File,OutputFile,Name).


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

try_encoding:- 'data_das_precomputed/allele_genetic_interactions_fb_2022_06'('14-3-3epsilon[18A2]',X,Y,Z),
  encoding_trial(ET),set_stream(current_output,encoding(ET)),catch(write(ET=[X,Y,Z]),_,fail),fail.
  


load_fb_mask(Filename):- expand_file_name(Filename,Files1),maplist(load_flybase,Files1).
load_flybase(File):- with_wild_path(load_flybase0,File).
load_flybase0(File):- file_name_extension(Name,_E,File),
  atomic_list_concat([Pub,Table],'.',Name),
  atomic_list_concat([Pub,Table,qlf],'.',OutputFile),!,
  load_flybase(File,OutputFile,Table).
load_flybase0(File):- file_name_extension(Name,_E,File),
  atomic_list_concat([Table],'.',Name),
  atomic_list_concat([Table,qlf],'.',OutputFile),
  load_flybase(File,OutputFile,Table).

load_flybase(_File,OutputFile,_Table):- exists_file(OutputFile),!,ensure_loaded(OutputFile),!.
load_flybase(File,_OutputFile,_Table):- load_files([File],[qcompile(large)]).

%cvt_flybase2:- cvt_flybase('allele_genetic_interactions_fb_2023_01.tsv','allele_genetic_interactions_fb_2023_01.pl',allele_genetic_interactions).
%cvt_flybase(_File,OutputFile,_Table):- exists_file(OutputFile),size_file(OutputFile,N),N>100,!.
cvt_flybase(File,OutputFile,Table):-
  setup_call_cleanup(open(File,read,Stream),
       setup_call_cleanup(open(OutputFile,write,OutputStream,[encoding(utf8)]),
           cvt_flybase(File,Stream,OutputStream,Table),
    close(OutputStream)),
  close(Stream)),!.
/*
cvt_flybase(Stream,OutputStream,Table):- fail,
  atomic_list_concat([header,Table],'_',HeaderPred),
  atomic_list_concat([data,Table],'_',DataPred),
  csv_read_stream(Stream, [HeaderRow|Data], [functor(DataPred)]),
  HeaderRow=..[_|Header],
  maplist(fix_header_names(Header,Table),Header,Names),
  wdmsg(t_h_n(Table,Header,Names)),
  save_conversion_data(Names,Table,OutputStream,Data).
*/
  data_pred(X,X).
/*
data_pred(X,Y):- atomic_list_concat([L|_],'_fb_',X).
  atomic_list_concat([M|More],'/',L).
*/

cvt_flybase(File,Stream,OutputStream,Table):- 
 must_det_ll((
  format(OutputStream,':- ~q.\n',[encoding(utf8)]),
  atomic_list_concat([header,Table],'_',HeaderPred),
  atomic_list_concat([data,Table],'_',DataPred0),
  data_pred(DataPred0,DataPred),
  file_to_sep(File,Sep),
  csv_options(CompiledOptions,[functor(HeaderPred),separator(Sep)]),
  csv_read_row(Stream, HeaderRow, CompiledOptions),
  %csv_read_file_row(File, HeaderRow, [functor(HeaderPred)]),
  HeaderRow=..[_|Header],
  maplist(fix_header_names(Header,Table),Header,Names),
  wdmsg(t_h_n(Table,Header,Names)),
  save_conversion(File,Names,Table,DataPred,Stream,OutputStream))).

file_to_sep(_File,9).

save_conversion(File,Header,Table,DataPred,Stream,OutputStream):-
 must_det_ll((
  flag(max_cvt,_,0),
  file_to_sep(File,Sep),
  csv_options(CompiledOptions,[functor(DataPred),separator(Sep)]))),
  repeat, 
    ((csv_read_row(Stream, Data, CompiledOptions))),
    %display(Data),nl,
    (((Data== end_of_file); (flag(max_cvt,X,X),X>5_000_000)) -> ! ; 
      (((write_flybase_data(Header,Table,OutputStream,Data))),fail)).

write_flybase_data(_Header,_Table,OutputStream,Data):-
  flag(max_cvt,X,X+1),
  ignore((functor(Data,_,A),A>=2,
    assert(Data),
    ignore(((X<10 ; 0 is X rem 50_000),wdmsg(X=Data))),
    ignore((X<1_000,must_det_ll((display(OutputStream,Data),writeln(OutputStream,'.'))))))),!.


save_conversion_data(Names,Table,OutputStream,Data):- maplist(write_flybase_data(Names,Table,OutputStream),Data).

too_generic(Var):- var(Var),!,fail.
too_generic(pub_id).
too_generic(X):- \+ atomic_list_concat([_,_|_],'_',X).

fix_header_names(_,_,Name,Name):- \+ too_generic(Name).
fix_header_names(FieldList,Table,ID,Out):- atomic_list_concat([Table,ID],'_',Out), \+ member(Out,FieldList).
fix_header_names(_,Table,ID,Out):- atomic_list_concat([Table,ID],'_column_',Out).
fix_header_names(_,_,Name,Name).



flybase_cols(allele_genetic_interactions,['##allele_symbol','allele_FBal#',interaction,'FBrf#']).

flybase_cols(analysis,[ analysis_id,name,description,program,programversion,algorithm,sourcename,sourceversion,sourceuri,timeexecuted]).
flybase_cols(analysisfeature,[ analysisfeature_id,feature_id,analysis_id,rawscore,normscore,significance,identity]).
flybase_cols(analysisgrp,[ analysisgrp_id,rawscore,normscore,significance,identity,analysis_id,grp_id]).
flybase_cols(analysisgrpmember,[ analysisgrpmember_id,rawscore,normscore,significance,identity,analysis_id,grpmember_id]).
flybase_cols(analysisprop,[ analysisprop_id,analysis_id,type_id,value]).
flybase_cols(audit_chado,[ audit_transaction,transaction_timestamp,userid,audited_table,record_pkey,record_ukey_cols,record_ukey_vals,audited_cols,audited_vals]).

flybase_cols(cell_line,[ cell_line_id,name,uniquename,organism_id,timeaccessioned,timelastmodified]).
flybase_cols(cell_line_cvterm,[ cell_line_cvterm_id,cell_line_id,cvterm_id,pub_id,rank]).
flybase_cols(cell_line_cvtermprop,[ cell_line_cvtermprop_id,cell_line_cvterm_id,type_id,value,rank]).
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
flybase_cols(cvterm,[ cvterm_id,cv_id,definition,dbxref_id,is_obsolete,is_relationshiptype,name]).
flybase_cols(cvterm_dbxref,[ cvterm_dbxref_id,cvterm_id,dbxref_id,is_for_definition]).
flybase_cols(cvterm_relationship,[ cvterm_relationship_id,type_id,subject_id,object_id]).
flybase_cols(cvtermpath,[ cvtermpath_id,type_id,subject_id,object_id,cv_id,pathdistance]).
flybase_cols(cvtermprop,[ cvtermprop_id,cvterm_id,type_id,value,rank]).
flybase_cols(cvtermsynonym,[ cvtermsynonym_id,cvterm_id,name,type_id]).
flybase_cols(db,[ db_id,name,contact_id,description,urlprefix,url]).
flybase_cols(dbxref,[ dbxref_id,db_id,accession,version,description,url]).
flybase_cols(dbxrefprop,[ dbxrefprop_id,dbxref_id,type_id,value,rank]).
flybase_cols(eimage,[ eimage_id,eimage_data,eimage_type,image_uri]).
flybase_cols(environment,[ environment_id,uniquename,description]).
flybase_cols(environment_cvterm,[ environment_cvterm_id,environment_id,cvterm_id]).
flybase_cols(expression,[ expression_id,uniquename,md5checksum,description]).
flybase_cols(expression_cvterm,[ expression_cvterm_id,expression_id,cvterm_id,rank,cvterm_type_id]).
flybase_cols(expression_cvtermprop,[ expression_cvtermprop_id,expression_cvterm_id,type_id,value,rank]).
flybase_cols(expression_image,[ expression_image_id,expression_id,eimage_id]).
flybase_cols(expressionprop,[ expressionprop_id,expression_id,type_id,value,rank]).
flybase_cols(expression_pub,[ expression_pub_id,expression_id,pub_id]).
flybase_cols(feature,[ feature_id,dbxref_id,organism_id,name,uniquename,residues,seqlen,md5checksum,type_id,is_analysis,timeaccessioned,timelastmodified,is_obsolete]).
flybase_cols(feature_cvterm,[ feature_cvterm_id,feature_id,cvterm_id,pub_id,is_not]).
flybase_cols(feature_cvterm_dbxref,[ feature_cvterm_dbxref_id,feature_cvterm_id,dbxref_id]).
flybase_cols(feature_cvtermprop,[ feature_cvtermprop_id,feature_cvterm_id,type_id,value,rank]).
flybase_cols(feature_dbxref,[ feature_dbxref_id,feature_id,dbxref_id,is_current]).
flybase_cols(feature_expression,[ feature_expression_id,expression_id,feature_id,pub_id]).
flybase_cols(feature_expressionprop,[ feature_expressionprop_id,feature_expression_id,type_id,value,rank]).
flybase_cols(feature_genotype,[ feature_genotype_id,feature_id,genotype_id,chromosome_id,rank,cgroup,cvterm_id]).
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
flybase_cols(genotype_cvterm,[ genotype_cvterm_id,genotype_id,cvterm_id,pub_id,is_not,rank]).
flybase_cols(genotype_cvtermprop,[ genotype_cvtermprop_id,genotype_cvterm_id,type_id,value,rank]).
flybase_cols(genotype_dbxref,[ genotype_dbxref_id,genotype_id,dbxref_id,is_current]).
flybase_cols(genotype_synonym,[ genotype_synonym_id,genotype_id,synonym_id,pub_id,is_current,is_internal]).
flybase_cols(genotypeprop,[ genotypeprop_id,genotype_id,type_id,value,rank,cvalue_id]).
flybase_cols(genotypeprop_pub,[ genotypeprop_pub_id,genotypeprop_id,pub_id]).
flybase_cols(genotype_pub,[ genotype_pub_id,genotype_id,pub_id]).
flybase_cols(grp,[ grp_id,name,uniquename,type_id,is_analysis,is_obsolete]).
flybase_cols(grp_cvterm,[ grp_cvterm_id,is_not,cvterm_id,grp_id,pub_id]).
flybase_cols(grp_dbxref,[ grp_dbxref_id,is_current,dbxref_id,grp_id]).
flybase_cols(grp_pubprop,[ grp_pubprop_id,value,rank,type_id,grp_pub_id]).
flybase_cols(grp_relationship,[ grp_relationship_id,value,rank,type_id,subject_id,object_id]).
flybase_cols(grp_relationshipprop,[ grp_relationshipprop_id,value,rank,type_id,grp_relationship_id]).
flybase_cols(grp_relationship_pub,[ grp_relationship_pub_id,pub_id,grp_relationship_id]).
flybase_cols(grp_synonym,[ grp_synonym_id,synonym_id,grp_id,pub_id,is_current,is_internal]).
flybase_cols(grpmember,[ grpmember_id,rank,type_id,grp_id]).
flybase_cols(grpmember_cvterm,[ grpmember_cvterm_id,is_not,cvterm_id,grpmember_id,pub_id]).
flybase_cols(grpmemberprop,[ grpmemberprop_id,value,rank,type_id,grpmember_id]).
flybase_cols(grpmemberprop_pub,[ grpmemberprop_pub_id,pub_id,grpmemberprop_id]).
flybase_cols(grpmember_pub,[ grpmember_pub_id,pub_id,grpmember_id]).
flybase_cols(grpprop,[ grpprop_id,value,rank,type_id,grp_id]).
flybase_cols(grpprop_pub,[ grpprop_pub_id,pub_id,grpprop_id]).
flybase_cols(grp_pub,[ grp_pub_id,pub_id,grp_id]).
flybase_cols(humanhealth,[ humanhealth_id,name,uniquename,organism_id,dbxref_id,is_obsolete]).
flybase_cols(humanhealth_cvterm,[ humanhealth_cvterm_id,humanhealth_id,cvterm_id,pub_id]).
flybase_cols(humanhealth_cvtermprop,[ humanhealth_cvtermprop_id,humanhealth_cvterm_id,type_id,value,rank]).
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
flybase_cols(interaction_cvterm,[ interaction_cvterm_id,interaction_id,cvterm_id]).
flybase_cols(interaction_cvtermprop,[ interaction_cvtermprop_id,interaction_cvterm_id,type_id,value,rank]).
flybase_cols(interaction_expression,[ interaction_expression_id,expression_id,interaction_id,pub_id]).
flybase_cols(interaction_expressionprop,[ interaction_expressionprop_id,interaction_expression_id,type_id,value,rank]).
flybase_cols(interaction_group,[ interaction_group_id,uniquename,is_obsolete,description]).
flybase_cols(interaction_group_feature_interaction,[ interaction_group_feature_interaction_id,interaction_group_id,feature_interaction_id,rank,ftype]).
flybase_cols(interactionprop,[ interactionprop_id,interaction_id,type_id,value,rank]).
flybase_cols(interactionprop_pub,[ interactionprop_pub_id,interactionprop_id,pub_id]).
flybase_cols(interaction_pub,[ interaction_pub_id,interaction_id,pub_id]).
flybase_cols(library,[ library_id,organism_id,name,uniquename,type_id,is_obsolete,timeaccessioned,timelastmodified]).
flybase_cols(library_cvterm,[ library_cvterm_id,library_id,cvterm_id,pub_id]).
flybase_cols(library_cvtermprop,[ library_cvtermprop_id,library_cvterm_id,type_id,value,rank]).
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
flybase_cols(organism_cvterm,[ organism_cvterm_id,organism_id,cvterm_id,rank,pub_id]).
flybase_cols(organism_cvtermprop,[ organism_cvtermprop_id,organism_cvterm_id,type_id,value,rank]).
flybase_cols(organism_dbxref,[ organism_dbxref_id,organism_id,dbxref_id,is_current]).
flybase_cols(organism_grpmember,[ organism_grpmember_id,grpmember_id,organism_id]).
flybase_cols(organism_library,[ organism_library_id,organism_id,library_id]).
flybase_cols(organismprop,[ organismprop_id,organism_id,type_id,value,rank]).
flybase_cols(organismprop_pub,[ organismprop_pub_id,organismprop_id,pub_id]).
flybase_cols(organism_pub,[ organism_pub_id,organism_id,pub_id]).
flybase_cols(phendesc,[ phendesc_id,genotype_id,environment_id,description,type_id,pub_id]).
flybase_cols(phenotype,[ phenotype_id,uniquename,observable_id,attr_id,value,cvalue_id,assay_id]).
flybase_cols(phenotype_comparison,[ phenotype_comparison_id,genotype1_id,environment1_id,genotype2_id,environment2_id,phenotype1_id,phenotype2_id,pub_id,organism_id]).
flybase_cols(phenotype_comparison_cvterm,[ phenotype_comparison_cvterm_id,phenotype_comparison_id,cvterm_id,rank]).
flybase_cols(phenotype_cvterm,[ phenotype_cvterm_id,phenotype_id,cvterm_id,rank]).
flybase_cols(phenstatement,[ phenstatement_id,genotype_id,environment_id,phenotype_id,type_id,pub_id]).
flybase_cols(project,[ project_id,name,description]).
flybase_cols(pub,[ pub_id,title,volumetitle,volume,series_name,issue,pyear,pages,miniref,type_id,is_obsolete,publisher,pubplace,uniquename]).
flybase_cols(pub_dbxref,[ pub_dbxref_id,pub_id,dbxref_id,is_current]).
flybase_cols(pub_relationship,[ pub_relationship_id,type_id,subject_id,object_id]).
flybase_cols(pubauthor,[ pubauthor_id,pub_id,rank,editor,surname,givennames,suffix]).
flybase_cols(pubprop,[ pubprop_id,pub_id,type_id,value,rank]).
flybase_cols(stock,[ stock_id,dbxref_id,organism_id,name,uniquename,description,type_id,is_obsolete]).
flybase_cols(stock_cvterm,[ stock_cvterm_id,stock_id,cvterm_id,pub_id]).
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
flybase_cols(strain_cvterm,[ strain_cvterm_id,strain_id,cvterm_id,pub_id]).
flybase_cols(strain_cvtermprop,[ strain_cvtermprop_id,strain_cvterm_id,type_id,value,rank]).
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
analysis, analysisfeature, analysisgrp, analysisgrpmember, analysisprop, audit_chado, cell_line, cell_line_cvterm, cell_line_cvtermprop, 
cell_line_dbxref, cell_line_feature, cell_line_library, cell_line_libraryprop, cell_line_pub, cell_line_relationship, cell_line_strain, 
cell_line_strainprop, cell_line_synonym, cell_lineprop, cell_lineprop_pub, contact, cv, cvterm, cvterm_dbxref, cvterm_relationship, 
cvtermpath, cvtermprop, cvtermsynonym, db, dbxref, dbxrefprop, eimage, environment, environment_cvterm, expression, expression_cvterm, 
expression_cvtermprop, expression_image, expression_pub, expressionprop, feature, feature_cvterm, feature_cvterm_dbxref, 
feature_cvtermprop, feature_dbxref, feature_expression, feature_expressionprop, feature_genotype, feature_grpmember, 
feature_grpmember_pub, feature_humanhealth_dbxref, feature_interaction, feature_interaction_pub, feature_interactionprop, 
feature_phenotype, feature_pub, feature_pubprop, feature_relationship, feature_relationship_pub, feature_relationshipprop, 
feature_relationshipprop_pub, feature_synonym, featureloc, featureloc_pub, featuremap, featuremap_pub, featurepos, featureprop, 
featureprop_pub, featurerange, genotype, genotype_cvterm, genotype_cvtermprop, genotype_dbxref, genotype_pub, genotype_synonym, 
genotypeprop, genotypeprop_pub, grp, grp_cvterm, grp_dbxref, grp_pub, grp_pubprop, grp_relationship, grp_relationship_pub, 
grp_relationshipprop, grp_synonym, grpmember, grpmember_cvterm, grpmember_pub, grpmemberprop, grpmemberprop_pub, grpprop, 
grpprop_pub, humanhealth, humanhealth_cvterm, humanhealth_cvtermprop, humanhealth_dbxref, humanhealth_dbxrefprop, 
humanhealth_dbxrefprop_pub, humanhealth_feature, humanhealth_featureprop, humanhealth_phenotype, humanhealth_phenotypeprop, 
humanhealth_pub, humanhealth_pubprop, humanhealth_relationship, humanhealth_relationship_pub, humanhealth_synonym, humanhealthprop, 
humanhealthprop_pub, interaction, interaction_cell_line, interaction_cvterm, interaction_cvtermprop, interaction_expression, 
interaction_expressionprop, interaction_group, interaction_group_feature_interaction, interaction_pub, interactionprop, 
interactionprop_pub, library, library_cvterm, library_cvtermprop, library_dbxref, library_dbxrefprop, library_expression, 
library_expressionprop, library_feature, library_featureprop, library_grpmember, library_humanhealth, library_humanhealthprop, 
library_interaction, library_pub, library_relationship, library_relationship_pub, library_strain, library_strainprop, library_synonym,
 libraryprop, libraryprop_pub, lock, organism, organism_cvterm, organism_cvtermprop, organism_dbxref, organism_grpmember, 
 organism_library, organism_pub, organismprop, organismprop_pub, phendesc, phenotype, phenotype_comparison, phenotype_comparison_cvterm,
  phenotype_cvterm, phenstatement, project, pub, pub_dbxref, pub_relationship, pubauthor, pubprop, sql_features, sql_implementation_info, 
  sql_parts, sql_sizing, stock, stock_cvterm, stock_dbxref, stock_genotype, stock_pub, stock_relationship, stock_relationship_pub, 
  stockcollection, stockcollection_stock, stockcollectionprop, stockprop, stockprop_pub, strain, strain_cvterm, strain_cvtermprop, 
  strain_dbxref, strain_feature, strain_featureprop, strain_phenotype, strain_phenotypeprop, 
strain_pub, strain_relationship, strain_relationship_pub, strain_synonym, strainprop, strainprop_pub, synonym, tableinfo, update_track]).

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
  fmt((Arity2Call:-DataCall)),
  assert_if_new((Arity2Call:-DataCall)))).
  
make_arity_2_name(Table,Nth,Arity2):-
  clip_id(Nth,NthNoID),
  (atom_concat(Table,_,Nth)
    -> Arity2 = Nth 
    ; atomic_list_concat([Table,NthNoID],'_',Arity2)).


clip_id(Nth,ID):- (atom_concat(ID,'_id',Nth)->true;Nth=ID),!.




setup_flybase_cols:- forall(flybase_cols(Table,Columns),
  use_flybase_cols(Table,Columns)).



%:- initialization(cvt_flybase).

