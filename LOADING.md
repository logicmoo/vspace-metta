```
root@gitlab:/opt/logicmoo_workspace/packs_sys/logicmoo_opencog/MeTTa/metta-vspace# metta 6-Learn-Flybase-Full.metta
Version-Space Init: /mnt/ffff/metta-vspace/metta_vspace/metta_learner.py


Init took 0.00046641 seconds
% init_phase(after_load).
echo_option(libonly,true)

%~ call_in_thread('user:wdmsg(call_in_thread)',user,wdmsg(call_in_thread))
%~ call_in_thread.
%~ call_in_thread
echo_option(libonly,true)

%~ /opt/logicmoo_workspace/packs_sys/logicmoo_agi/prolog/kaggle_arc/kaggle_arc.pl:955
%~ 'removed check:list_undefined and list_void_declarations use:  ?- real_list_undefined([]),real_list_void_declarations. '.


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

; Total         Atoms (Atomspace size): ........................................................... 0
;               ConceptNodes: ..................................................................... 0
;               Random samples: ................................................................... 0
;               Total Memory Used: ....................................................... 10,805,152
;               Runtime (days:hh:mm:ss): ................................................. 0:00:00:18


 (load_flybase  tsv "./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_expanded_fb_2023_04.tsv" "./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_expanded_fb_2023_04.pl" fbgn_fbtr_fbpp_expanded)
 (track_load_into_file  "./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_expanded_fb_2023_04.tsv")

 ; ## FlyBase expanded current gene product report
 ; ## Generated: Mon Jul 24 23:20:13 2023
 ; ## Using datasource: fb_2023_04_reporting
 ; ##
 ; ## organism  gene_type       gene_ID gene_symbol     gene_fullname   annotation_ID   transcript_type transcript_ID   transcript_symbol       polypeptide_ID  polypeptide_symbol
 (load_fb_data  (1 FBgn FBtr FBpp) "./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_expanded_fb_2023_04.tsv" inf fbgn_fbtr_fbpp_expanded         )
newData(10)=(fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000015 Abd-B "Abdominal B" CG11648 mRNA FBtr0083381 Abd-B-RC FBpp0082823 Abd-B-PC)
newData(11)=(fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000015 Abd-B "Abdominal B" CG11648 mRNA FBtr0083382 Abd-B-RA FBpp0082824 Abd-B-PA)
newData(12)=(fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000015 Abd-B "Abdominal B" CG11648 mRNA FBtr0083383 Abd-B-RD FBpp0082825 Abd-B-PD)
newData(13)=(fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000015 Abd-B "Abdominal B" CG11648 mRNA FBtr0083384 Abd-B-RB FBpp0082826 Abd-B-PB)
.......


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

; Total         Atoms (Atomspace size): .................................................. 43,151,849
;               ConceptNodes: ............................................................ 10,757,900
;               Random samples: ............................................................... 3,039
;               Total Memory Used: ............................................................ 9.17G
;               Runtime (days:hh:mm:ss): ................................................. 0:00:40:42

metta +>
```



Commands ending with period "." are sent to PySwip ; We only using them to show statistics
```
metta +> print_loaded_from_files.
 (loaded_from_file      22_220_267 './data/ftp.flybase.net/releases/current/precomputed_files/metadata/dataset_metadata_fb_2023_04.tsv')
 (loaded_from_file       5_580_890 './data/ftp.flybase.net/releases/current/precomputed_files/references/entity_publication_fb_2023_04.tsv')
 (loaded_from_file       2_928_712 './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_rpkm_report_fb_2023_04.tsv')
 (loaded_from_file       2_639_866 './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/chebi_fb_2023_04.obo')
 (loaded_from_file       2_262_949 './data/ftp.flybase.net/releases/current/precomputed_files/collaborators/pmid_fbgn_uniprot_fb_2023_04.tsv')
 (loaded_from_file       1_316_133 './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_NAseq_Uniprot_fb_2023_04.tsv')
 (loaded_from_file       1_001_255 './data/ftp.flybase.net/releases/current/precomputed_files/synonyms/fb_synonym_fb_2023_04.tsv')
 (loaded_from_file         722_571 './data/ftp.flybase.net/releases/current/precomputed_files/clones/cDNA_clone_data_fb_2023_04.tsv')
 (loaded_from_file         519_823 './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/go-basic.obo')
 (loaded_from_file         384_207 './data/ftp.flybase.net/releases/current/precomputed_files/alleles/genotype_phenotype_data_fb_2023_04.tsv')
 (loaded_from_file         363_453 './data/ftp.flybase.net/releases/current/precomputed_files/alleles/allele_genetic_interactions_fb_2023_04.tsv')
 (loaded_from_file         288_469 './data/ftp.flybase.net/releases/current/precomputed_files/alleles/fbal_to_fbgn_fb_2023_04.tsv')
 (loaded_from_file         251_228 './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/fly_anatomy.obo')
 (loaded_from_file         250_923 './data/ftp.flybase.net/releases/current/precomputed_files/genes/automated_gene_summaries_fb_2023_04.tsv')
 (loaded_from_file         250_923 './data/ftp.flybase.net/releases/current/precomputed_files/genes/automated_gene_summaries.tsv')
 (loaded_from_file         245_830 './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_map_table_fb_2023_04.tsv')
 (loaded_from_file         223_056 './data/ftp.flybase.net/releases/current/precomputed_files/orthologs/dmel_paralogs_fb_2023_04.tsv')
 (loaded_from_file         212_011 './data/ftp.flybase.net/releases/current/precomputed_files/insertions/insertion_mapping_fb_2023_04.tsv')
 (loaded_from_file         174_894 './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_gleanr_fb_2023_04.tsv')
 (loaded_from_file         147_155 './data/ftp.flybase.net/releases/current/precomputed_files/stocks/stocks_FB2023_04.tsv')
 (loaded_from_file         144_465 './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/doid.obo')
 (loaded_from_file          99_296 './data/ftp.flybase.net/releases/current/precomputed_files/references/fbrf_pmid_pmcid_doi_fb_2023_04.tsv')
 (loaded_from_file          57_987 './data/ftp.flybase.net/releases/current/precomputed_files/species/organism_list_fb_2023_04.tsv')
 (loaded_from_file          51_248 './data/ftp.flybase.net/releases/current/precomputed_files/genes/physical_interactions_mitab_fb_2023_04.tsv')
 (loaded_from_file          50_401 './data/ftp.flybase.net/releases/current/precomputed_files/clones/genomic_clone_data_fb_2023_04.tsv')
 (loaded_from_file          38_591 './data/ftp.flybase.net/releases/current/precomputed_files/genes/dmel_gene_sequence_ontology_annotations_fb_2023_04.tsv')
 (loaded_from_file          35_733 './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_fb_2023_04.tsv')
 (loaded_from_file          35_733 './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_expanded_fb_2023_04.tsv')
 (loaded_from_file          35_107 './data/ftp.flybase.net/releases/current/precomputed_files/orthologs/dmel_human_orthologs_disease_fb_2023_04.tsv')
 (loaded_from_file          32_530 './data/ftp.flybase.net/releases/current/precomputed_files/collaborators/fbgn_uniprot_fb_2023_04.tsv')
 (loaded_from_file          32_143 './data/ftp.flybase.net/releases/current/precomputed_files/genes/best_gene_summary_fb_2023_04.tsv')
 (loaded_from_file          26_751 './data/ftp.flybase.net/releases/current/precomputed_files/human_disease/disease_model_annotations_fb_2023_04.tsv')
 (loaded_from_file          22_467 './data/SO-Ontologies/Ontology_Files/so.obo')
 (loaded_from_file          22_453 './data/ftp.flybase.net/releases/current/precomputed_files/genes/dmel_unique_protein_isoforms_fb_2023_04.tsv')
 (loaded_from_file          22_015 './data/SO-Ontologies/Ontology_Files/so-simple.obo')
 (loaded_from_file          21_982 './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/so-simple.obo')
 (loaded_from_file          21_580 './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/slice.chebi.obo')
 (loaded_from_file          20_322 './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_genetic_interactions_fb_2023_04.tsv')
 (loaded_from_file          17_902 './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_annotation_ID_fb_2023_04.tsv')
 (loaded_from_file          17_748 './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_rpkm_matrix_fb_2023_04.tsv')
 (loaded_from_file          13_986 './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_snapshots_fb_2023_04.tsv')
 (loaded_from_file          13_986 './data/ftp.flybase.net/releases/current/precomputed_files/collaborators/gp_information.fb')
 (loaded_from_file          13_746 './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_exons2affy2_overlaps.tsv')
 (loaded_from_file          13_398 './data/ftp.flybase.net/releases/current/precomputed_files/transposons/transposon_sequence_set.fa')
 (loaded_from_file          12_497 './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_exons2affy1_overlaps.tsv')
 (loaded_from_file          12_095 './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/gene_group_FB2023_04.obo')
 (loaded_from_file          11_223 './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/psi-mi.obo')
 (loaded_from_file          10_959 './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_group_data_fb_2023_04.tsv')
 (loaded_from_file           8_883 './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/flybase_controlled_vocabulary.obo')
 (loaded_from_file           5_034 './data/ftp.flybase.net/releases/current/precomputed_files/map_conversion/genome-cyto-seq.txt')
 (loaded_from_file           3_970 './data/ftp.flybase.net/releases/current/precomputed_files/genes/Dmel_enzyme_data_fb_2023_04.tsv')
 (loaded_from_file           2_903 './data/SO-Ontologies/Ontology_Files/subsets/SOFA.obo')
 (loaded_from_file           1_813 './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/fly_development.obo')
 (loaded_from_file           1_713 './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_groups_HGNC_fb_2023_04.tsv')
 (loaded_from_file           1_627 './data/SO-Ontologies/Ontology_Files/subsets/biosapiens.obo')
 (loaded_from_file           1_092 './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/image.obo')
 (loaded_from_file             994 './data/ftp.flybase.net/releases/current/precomputed_files/genes/pathway_group_data_fb_2023_04.tsv')
 (loaded_from_file             750 './data/ftp.flybase.net/releases/current/precomputed_files/transposons/transposon_sequence_set.gff')
 (loaded_from_file             601 './data/ftp.flybase.net/releases/current/precomputed_files/map_conversion/cyto-genetic-seq.tsv')
 (loaded_from_file             545 './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/flybase_stock_vocabulary.obo')
 (loaded_from_file             464 './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_functional_complementation_fb_2023_04.tsv')
 (loaded_from_file             420 './data/SO-Ontologies/Ontology_Files/subsets/DBVAR.obo')
 (loaded_from_file             348 './data/SO-Ontologies/Ontology_Files/subsets/Alliance_of_Genome_Resources.obo')
 (loaded_from_file               0 './data/ftp.flybase.net/releases/current/precomputed_files/map_conversion/cytotable.txt')

true.
```

Table sizes
```
metta +> print_est_sizes.

 (est_size_loaded      22_220_267 dataset_metadata/4)
 (est_size_loaded       5_580_889 entity_publication/4)
 (est_size_loaded       2_928_712 gene_rpkm_report/12)
 (est_size_loaded       2_262_949 pmid_fbgn_uniprot/5)
 (est_size_loaded       1_316_132 fbgn_NAseq_Uniprot/9)
 (est_size_loaded       1_001_254 synonym/6)
 (est_size_loaded         722_570 cDNA_clone/6)
 (est_size_loaded         388_184 obo_name/2)
 (est_size_loaded         384_206 genotype_phenotype/7)
 (est_size_loaded         367_008 obo_is_a/2)
 (est_size_loaded         363_453 allele_genetic_interactions/4)
 (est_size_loaded         288_469 fbal_to_fbgn/4)
 (est_size_loaded         261_097 obo_id_type/2)
 (est_size_loaded         245_829 gene_map_table/6)
 (est_size_loaded         223_056 dmel_paralogs/11)
 (est_size_loaded         212_010 insertion_mapping/7)
 (est_size_loaded         192_302 obo_subset/2)
 (est_size_loaded         174_894 fbgn_gleanr/4)
 (est_size_loaded         154_442 obo_formula/2)
 (est_size_loaded         152_978 obo_charge/2)
 (est_size_loaded         152_160 obo_mass/2)
 (est_size_loaded         152_123 obo_monoisotopicmass/2)
 (est_size_loaded         150_843 obo_smiles/2)
 (est_size_loaded         147_155 stocks/7)
 (est_size_loaded         141_498 obo_inchikey/2)
 (est_size_loaded         141_498 obo_inchi/2)
 (est_size_loaded          99_294 fbrf_pmid_pmcid_doi/7)
 (est_size_loaded          96_045 obo_synonym/5)
 (est_size_loaded          57_986 organism_list/6)
 (est_size_loaded          51_248 physical_interactions_mitab/42)
 (est_size_loaded          50_401 genomic_clone/4)
 (est_size_loaded          49_424 obo_namespace/2)
 (est_size_loaded          42_877 obo_has_role/2)
 (est_size_loaded          38_591 dmel_gene_sequence_ontology_annotations/4)
 (est_size_loaded          35_732 fbgn_fbtr_fbpp_expanded/11)
 (est_size_loaded          35_732 fbgn_fbtr_fbpp/3)
 (est_size_loaded          35_107 dmel_human_orthologs_disease/8)
 (est_size_loaded          32_530 fbgn_uniprot/4)
 (est_size_loaded          32_143 best_gene_summary/4)
 (est_size_loaded          27_827 obo_receives_synaptic_input_in_region/3)
 (est_size_loaded          27_370 automated_gene_summaries/3)
 (est_size_loaded          26_750 disease_model_annotations/12)
 (est_size_loaded          24_767 obo_alt_id/2)
 (est_size_loaded          22_453 dmel_unique_protein_isoforms/4)
 (est_size_loaded          20_392 obo_sends_synaptic_output_to_region/3)
 (est_size_loaded          20_322 gene_genetic_interactions/6)
 (est_size_loaded          18_661 obo_comment/2)
 (est_size_loaded          18_615 obo_has_functional_parent/2)
 (est_size_loaded          17_901 fbgn_annotation_ID/6)
 (est_size_loaded          17_748 gene_rpkm_matrix/170)
 (est_size_loaded          14_558 obo_part_of/3)
 (est_size_loaded          13_986 gene_snapshots/5)
 (est_size_loaded          13_985 gp_information/10)
 (est_size_loaded          13_746 fbgn_exons2affy2_overlaps/2)
 (est_size_loaded          13_216 transposon_sequence_set/62)
 (est_size_loaded          12_497 fbgn_exons2affy1_overlaps/2)
 (est_size_loaded          10_958 gene_group/7)
 (est_size_loaded           8_995 obo_is_obsolete/2)
 (est_size_loaded           8_405 obo_is_conjugate_base_of/2)
 (est_size_loaded           8_405 obo_is_conjugate_acid_of/2)
 (est_size_loaded           5_680 obo_has_synaptic_IO_in/3)
 (est_size_loaded           5_034 'genome-cyto-seq'/3)
 (est_size_loaded           4_198 obo_created_by/2)
 (est_size_loaded           4_196 obo_creation_date/2)
 (est_size_loaded           3_969 'Dmel_enzyme'/11)
 (est_size_loaded           3_120 obo_regulates/3)
 (est_size_loaded           2_880 obo_consider/2)
 (est_size_loaded           2_724 obo_is_enantiomer_of/2)
 (est_size_loaded           2_704 obo_negatively_regulates/3)
 (est_size_loaded           2_692 obo_positively_regulates/3)
 (est_size_loaded           2_126 obo_has_soma_location/3)
 (est_size_loaded           1_951 obo_overlaps/3)
 (est_size_loaded           1_874 obo_is_tautomer_of/2)
 (est_size_loaded           1_759 obo_has_parent_hydride/2)
 (est_size_loaded           1_744 obo_develops_from/3)
 (est_size_loaded           1_711 gene_groups_HGNC/4)
 (est_size_loaded           1_422 obo_replaced_by/2)
 (est_size_loaded           1_283 obo_is_substituent_group_from/2)
 (est_size_loaded           1_149 obo_sends_synaptic_output_to_cell/3)
 (est_size_loaded             993 pathway_group/7)
 (est_size_loaded             738 obo_receives_synaptic_input_from_neuron/3)
 (est_size_loaded             706 obo_fasciculates_with/3)
 (est_size_loaded             601 'cyto-genetic-seq'/4)
 (est_size_loaded             572 obo_has_sensory_dendrite_in/3)
 (est_size_loaded             526 obo_continuous_with/3)
 (est_size_loaded             495 obo_has_quality/3)
 (est_size_loaded             464 obo_has_part/3)
 (est_size_loaded             464 gene_functional_complementation/5)
 (est_size_loaded             311 obo_synapsed_via_type_Ib_bouton_to/3)
 (est_size_loaded             287 obo_innervates/3)
 (est_size_loaded             239 obo_immediately_preceded_by/3)
 (est_size_loaded             233 obo_intersection_of/4)
 (est_size_loaded             229 obo_has_fasciculating_neuron_projection/3)
 (est_size_loaded             215 obo_derives_from/3)
 (est_size_loaded             200 obo_synapsed_via_type_II_bouton_to/3)
 (est_size_loaded             186 obo_receives_synaptic_input_throughout/3)
 (est_size_loaded             185 obo_substage_of/3)
 (est_size_loaded             153 obo_def/4)
 (est_size_loaded             148 obo_synapsed_via_type_Is_bouton_to/3)
 (est_size_loaded             126 obo_attached_to/3)
 (est_size_loaded             124 obo_subsetdef/3)
 (est_size_loaded              92 obo_disjoint_from/3)
 (est_size_loaded              90 obo_has_origin/3)
 (est_size_loaded              89 obo_receives_input_from/3)
 (est_size_loaded              74 obo_sends_synaptic_output_throughout/3)
 (est_size_loaded              74 obo_is_transitive/2)
 (est_size_loaded              68 obo_develops_into/3)
 (est_size_loaded              34 obo_remark/2)
 (est_size_loaded              31 obo_is_symmetric/2)
 (est_size_loaded              30 obo_electrically_synapsed_to/3)
 (est_size_loaded              24 obo_synonymtypedef/4)
 (est_size_loaded              23 obo_develops_directly_from/3)
 (est_size_loaded              21 obo_transcribed_to/3)
 (est_size_loaded              20 obo_attached_to_part_of/3)
 (est_size_loaded              19 obo_adjacent_to/3)
 (est_size_loaded              18 obo_pathname/2)
 (est_size_loaded              18 'obo_format-version'/2)
 (est_size_loaded              18 obo_directory/2)
 (est_size_loaded              18 obo_basename/2)
 (est_size_loaded              17 obo_innervated_by/3)
 (est_size_loaded              16 obo_non_functional_homolog_of/3)
 (est_size_loaded              14 obo_synapsed_via_type_III_bouton_to/3)
 (est_size_loaded              14 obo_ontology/2)
 (est_size_loaded              13 'obo_default-namespace'/2)
 (est_size_loaded              12 obo_date/2)
 (est_size_loaded              12 'obo_data-version'/2)
 (est_size_loaded              11 obo_member_of/3)
 (est_size_loaded              11 obo_has_synaptic_IO_throughout/3)
 (est_size_loaded              10 'obo_saved-by'/2)
 (est_size_loaded              10 obo_is_cyclic/2)
 (est_size_loaded               9 obo_variant_of/3)
 (est_size_loaded               9 obo_transitive_over/3)
 (est_size_loaded               9 obo_holds_over_chain/2)
 (est_size_loaded               9 obo_contains/3)
 (est_size_loaded               8 obo_composed_primarily_of/3)
 (est_size_loaded               7 obo_inverse_of/3)
 (est_size_loaded               6 obo_conditionality/3)
 (est_size_loaded               6 'obo_auto-generated-by'/2)
 (est_size_loaded               4 obo_xref_analog/2)
 (est_size_loaded               4 'obo_OBI:9991118'/2)
 (est_size_loaded               3 obo_xref/4)
 (est_size_loaded               3 obo_transcribed_from/3)
 (est_size_loaded               3 obo_guided_by/3)
 (est_size_loaded               3 obo_develops_from_part_of/3)
 (est_size_loaded               3 obo_RO/4)
 (est_size_loaded               2 obo_property_value/3)
 (est_size_loaded               2 obo_connected_to/3)
 (est_size_loaded               1 pathname/2)
 (est_size_loaded               1 'obo_owl:versionInfo'/2)
 (est_size_loaded               1 'obo_namespace-id-rule'/2)
 (est_size_loaded               1 obo_is_metadata_tag/2)
 (est_size_loaded               1 obo_is_inverse_functional/2)
 (est_size_loaded               1 obo_is_functional/2)
 (est_size_loaded               1 obo_is_class_level/2)
 (est_size_loaded               1 id_type/2)
 (est_size_loaded               1 directory/2)

true.
```

Inspect develops_into
```
metta +> listing(develops_into).
:- dynamic develops_into/3.

develops_into('FBbt00001247', 'FBbt00047857', 'larval brain neuropil glial cell').
develops_into('FBbt00001311', 'FBbt00047856', 'larval neuropil glial cell').
develops_into('FBbt00001313', 'FBbt00047840', 'embryonic/larval astrocyte-like glial cell').
develops_into('FBbt00001328', 'FBbt00051073', 'embryonic/larval PNS subperineurial glial cell').
develops_into('FBbt00001330', 'FBbt00051073', 'embryonic/larval PNS subperineurial glial cell').
develops_into('FBbt00051422', 'FBbt00047194', 'larval Basin neuron').
develops_into('FBbt00051426', 'FBbt00051425', 'larval chordotonal neuron').
develops_into('FBbt00051447', 'FBbt00007507', 'adult ellipsoid body R-neuron').
develops_into('FBbt00051451', 'FBbt00047047', 'adult tubercle-bulb neuron').
develops_into('FBbt00051454', 'FBbt00003637', 'adult ellipsoid body-protocerebral bridge-gall neuron').
develops_into('FBbt00052257', 'FBbt00003731', 'T4 neuron').
develops_into('FBbt00052258', 'FBbt00003736', 'T5 neuron').
develops_into('FBbt00052259', 'FBbt00003737', 'T5a neuron').
develops_into('FBbt00052260', 'FBbt00003738', 'T5b neuron').
develops_into('FBbt00052261', 'FBbt00003739', 'T5c neuron').
develops_into('FBbt00052262', 'FBbt00003740', 'T5d neuron').
develops_into('FBbt00052263', 'FBbt00003732', 'T4a neuron').
develops_into('FBbt00052264', 'FBbt00003733', 'T4b neuron').
develops_into('FBbt00052265', 'FBbt00003734', 'T4c neuron').
develops_into('FBbt00052266', 'FBbt00003735', 'T4d neuron').
develops_into('FBbt00052305', 'FBbt00003768', 'distal medullary amacrine neuron Dm1').
develops_into('FBbt00052306', 'FBbt00110135', 'distal medullary amacrine neuron Dm10').
develops_into('FBbt00052307', 'FBbt00111272', 'distal medullary amacrine neuron Dm11').
develops_into('FBbt00052308', 'FBbt00111273', 'distal medullary amacrine neuron Dm12').
develops_into('FBbt00052309', 'FBbt00003769', 'distal medullary amacrine neuron Dm2').
develops_into('FBbt00052310', 'FBbt00003770', 'distal medullary amacrine neuron Dm3').
develops_into('FBbt00052311', 'FBbt00052303', 'distal medullary amacrine neuron Dm3a').
develops_into('FBbt00052312', 'FBbt00052304', 'distal medullary amacrine neuron Dm3b').
develops_into('FBbt00052313', 'FBbt00003771', 'distal medullary amacrine neuron Dm4').
develops_into('FBbt00052314', 'FBbt00013774', 'distal medullary amacrine neuron Dm8').
develops_into('FBbt00052315', 'FBbt00111271', 'distal medullary amacrine neuron Dm9').
develops_into('FBbt00052316', 'FBbt00003746', 'lamina intrinsic neuron').
develops_into('FBbt00052317', 'FBbt00003776', 'medullary intrinsic neuron Mi1').
develops_into('FBbt00052318', 'FBbt00111285', 'medullary intrinsic neuron Mi15').
develops_into('FBbt00052319', 'FBbt00003779', 'medullary intrinsic neuron Mi4').
develops_into('FBbt00052320', 'FBbt00003784', 'medullary intrinsic neuron Mi9').
develops_into('FBbt00052321', 'FBbt00003833', 'proximal medullary amacrine neuron Pm1').
develops_into('FBbt00052322', 'FBbt00003835', 'proximal medullary amacrine neuron Pm2').
develops_into('FBbt00052323', 'FBbt00111282', 'proximal medullary amacrine neuron Pm4').
develops_into('FBbt00052324', 'FBbt00003727', 'columnar neuron T1').
develops_into('FBbt00052325', 'FBbt00003789', 'transmedullary neuron Tm1').
develops_into('FBbt00052326', 'FBbt00003790', 'transmedullary neuron Tm2').
develops_into('FBbt00052327', 'FBbt00003808', 'transmedullary neuron Tm20').
develops_into('FBbt00052328', 'FBbt00049916', 'transmedullary neuron Tm29').
develops_into('FBbt00052329', 'FBbt00003791', 'transmedullary neuron Tm3a').
develops_into('FBbt00052330', 'FBbt00003792', 'transmedullary neuron Tm4').
develops_into('FBbt00052331', 'FBbt00110073', 'transmedullary neuron Tm5b').
develops_into('FBbt00052332', 'FBbt00110074', 'transmedullary neuron Tm5c').
develops_into('FBbt00052333', 'FBbt00003797', 'transmedullary neuron Tm9').
develops_into('FBbt00052334', 'FBbt00058233', 'transmedullary neuron Tm9a').
develops_into('FBbt00052335', 'FBbt00058234', 'transmedullary neuron Tm9b').
develops_into('FBbt00052336', 'FBbt00111286', 'transmedullary Y neuron TmY14').
develops_into('FBbt00052337', 'FBbt00003820', 'transmedullary Y neuron TmY3').
develops_into('FBbt00052338', 'FBbt00003821', 'transmedullary Y neuron TmY4').
develops_into('FBbt00052339', 'FBbt00003823', 'transmedullary Y neuron TmY5a').
develops_into('FBbt00052340', 'FBbt00003826', 'transmedullary Y neuron TmY8').
develops_into('FBbt00052343', 'FBbt00005899', 'adult dorsal cluster neuron').
develops_into('FBbt00052347', 'FBbt00052350', 'pupal late CCAP neuron').
develops_into('FBbt00052348', 'FBbt00111334', 'pupal A8-A9 late CCAP neuron').
develops_into('FBbt00052349', 'FBbt00052352', 'pupal A5-A7 late CCAP neuron').
develops_into('FBbt00052566', 'FBbt00002019', 'larval abdominal lch5 neuron').
develops_into('FBbt00110105', 'FBbt00100511', 'embryonic/larval PNS perineurial glial cell').
develops_into('FBbt00110106', 'FBbt00051073', 'embryonic/larval PNS subperineurial glial cell').
develops_into('FBbt00110108', 'FBbt00110171', 'embryonic/larval wrapping glial cell').
develops_into('FBbt00110109', 'FBbt00100511', 'embryonic/larval PNS perineurial glial cell').
develops_into('FBbt00110110', 'FBbt00051073', 'embryonic/larval PNS subperineurial glial cell').
develops_into('FBbt00110111', 'FBbt00100511', 'embryonic/larval PNS perineurial glial cell').
develops_into('FBbt00110112', 'FBbt00110171', 'embryonic/larval wrapping glial cell').

```


```lisp
find ./data/ \( -name "*.tsv" -or -name "*.txt" -or -name "*.fb" \) -exec python metta_vspace/check_duplicates.py  \;

...

(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/alleles/allele_genetic_interactions_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/alleles/fbal_to_fbgn_fb_2023_04.tsv" (1 "FBal0137236"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/alleles/genotype_phenotype_data_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/clones/cDNA_clone_data_fb_2023_04.tsv" (1 "FBcl0000001") (3 "UUGC0315"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/clones/genomic_clone_data_fb_2023_04.tsv" (1 "FBcl0297251") (3 "BACR13J02"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/collaborators/fbgn_uniprot_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/collaborators/pmid_fbgn_uniprot_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/automated_gene_summaries_fb_2023_04.tsv" ())  ; Could not parse file.
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/best_gene_summary_fb_2023_04.tsv" (1 "FBgn0031081") (2 "Nep3"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/Dmel_enzyme_data_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/dmel_gene_sequence_ontology_annotations_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/dmel_unique_protein_isoforms_fb_2023_04.tsv" (3 "a-PA"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_annotation_ID.tsv" (1 "7SLRNA:CR32864") (3 "FBgn0000003") (5 "CR32864"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_annotation_ID_fb_2023_04.tsv" (1 "7SLRNA:CR32864") (3 "FBgn0000003") (5 "CR32864"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_expanded_fb_2023_04.tsv" (8 "FBtr0081624") (9 "7SLRNA:CR32864-RA"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_fb_2023_04.tsv" (2 "FBtr0081624"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_gleanr_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_NAseq_Uniprot_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_functional_complementation_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_genetic_interactions_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_groups_HGNC_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_group_data_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_map_table_fb_2023_04.tsv" (2 "snRNA:4.5S") (3 "FBgn0000001"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_rpkm_matrix_fb_2023_04.tsv" (1 "FBgn0031081") (2 "Nep3"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_rpkm_report_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_snapshots_fb_2023_04.tsv" (1 "FBgn0052532") (2 "CG32532"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/pathway_group_data_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/physical_interactions_mitab_fb_2023_04.tsv" (14 "flybase:FBrf0218395-7641.DPiM"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/scRNA-Seq_gene_expression_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/human_disease/disease_model_annotations_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/insertions/insertion_mapping_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/map_conversion/cyto-genetic-seq.tsv" (1 "1A"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/map_conversion/genome-cyto-seq.txt" (1 "21B2") (2 "98620") (3 "134010"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/metadata/dataset_metadata_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/orthologs/dmel_human_orthologs_disease_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/orthologs/dmel_paralogs_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/references/entity_publication_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/references/fbrf_pmid_pmcid_doi_fb_2023_04.tsv" (1 "FBrf0026179") (2 "37280885"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/species/organism_list_fb_2023_04.tsv" ())
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/stocks/stocks_FB2023_04.tsv" (1 "FBst"))
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/synonyms/fb_synonym_fb_2023_04.tsv" (1 "FBal0000001"))
```

```lisp
metta +> !(mine-overlaps)

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism 1 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  organism_abbreviation 2 cDNA_clone)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism 1 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  organism_abbreviation 2 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  protein_coding_gene))
 (maybe_corisponds
  (ConceptMapFn  gene_type 2 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  so_term_name 3 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_paralogs)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  CG6741))
 (maybe_corisponds
  (ConceptMapFn  FBan 5 fbgn_annotation_ID)
  (ConceptMapFn  annotation_ID 6 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  FBtr0071763))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  FBpp0071677))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0071764))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0071678))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0100521))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0099961))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0342981))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0309745))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  a-PD))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_paralogs)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  GeneSymbol 2 dmel_paralogs)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  CG10325))
 (maybe_corisponds
  (ConceptMapFn  FBan 5 fbgn_annotation_ID)
  (ConceptMapFn  annotation_ID 6 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0083387))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0082828))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  abd-A-PA))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0083388))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0082829))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  abd-A-PB))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0300485))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0289712))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0306337))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0297433))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  CG11648))
 (maybe_corisponds
  (ConceptMapFn  FBan 5 fbgn_annotation_ID)
  (ConceptMapFn  annotation_ID 6 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0083381))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0082823))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0083382))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0082824))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abd-B-PA))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0083383))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0082825))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0083384))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0082826))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abd-B-PB))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0083385))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0089276))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0330709))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0303552))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abd-B-PF))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0346764))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0312359))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abd-B-PG))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0415463))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0373669))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  Abd-B-PH))
 (maybe_corisponds
  (ConceptMapFn  identical_protein 4 dmel_unique_protein_isoforms)
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0415464))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0373670))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0415465))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0373671))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  CG4032))
 (maybe_corisponds
  (ConceptMapFn  FBan 5 fbgn_annotation_ID)
  (ConceptMapFn  annotation_ID 6 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0075357))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0075116))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl-PA))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0112790))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0111702))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl-PB))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0330130))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0303163))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl-PC))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0330131))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0303164))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl-PD))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0330132))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0303165))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl-PE))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0330133))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0303166))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl-PF))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0330134))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0303167))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl-PG))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0330135))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0303168))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl-PH))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0330136))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0303169))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl-PI))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBtr0345369))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0311523))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl-PJ))
 (maybe_corisponds
  (ConceptMapFn  identical_protein 4 dmel_unique_protein_isoforms)
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  abo))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  abo))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  abo))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  CG6093))
 (maybe_corisponds
  (ConceptMapFn  FBan 5 fbgn_annotation_ID)
  (ConceptMapFn  annotation_ID 6 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0080168))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0079757))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  abo-PA))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  CG3796))
 (maybe_corisponds
  (ConceptMapFn  FBan 5 fbgn_annotation_ID)
  (ConceptMapFn  annotation_ID 6 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBtr0070072))
 (maybe_corisponds
  (ConceptMapFn  FBtr 2 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBtr 8 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBpp0070071))
 (maybe_corisponds
  (ConceptMapFn  FBpp 3 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBpp 10 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  ac-PA))
 (maybe_corisponds
  (ConceptMapFn  polypeptide_symbol 11 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  representative_protein 3 dmel_unique_protein_isoforms)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0035438))
 (maybe_corisponds
  (ConceptMapFn  FBgn 6 gene_group)
  (ConceptMapFn  ID_Interactor_B 2 physical_interactions_mitab)))

(=
 (assert_progress
  (mine_overlaps1  Gtpx))
 (maybe_corisponds
  (ConceptMapFn  Alias_Interactor_B 6 physical_interactions_mitab)
  (ConceptMapFn  Group_member_FB_gene_symbol 7 gene_group)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0035438))
 (maybe_corisponds
  (ConceptMapFn  FBgn 6 gene_group)
  (ConceptMapFn  ID_Interactor_A 1 physical_interactions_mitab)))

(=
 (assert_progress
  (mine_overlaps1  Gtpx))
 (maybe_corisponds
  (ConceptMapFn  Alias_Interactor_A 5 physical_interactions_mitab)
  (ConceptMapFn  Group_member_FB_gene_symbol 7 gene_group)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000028))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  acj6))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000032))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Acph-1))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000036))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  nAChRalpha1))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000037))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  mAChR-A))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000038))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  nAChRbeta1))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism 1 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  organism_abbreviation 1 gene_map_table)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism_abbreviation 1 gene_map_table)
  (ConceptMapFn  organism_abbreviation 2 cDNA_clone)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism_abbreviation 1 gene_map_table)
  (ConceptMapFn  organism_abbreviation 2 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  7SLRNA:CR32864))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000003))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 gene_map_table)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 gene_map_table)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_paralogs)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  GeneSymbol 2 dmel_paralogs)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 gene_map_table)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_paralogs)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 gene_map_table)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 gene_map_table)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  abo))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  abo))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  abo))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  abo))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 gene_map_table)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 gene_map_table)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  Ace))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Ace))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  Ace))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000024))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 gene_map_table)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000024))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000024))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  acj6))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  acj6))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  acj6))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  acj6))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000028))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 gene_map_table)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000028))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000028))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000028))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  Acph-1))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Acph-1))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  Acph-1))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000032))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 gene_map_table)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000032))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000032))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  nAChRalpha1))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  nAChRalpha1))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  nAChRalpha1))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000036))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 gene_map_table)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000036))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000036))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  mAChR-A))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  mAChR-A))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  mAChR-A))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000037))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 gene_map_table)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000037))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000037))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  nAChRbeta1))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  nAChRbeta1))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (already
  (mine_overlaps1  nAChRbeta1))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000038))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 gene_map_table)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000038))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000038))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (assert_progress
  (mine_overlaps1  pnt))
 (maybe_corisponds
  (ConceptMapFn  GeneSymbol 4 fbal_to_fbgn)
  (ConceptMapFn  Interacting_gene_symbol 3 gene_genetic_interactions)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0003118))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbal_to_fbgn)
  (ConceptMapFn  FBgn 4 gene_genetic_interactions)))

(=
 (assert_progress
  (mine_overlaps1  park))
 (maybe_corisponds
  (ConceptMapFn  Interacting_gene_symbol 3 gene_genetic_interactions)
  (ConceptMapFn  gene_symbol 8 Dmel_enzyme)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0041100))
 (maybe_corisponds
  (ConceptMapFn  FBgn 4 gene_genetic_interactions)
  (ConceptMapFn  FBgn 7 Dmel_enzyme)))

(=
 (already
  (mine_overlaps1  Dronc))
 (maybe_corisponds
  (ConceptMapFn  Interacting_gene_symbol 3 gene_genetic_interactions)
  (ConceptMapFn  gene_symbol 8 Dmel_enzyme)))

(=
 (already
  (mine_overlaps1  FBgn0026404))
 (maybe_corisponds
  (ConceptMapFn  FBgn 4 gene_genetic_interactions)
  (ConceptMapFn  FBgn 7 Dmel_enzyme)))

(=
 (assert_progress
  (mine_overlaps1  Dronc))
 (maybe_corisponds
  (ConceptMapFn  Starting_gene_symbol 1 gene_genetic_interactions)
  (ConceptMapFn  gene_symbol 8 Dmel_enzyme)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0026404))
 (maybe_corisponds
  (ConceptMapFn  FBgn 2 gene_genetic_interactions)
  (ConceptMapFn  FBgn 7 Dmel_enzyme)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0031086))
 (maybe_corisponds
  (ConceptMapFn  Dmel_gene 1 dmel_human_orthologs_disease)
  (ConceptMapFn  FBgn 1 best_gene_summary)))

(=
 (assert_progress
  (mine_overlaps1  fd19B))
 (maybe_corisponds
  (ConceptMapFn  Dmel_gene_symbol 2 dmel_human_orthologs_disease)
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0004167))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbal_to_fbgn)
  (ConceptMapFn  Item_ID 3 dataset_metadata)))

(=
 (assert_progress
  (mine_overlaps1  kst))
 (maybe_corisponds
  (ConceptMapFn  GeneSymbol 4 fbal_to_fbgn)
  (ConceptMapFn  Item_Name 4 dataset_metadata)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0020278))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbal_to_fbgn)
  (ConceptMapFn  FBgn 6 dmel_paralogs)))

(=
 (assert_progress
  (mine_overlaps1  loco))
 (maybe_corisponds
  (ConceptMapFn  GeneSymbol 4 fbal_to_fbgn)
  (ConceptMapFn  Paralog_GeneSymbol 7 dmel_paralogs)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism 1 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  organism_abbreviation 2 genomic_clone)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism_abbreviation 1 gene_map_table)
  (ConceptMapFn  organism_abbreviation 2 genomic_clone)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism_abbreviation 2 cDNA_clone)
  (ConceptMapFn  organism_abbreviation 2 genomic_clone)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism_abbreviation 2 fbgn_annotation_ID)
  (ConceptMapFn  organism_abbreviation 2 genomic_clone)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_paralogs)
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_paralogs)
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  GeneSymbol 2 dmel_paralogs)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  abo))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)))

(=
 (already
  (mine_overlaps1  FBgn0000024))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Ace))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000028))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000028))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)))

(=
 (already
  (mine_overlaps1  acj6))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  acj6))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism_abbreviation 2 cDNA_clone)
  (ConceptMapFn  organism_abbreviation 2 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_paralogs)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  GeneSymbol 2 dmel_paralogs)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_paralogs)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  Abd-B))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  Abl))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  abo))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  abo))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  Ace))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Ace))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000024))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000024))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  acj6))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  acj6))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  acj6))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000028))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000028))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000028))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  Acph-1))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  Acph-1))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000032))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000032))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  nAChRalpha1))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  nAChRalpha1))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000036))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000036))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  mAChR-A))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  mAChR-A))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000037))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000037))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  nAChRbeta1))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  nAChRbeta1))
 (maybe_corisponds
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000038))
 (maybe_corisponds
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000038))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_paralogs)
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_paralogs)
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)))

(=
 (already
  (mine_overlaps1  FBgn0000015))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)))

(=
 (already
  (mine_overlaps1  FBgn0000017))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)))

(=
 (already
  (mine_overlaps1  FBgn0000018))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  Act88F))
 (maybe_corisponds
  (ConceptMapFn  Dmel_gene_symbol 1 gene_functional_complementation)
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000047))
 (maybe_corisponds
  (ConceptMapFn  FBgn 2 gene_functional_complementation)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0052826))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  tRNA:Pro-CGG-1-1))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0031085))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  CG9570))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  protein_coding_gene))
 (maybe_corisponds
  (ConceptMapFn  gene_type 2 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  gene_type 4 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  protein_coding_gene))
 (maybe_corisponds
  (ConceptMapFn  gene_type 4 gene_rpkm_matrix)
  (ConceptMapFn  so_term_name 3 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0062565))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  Or19b))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0041626))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  Or19a))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0031086))
 (maybe_corisponds
  (ConceptMapFn  Dmel_gene 1 dmel_human_orthologs_disease)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0031086))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  fd19B))
 (maybe_corisponds
  (ConceptMapFn  Dmel_gene_symbol 2 dmel_human_orthologs_disease)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  fd19B))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0031082))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  lky))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0053217))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  CG33217))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0052350))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  Vps11))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0024733))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  RpL10))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0040372))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  G9a))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  G9a))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_fullname 3 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0000316))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  cin))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0024989))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  CG3777))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0040371))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  CG12470))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0029521))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  Or1a))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0004034))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)
  (ConceptMapFn  FBgn 3 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (already
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_unique_protein_isoforms)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)
  (ConceptMapFn  FBgn 3 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000022))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 fbgn_fbtr_fbpp)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)
  (ConceptMapFn  gene_symbol 4 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  current_symbol 2 gene_map_table)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  FB_gene_symbol 2 dmel_unique_protein_isoforms)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  ac))
 (maybe_corisponds
  (ConceptMapFn  gene_symbol 1 fbgn_annotation_ID)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  achaete))
 (maybe_corisponds
  (ConceptMapFn  gene_fullname 3 gene_rpkm_matrix)
  (ConceptMapFn  gene_fullname 5 fbgn_fbtr_fbpp_expanded)))

(=
 (already
  (mine_overlaps1  FBgn0004170))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  sc))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0002561))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  l(1)sc))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0000137))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  ase))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0029522))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  CG13373))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0052817))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  CG32817))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0029524))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  CG3176))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0023536))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  CG3156))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0023535))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  arg))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  FBgn0023537))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)))

(=
 (already
  (mine_overlaps1  CG17896))
 (maybe_corisponds
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000003))
 (maybe_corisponds
  (ConceptMapFn  FBgn 2 gene_rpkm_report)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000003))
 (maybe_corisponds
  (ConceptMapFn  FBgn 2 gene_rpkm_report)
  (ConceptMapFn  FBgn 3 gene_map_table)))

(=
 (assert_progress
  (mine_overlaps1  7SLRNA:CR32864))
 (maybe_corisponds
  (ConceptMapFn  GeneSymbol 3 gene_rpkm_report)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  7SLRNA:CR32864))
 (maybe_corisponds
  (ConceptMapFn  GeneSymbol 3 gene_rpkm_report)
  (ConceptMapFn  current_symbol 2 gene_map_table)))

(=
 (assert_progress
  (mine_overlaps1  FBlc0000063))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (assert_progress
  (mine_overlaps1  BCM_1_E2-16hr))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000064))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  BCM_1_E2-16hr100))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000065))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  BCM_1_L3i))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000066))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  BCM_1_L3i100))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000067))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  BCM_1_P3d))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000070))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  BCM_1_P))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000072))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  BCM_1_A17d))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000091))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_em10-12hr))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000092))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_em12-14hr))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000098))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_L1))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000100))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_L3_12hr))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000101))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_L3_PS1-2))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000103))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_L3_PS7-9))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000275))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_D32_cells))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000278))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_D9_cells))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000279))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_S1_cells))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000280))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_S2R+_cells))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000281))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_Sg4_cells))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000282))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_OSS_cells))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000283))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_OSC_cells))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000284))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_fGS_cells))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0003619))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  RNA-Seq_Profile_FlyAtlas2_Adult_Female_Brain))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0003620))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  RNA-Seq_Profile_FlyAtlas2_Adult_Female_Crop))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0003621))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  RNA-Seq_Profile_FlyAtlas2_Adult_Female_Carcass))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0003622))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  RNA-Seq_Profile_FlyAtlas2_Adult_Female_Eye))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0003623))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  RNA-Seq_Profile_FlyAtlas2_Adult_Female_FatBody))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0003625))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  RNA-Seq_Profile_FlyAtlas2_Adult_Female_Hindgut))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0003626))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  RNA-Seq_Profile_FlyAtlas2_Adult_Female_Midgut))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0003627))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  RNA-Seq_Profile_FlyAtlas2_Adult_Female_Ovary))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0003629))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  RNA-Seq_Profile_FlyAtlas2_Adult_Female_SalivaryGland))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0003630))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  RNA-Seq_Profile_FlyAtlas2_Adult_Female_ThoracicoAbdominalGanglion))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0003635))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  RNA-Seq_Profile_FlyAtlas2_Adult_Male_Brain))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0003636))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  RNA-Seq_Profile_FlyAtlas2_Adult_Male_Crop))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0003637))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  RNA-Seq_Profile_FlyAtlas2_Adult_Male_Carcass))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  FBlc0000107))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_ID 1 dataset_metadata)
  (ConceptMapFn  FBlc 6 gene_rpkm_report)))

(=
 (already
  (mine_overlaps1  mE_mRNA_P8))
 (maybe_corisponds
  (ConceptMapFn  Dataset_Metadata_Name 2 dataset_metadata)
  (ConceptMapFn  RNASource_name 7 gene_rpkm_report)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0023536))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 best_gene_summary)
  (ConceptMapFn  FBgn 1 gene_snapshots)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0023536))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 gene_rpkm_matrix)
  (ConceptMapFn  FBgn 1 gene_snapshots)))

(=
 (assert_progress
  (mine_overlaps1  CG3156))
 (maybe_corisponds
  (ConceptMapFn  GeneSymbol 2 gene_snapshots)
  (ConceptMapFn  Gene_Symbol 2 best_gene_summary)))

(=
 (assert_progress
  (mine_overlaps1  CG3156))
 (maybe_corisponds
  (ConceptMapFn  GeneSymbol 2 gene_snapshots)
  (ConceptMapFn  gene_symbol 2 gene_rpkm_matrix)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0025638))
 (maybe_corisponds
  (ConceptMapFn  FBgn 6 pathway_group)
  (ConceptMapFn  FBgn 7 Dmel_enzyme)))

(=
 (assert_progress
  (mine_overlaps1  Roc1a))
 (maybe_corisponds
  (ConceptMapFn  Group_member_FB_gene_symbol 7 pathway_group)
  (ConceptMapFn  gene_symbol 8 Dmel_enzyme)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000008))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_paralogs)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (already
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 dmel_paralogs)
  (ConceptMapFn  gene_primary_id 1 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  FBgn0000014))
 (maybe_corisponds
  (ConceptMapFn  FBgn 1 disease_model_annotations)
  (ConceptMapFn  FBgn 1 dmel_paralogs)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  GeneSymbol 2 dmel_paralogs)
  (ConceptMapFn  gene_symbol 2 dmel_gene_sequence_ontology_annotations)))

(=
 (assert_progress
  (mine_overlaps1  abd-A))
 (maybe_corisponds
  (ConceptMapFn  GeneSymbol 2 dmel_paralogs)
  (ConceptMapFn  Gene_symbol 2 disease_model_annotations)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  name 4 stocks)
  (ConceptMapFn  organism 1 fbgn_fbtr_fbpp_expanded)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  name 4 stocks)
  (ConceptMapFn  organism_abbreviation 1 gene_map_table)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  name 4 stocks)
  (ConceptMapFn  organism_abbreviation 2 cDNA_clone)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  name 4 stocks)
  (ConceptMapFn  organism_abbreviation 2 genomic_clone)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  name 4 stocks)
  (ConceptMapFn  organism_abbreviation 2 fbgn_annotation_ID)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism 1 fbgn_fbtr_fbpp_expanded)
  (ConceptMapFn  organism_abbreviation 2 synonym)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism_abbreviation 1 gene_map_table)
  (ConceptMapFn  organism_abbreviation 2 synonym)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism_abbreviation 2 cDNA_clone)
  (ConceptMapFn  organism_abbreviation 2 synonym)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism_abbreviation 2 genomic_clone)
  (ConceptMapFn  organism_abbreviation 2 synonym)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  organism_abbreviation 2 fbgn_annotation_ID)
  (ConceptMapFn  organism_abbreviation 2 synonym)))

(=
 (assert_progress
  (mine_overlaps1  Dmel))
 (maybe_corisponds
  (ConceptMapFn  name 4 stocks)
  (ConceptMapFn  organism_abbreviation 2 synonym)))
% 712,966 inferences, 0.165 CPU in 0.208 seconds (80% CPU, 4309769 Lips)

```

```
metta +> !(try-overlaps)

(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0071763 FBpp0071677)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (cDNA_clone  FBcl0000002 Dmel ESG019c.E21_E07 ESG01_cDNA () CA807794)))

(=  concepts
 (FBtr0342981 FBtr0071763 FBpp0309745 FBpp0071677 FBgn0000008 FBcl0000002 arc mRNA a-RD a-PD Dmel 2-98 CG6741 CA807794 58C1-58C5 ESG01_cDNA ESG019c.E21_E07 protein_coding_gene 2R:22136968..22172834(1)))

(=  FBtr0342981 arc)

(=  FBtr0071763 arc)

(=  FBpp0309745 arc)

(=  FBpp0071677 arc)

(=  FBgn0000008 arc)

(=  FBcl0000002 ESG019c.E21_E07)

(=  arc "arc (a) encodes a protein involved in eye development.")

(=  mRNA arc)

(=  a-RD arc)

(=  a-PD arc)

(=  Dmel arc)

(=  2-98 2R:22136968..22172834(1))

(=  CG6741 arc)

(=  CA807794 ESG019c.E21_E07)

(=  58C1-58C5 2R:22136968..22172834(1))

(=  ESG01_cDNA ESG019c.E21_E07)

(=  protein_coding_gene arc)


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $F1 $B1 $G1 $H1 $I1)
  (cDNA_clone  $J1 $E1 $K1 $L1 $M1 $N1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $F1 $B1 $G1 $H1 $I1)
  (cDNA_clone  $J1 $E1 $K1 $L1 $M1 $N1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0071763 FBpp0071677)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (genomic_clone  FBcl0297252 Dmel BACR08O05 AC105774)))

(=  concepts
 (FBtr0342981 FBtr0071763 FBpp0309745 FBpp0071677 FBgn0000008 FBcl0297252 arc mRNA a-RD a-PD Dmel 2-98 CG6741 AC105774 BACR08O05 58C1-58C5 protein_coding_gene 2R:22136968..22172834(1)))
(=  2-98 2R:22136968..22172834(1))
(=  58C1-58C5 2R:22136968..22172834(1))
(=  a-PD arc)
(=  a-RD arc)
(=  arc "arc (a) encodes a protein involved in eye development.")
(=  CG6741 arc)
(=  Dmel arc)
(=  FBgn0000008 arc)
(=  FBpp0071677 arc)
(=  FBpp0309745 arc)
(=  FBtr0071763 arc)
(=  FBtr0342981 arc)
(=  mRNA arc)
(=  protein_coding_gene arc)


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $F1 $B1 $G1 $H1 $I1)
  (genomic_clone  $J1 $E1 $K1 $L1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $F1 $B1 $G1 $H1 $I1)
  (genomic_clone  $J1 $E1 $K1 $L1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0071763 FBpp0071677)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (synonym  FBal0000002 Dmel α-Spec[2] () () ())))

(=  concepts
 (FBtr0342981 FBtr0071763 FBpp0309745 FBpp0071677 FBgn0000008 FBal0000002 arc mRNA a-RD a-PD Dmel 2-98 CG6741 58C1-58C5 α-Spec[2] protein_coding_gene 2R:22136968..22172834(1)))

(=  FBtr0342981 arc)

(=  FBtr0071763 arc)

(=  FBpp0309745 arc)

(=  FBpp0071677 arc)

(=  FBgn0000008 arc)

(=  FBal0000002 alpha-Spec[2])

(=  arc "arc (a) encodes a protein involved in eye development.")

(=  mRNA arc)

(=  a-RD arc)

(=  a-PD arc)

(=  Dmel arc)

(=  2-98 2R:22136968..22172834(1))

(=  CG6741 arc)

(=  58C1-58C5 2R:22136968..22172834(1))

(=  protein_coding_gene arc)


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $F1 $B1 $G1 $H1 $I1)
  (synonym  $J1 $E1 $K1 $L1 $M1 $N1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $F1 $B1 $G1 $H1 $I1)
  (synonym  $J1 $E1 $K1 $L1 $M1 $N1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0071763 FBpp0071677)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (cDNA_clone  FBcl0000002 Dmel ESG019c.E21_E07 ESG01_cDNA () CA807794)))

(=  concepts
 (FBtr0342981 FBtr0071763 FBpp0309745 FBpp0071677 FBgn0000008 FBcl0000002 arc mRNA a-RD a-PD Dmel 2-98 CG6741 CA807794 58C1-58C5 ESG01_cDNA ESG019c.E21_E07 protein_coding_gene 2R:22136968..22172834(1)))

(=  FBtr0342981 arc)

(=  FBtr0071763 arc)

(=  FBpp0309745 arc)

(=  FBpp0071677 arc)

(=  FBgn0000008 arc)

(=  FBcl0000002 ESG019c.E21_E07)

(=  arc "arc (a) encodes a protein involved in eye development.")

(=  mRNA arc)

(=  a-RD arc)

(=  a-PD arc)

(=  Dmel arc)

(=  2-98 2R:22136968..22172834(1))

(=  CG6741 arc)

(=  CA807794 ESG019c.E21_E07)

(=  58C1-58C5 2R:22136968..22172834(1))

(=  ESG01_cDNA ESG019c.E21_E07)

(=  protein_coding_gene arc)


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $C1 $F1 $G1 $H1 $I1)
  (cDNA_clone  $J1 $E1 $K1 $L1 $M1 $N1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $C1 $F1 $G1 $H1 $I1)
  (cDNA_clone  $J1 $E1 $K1 $L1 $M1 $N1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0071763 FBpp0071677)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (genomic_clone  FBcl0297252 Dmel BACR08O05 AC105774)))

(=  concepts
 (FBtr0342981 FBtr0071763 FBpp0309745 FBpp0071677 FBgn0000008 FBcl0297252 arc mRNA a-RD a-PD Dmel 2-98 CG6741 AC105774 BACR08O05 58C1-58C5 protein_coding_gene 2R:22136968..22172834(1)))

(=  FBtr0342981 arc)

(=  FBtr0071763 arc)

(=  FBpp0309745 arc)

(=  FBpp0071677 arc)

(=  FBgn0000008 arc)

(=  arc "arc (a) encodes a protein involved in eye development.")

(=  mRNA arc)

(=  a-RD arc)

(=  a-PD arc)

(=  Dmel arc)

(=  2-98 2R:22136968..22172834(1))

(=  CG6741 arc)

(=  58C1-58C5 2R:22136968..22172834(1))

(=  protein_coding_gene arc)


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $C1 $F1 $G1 $H1 $I1)
  (genomic_clone  $J1 $E1 $K1 $L1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $C1 $F1 $G1 $H1 $I1)
  (genomic_clone  $J1 $E1 $K1 $L1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0071763 FBpp0071677)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (synonym  FBal0000002 Dmel α-Spec[2] () () ())))

(=  concepts
 (FBtr0342981 FBtr0071763 FBpp0309745 FBpp0071677 FBgn0000008 FBal0000002 arc mRNA a-RD a-PD Dmel 2-98 CG6741 58C1-58C5 α-Spec[2] protein_coding_gene 2R:22136968..22172834(1)))

(=  FBtr0342981 arc)

(=  FBtr0071763 arc)

(=  FBpp0309745 arc)

(=  FBpp0071677 arc)

(=  FBgn0000008 arc)

(=  FBal0000002 alpha-Spec[2])

(=  arc "arc (a) encodes a protein involved in eye development.")

(=  mRNA arc)

(=  a-RD arc)

(=  a-PD arc)

(=  Dmel arc)

(=  2-98 2R:22136968..22172834(1))

(=  CG6741 arc)

(=  58C1-58C5 2R:22136968..22172834(1))

(=  protein_coding_gene arc)


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $C1 $F1 $G1 $H1 $I1)
  (synonym  $J1 $E1 $K1 $L1 $M1 $N1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $C1 $F1 $G1 $H1 $I1)
  (synonym  $J1 $E1 $K1 $L1 $M1 $N1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000014 FBtr0083387 FBpp0082828)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000014 abd-A "abdominal A" CG10325 mRNA FBtr0083387 abd-A-RA FBpp0082828 abd-A-PA)
  (dmel_unique_protein_isoforms  FBgn0000014 abd-A abd-A-PA "abd-A-PC,abd-A-PD")
  (disease_model_annotations  FBgn0000014 abd-A () ameliorates DOID:1319 "brain cancer" FBal0346203 abd-A[UAS.Tag:HA] () () "modeled by FLYBASE:pros[JF02308]; FB:FBal0220677" FBrf0253491)
  (gene_map_table  Dmel abd-A FBgn0000014 3-59 89E2-89E2 3R:16807214..16830049(-1))))

(=  english
 ("modeled by FLYBASE:pros[JF02308]; FB:FBal0220677" 3R:16807214..16830049(-1)))


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (disease_model_annotations  $E1 $C1 $F1 $G1 $H1 $I1 $J1 $K1 $L1 $M1 $N1 $O1)
  (gene_map_table  $P1 $Q1 $E1 $R1 $S1 $T1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (disease_model_annotations  $E1 $C1 $F1 $G1 $H1 $I1 $J1 $K1 $L1 $M1 $N1 $O1)
  (gene_map_table  $P1 $Q1 $E1 $R1 $S1 $T1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000014 FBtr0083387 FBpp0082828)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000014 abd-A "abdominal A" CG10325 mRNA FBtr0083387 abd-A-RA FBpp0082828 abd-A-PA)
  (dmel_unique_protein_isoforms  FBgn0000014 abd-A abd-A-PA "abd-A-PC,abd-A-PD")
  (disease_model_annotations  FBgn0000014 abd-A () ameliorates DOID:1319 "brain cancer" FBal0346203 abd-A[UAS.Tag:HA] () () "modeled by FLYBASE:pros[JF02308]; FB:FBal0220677" FBrf0253491)
  (dmel_paralogs  FBgn0000014 abd-A 3R 16807214..16830049 -1 FBgn0030058 CG11294 X 8691820..8693620 -1 2)))

(=  english
 ("modeled by FLYBASE:pros[JF02308]; FB:FBal0220677" 8691820..8693620))


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (disease_model_annotations  $E1 $C1 $F1 $G1 $H1 $I1 $J1 $K1 $L1 $M1 $N1 $O1)
  (dmel_paralogs  $E1 $P1 $Q1 $R1 $S1 $T1 $U1 $V1 $W1 $X1 $Y1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (disease_model_annotations  $E1 $C1 $F1 $G1 $H1 $I1 $J1 $K1 $L1 $M1 $N1 $O1)
  (dmel_paralogs  $E1 $P1 $Q1 $R1 $S1 $T1 $U1 $V1 $W1 $X1 $Y1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0071763 FBpp0071677)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (dmel_paralogs  FBgn0000008 a 2R 22136968..22172834 1 FBgn0029830 Grip X 5966279..5986699 1 1)
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))))

(=  english
 (5966279..5986699 22136968..22172834))


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (dmel_paralogs  $E1 $C1 $F1 $G1 $H1 $I1 $J1 $K1 $L1 $M1 $N1)
  (gene_map_table  $O1 $P1 $E1 $Q1 $R1 $S1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (dmel_paralogs  $E1 $C1 $F1 $G1 $H1 $I1 $J1 $K1 $L1 $M1 $N1)
  (gene_map_table  $O1 $P1 $E1 $Q1 $R1 $S1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0071763 FBpp0071677)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (best_gene_summary  FBgn0000008 a "FlyBase Gene Snapshot" "arc (a) encodes a protein involved in eye development.")
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))))

(=  english
 ("arc (a) encodes a protein involved in eye development." "FlyBase Gene Snapshot"))


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (best_gene_summary  $E1 $C1 $F1 $G1)
  (gene_map_table  $H1 $I1 $E1 $J1 $K1 $L1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (best_gene_summary  $E1 $C1 $F1 $G1)
  (gene_map_table  $H1 $I1 $E1 $J1 $K1 $L1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0071763 FBpp0071677)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (best_gene_summary  FBgn0000008 a "FlyBase Gene Snapshot" "arc (a) encodes a protein involved in eye development.")
  (gene_snapshots  FBgn0000008 a arc 20190912 "arc (a) encodes a protein involved in eye development.")))

(=  english
 ("arc (a) encodes a protein involved in eye development." "FlyBase Gene Snapshot"))


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (best_gene_summary  $E1 $C1 $F1 $G1)
  (gene_snapshots  $E1 $H1 $I1 $J1 $K1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $O $T $U $V $W $X $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (best_gene_summary  $E1 $C1 $F1 $G1)
  (gene_snapshots  $E1 $H1 $I1 $J1 $K1)))





(=  grounded
 ((dmel_paralogs  FBgn0000008 a 2R 22136968..22172834 1 FBgn0029830 Grip X 5966279..5986699 1 1)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (cDNA_clone  FBcl0000002 Dmel ESG019c.E21_E07 ESG01_cDNA () CA807794)))

(=  english
 (5966279..5986699 22136968..22172834))


!(match  &flybase
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (gene_map_table  $M1 $N1 $J1 $O1 $P1 $Q1)
  (cDNA_clone  $R1 $M1 $S1 $T1 $U1 $V1))
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (gene_map_table  $M1 $N1 $J1 $O1 $P1 $Q1)
  (cDNA_clone  $R1 $M1 $S1 $T1 $U1 $V1)))





(=  grounded
 ((dmel_paralogs  FBgn0000008 a 2R 22136968..22172834 1 FBgn0029830 Grip X 5966279..5986699 1 1)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (genomic_clone  FBcl0297252 Dmel BACR08O05 AC105774)))

(=  english
 (5966279..5986699 22136968..22172834))


!(match  &flybase
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (gene_map_table  $M1 $N1 $J1 $O1 $P1 $Q1)
  (genomic_clone  $R1 $M1 $S1 $T1))
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (gene_map_table  $M1 $N1 $J1 $O1 $P1 $Q1)
  (genomic_clone  $R1 $M1 $S1 $T1)))





(=  grounded
 ((dmel_paralogs  FBgn0000008 a 2R 22136968..22172834 1 FBgn0029830 Grip X 5966279..5986699 1 1)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (synonym  FBal0000002 Dmel α-Spec[2] () () ())))

(=  english
 (5966279..5986699 22136968..22172834))


!(match  &flybase
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (gene_map_table  $M1 $N1 $J1 $O1 $P1 $Q1)
  (synonym  $R1 $M1 $S1 $T1 $U1 $V1))
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (gene_map_table  $M1 $N1 $J1 $O1 $P1 $Q1)
  (synonym  $R1 $M1 $S1 $T1 $U1 $V1)))





(=  grounded
 ((dmel_paralogs  FBgn0000008 a 2R 22136968..22172834 1 FBgn0029830 Grip X 5966279..5986699 1 1)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (cDNA_clone  FBcl0000002 Dmel ESG019c.E21_E07 ESG01_cDNA () CA807794)))

(=  english
 (5966279..5986699 22136968..22172834))


!(match  &flybase
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (gene_map_table  $M1 $K1 $N1 $O1 $P1 $Q1)
  (cDNA_clone  $R1 $M1 $S1 $T1 $U1 $V1))
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (gene_map_table  $M1 $K1 $N1 $O1 $P1 $Q1)
  (cDNA_clone  $R1 $M1 $S1 $T1 $U1 $V1)))





(=  grounded
 ((dmel_paralogs  FBgn0000008 a 2R 22136968..22172834 1 FBgn0029830 Grip X 5966279..5986699 1 1)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (genomic_clone  FBcl0297252 Dmel BACR08O05 AC105774)))

(=  english
 (5966279..5986699 22136968..22172834))


!(match  &flybase
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (gene_map_table  $M1 $K1 $N1 $O1 $P1 $Q1)
  (genomic_clone  $R1 $M1 $S1 $T1))
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (gene_map_table  $M1 $K1 $N1 $O1 $P1 $Q1)
  (genomic_clone  $R1 $M1 $S1 $T1)))





(=  grounded
 ((dmel_paralogs  FBgn0000008 a 2R 22136968..22172834 1 FBgn0029830 Grip X 5966279..5986699 1 1)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (synonym  FBal0000002 Dmel α-Spec[2] () () ())))

(=  english
 (5966279..5986699 22136968..22172834))


!(match  &flybase
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (gene_map_table  $M1 $K1 $N1 $O1 $P1 $Q1)
  (synonym  $R1 $M1 $S1 $T1 $U1 $V1))
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (gene_map_table  $M1 $K1 $N1 $O1 $P1 $Q1)
  (synonym  $R1 $M1 $S1 $T1 $U1 $V1)))





(=  grounded
 ((dmel_paralogs  FBgn0000014 abd-A 3R 16807214..16830049 -1 FBgn0030058 CG11294 X 8691820..8693620 -1 2)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000014 abd-A "abdominal A" CG10325 mRNA FBtr0083387 abd-A-RA FBpp0082828 abd-A-PA)
  (dmel_unique_protein_isoforms  FBgn0000014 abd-A abd-A-PA "abd-A-PC,abd-A-PD")
  (disease_model_annotations  FBgn0000014 abd-A () ameliorates DOID:1319 "brain cancer" FBal0346203 abd-A[UAS.Tag:HA] () () "modeled by FLYBASE:pros[JF02308]; FB:FBal0220677" FBrf0253491)
  (gene_map_table  Dmel abd-A FBgn0000014 3-59 89E2-89E2 3R:16807214..16830049(-1))))

(=  english
 ("modeled by FLYBASE:pros[JF02308]; FB:FBal0220677" 8691820..8693620))


!(match  &flybase
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (disease_model_annotations  $M1 $K1 $N1 $O1 $P1 $Q1 $R1 $S1 $T1 $U1 $V1 $W1)
  (gene_map_table  $X1 $Y1 $M1 $Z1 $A2 $B2))
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (disease_model_annotations  $M1 $K1 $N1 $O1 $P1 $Q1 $R1 $S1 $T1 $U1 $V1 $W1)
  (gene_map_table  $X1 $Y1 $M1 $Z1 $A2 $B2)))





(=  grounded
 ((dmel_paralogs  FBgn0000014 abd-A 3R 16807214..16830049 -1 FBgn0030058 CG11294 X 8691820..8693620 -1 2)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000014 abd-A "abdominal A" CG10325 mRNA FBtr0083387 abd-A-RA FBpp0082828 abd-A-PA)
  (dmel_unique_protein_isoforms  FBgn0000014 abd-A abd-A-PA "abd-A-PC,abd-A-PD")
  (disease_model_annotations  FBgn0000014 abd-A () ameliorates DOID:1319 "brain cancer" FBal0346203 abd-A[UAS.Tag:HA] () () "modeled by FLYBASE:pros[JF02308]; FB:FBal0220677" FBrf0253491)
  (fbgn_fbtr_fbpp  FBgn0000014 FBtr0083387 FBpp0082828)))

(=  english
 ("modeled by FLYBASE:pros[JF02308]; FB:FBal0220677" 8691820..8693620))


!(match  &flybase
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (disease_model_annotations  $M1 $K1 $N1 $O1 $P1 $Q1 $R1 $S1 $T1 $U1 $V1 $W1)
  (fbgn_fbtr_fbpp  $M1 $X1 $Y1))
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (disease_model_annotations  $M1 $K1 $N1 $O1 $P1 $Q1 $R1 $S1 $T1 $U1 $V1 $W1)
  (fbgn_fbtr_fbpp  $M1 $X1 $Y1)))





(=  grounded
 ((dmel_paralogs  FBgn0000008 a 2R 22136968..22172834 1 FBgn0029830 Grip X 5966279..5986699 1 1)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (best_gene_summary  FBgn0000008 a "FlyBase Gene Snapshot" "arc (a) encodes a protein involved in eye development.")
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))))

(=  english
 ("arc (a) encodes a protein involved in eye development." "FlyBase Gene Snapshot"))


!(match  &flybase
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (best_gene_summary  $M1 $K1 $N1 $O1)
  (gene_map_table  $P1 $Q1 $M1 $R1 $S1 $T1))
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (best_gene_summary  $M1 $K1 $N1 $O1)
  (gene_map_table  $P1 $Q1 $M1 $R1 $S1 $T1)))





(=  grounded
 ((dmel_paralogs  FBgn0000008 a 2R 22136968..22172834 1 FBgn0029830 Grip X 5966279..5986699 1 1)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (best_gene_summary  FBgn0000008 a "FlyBase Gene Snapshot" "arc (a) encodes a protein involved in eye development.")
  (fbgn_fbtr_fbpp  FBgn0000008 FBtr0071763 FBpp0071677)))

(=  english
 ("arc (a) encodes a protein involved in eye development." "FlyBase Gene Snapshot"))


!(match  &flybase
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (best_gene_summary  $M1 $K1 $N1 $O1)
  (fbgn_fbtr_fbpp  $M1 $P1 $Q1))
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (best_gene_summary  $M1 $K1 $N1 $O1)
  (fbgn_fbtr_fbpp  $M1 $P1 $Q1)))





(=  grounded
 ((dmel_paralogs  FBgn0000008 a 2R 22136968..22172834 1 FBgn0029830 Grip X 5966279..5986699 1 1)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (best_gene_summary  FBgn0000008 a "FlyBase Gene Snapshot" "arc (a) encodes a protein involved in eye development.")
  (gene_snapshots  FBgn0000008 a arc 20190912 "arc (a) encodes a protein involved in eye development.")))

(=  english
 ("arc (a) encodes a protein involved in eye development." "FlyBase Gene Snapshot"))


!(match  &flybase
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (best_gene_summary  $M1 $K1 $N1 $O1)
  (gene_snapshots  $M1 $P1 $Q1 $R1 $S1))
 (and
  (dmel_paralogs  $O $P $Q $R $S $T $U $V $W $X $Y)
  (fbgn_fbtr_fbpp_expanded  $Z $A1 $O $B1 $C1 $D1 $E1 $F1 $G1 $H1 $I1)
  (dmel_unique_protein_isoforms  $J1 $K1 $I1 $L1)
  (best_gene_summary  $M1 $K1 $N1 $O1)
  (gene_snapshots  $M1 $P1 $Q1 $R1 $S1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0342981 FBpp0309745)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (cDNA_clone  FBcl0000002 Dmel ESG019c.E21_E07 ESG01_cDNA () CA807794)))

(=  concepts
 (FBtr0342981 FBpp0309745 FBgn0000008 FBcl0000002 arc mRNA a-RD a-PD Dmel 2-98 CG6741 CA807794 58C1-58C5 ESG01_cDNA ESG019c.E21_E07 protein_coding_gene 2R:22136968..22172834(1)))

(=  FBtr0342981 arc)

(=  FBpp0309745 arc)

(=  FBgn0000008 arc)

(=  FBcl0000002 ESG019c.E21_E07)

(=  arc "arc (a) encodes a protein involved in eye development.")

(=  mRNA arc)

(=  a-RD arc)

(=  a-PD arc)

(=  Dmel arc)

(=  2-98 2R:22136968..22172834(1))

(=  CG6741 arc)

(=  CA807794 ESG019c.E21_E07)

(=  58C1-58C5 2R:22136968..22172834(1))

(=  ESG01_cDNA ESG019c.E21_E07)

(=  protein_coding_gene arc)


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $F1 $B1 $G1 $H1 $I1)
  (cDNA_clone  $J1 $E1 $K1 $L1 $M1 $N1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $F1 $B1 $G1 $H1 $I1)
  (cDNA_clone  $J1 $E1 $K1 $L1 $M1 $N1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0342981 FBpp0309745)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (genomic_clone  FBcl0297252 Dmel BACR08O05 AC105774)))

(=  concepts
 (FBtr0342981 FBpp0309745 FBgn0000008 FBcl0297252 arc mRNA a-RD a-PD Dmel 2-98 CG6741 AC105774 BACR08O05 58C1-58C5 protein_coding_gene 2R:22136968..22172834(1)))

(=  FBtr0342981 arc)

(=  FBpp0309745 arc)

(=  FBgn0000008 arc)

(=  arc "arc (a) encodes a protein involved in eye development.")

(=  mRNA arc)

(=  a-RD arc)

(=  a-PD arc)

(=  Dmel arc)

(=  2-98 2R:22136968..22172834(1))

(=  CG6741 arc)

(=  58C1-58C5 2R:22136968..22172834(1))

(=  protein_coding_gene arc)


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $F1 $B1 $G1 $H1 $I1)
  (genomic_clone  $J1 $E1 $K1 $L1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $F1 $B1 $G1 $H1 $I1)
  (genomic_clone  $J1 $E1 $K1 $L1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0342981 FBpp0309745)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (synonym  FBal0000002 Dmel α-Spec[2] () () ())))

(=  concepts
 (FBtr0342981 FBpp0309745 FBgn0000008 FBal0000002 arc mRNA a-RD a-PD Dmel 2-98 CG6741 58C1-58C5 α-Spec[2] protein_coding_gene 2R:22136968..22172834(1)))

(=  FBtr0342981 arc)

(=  FBpp0309745 arc)

(=  FBgn0000008 arc)

(=  FBal0000002 alpha-Spec[2])

(=  arc "arc (a) encodes a protein involved in eye development.")

(=  mRNA arc)

(=  a-RD arc)

(=  a-PD arc)

(=  Dmel arc)

(=  2-98 2R:22136968..22172834(1))

(=  CG6741 arc)

(=  58C1-58C5 2R:22136968..22172834(1))

(=  protein_coding_gene arc)


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $F1 $B1 $G1 $H1 $I1)
  (synonym  $J1 $E1 $K1 $L1 $M1 $N1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $F1 $B1 $G1 $H1 $I1)
  (synonym  $J1 $E1 $K1 $L1 $M1 $N1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0342981 FBpp0309745)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (cDNA_clone  FBcl0000002 Dmel ESG019c.E21_E07 ESG01_cDNA () CA807794)))

(=  concepts
 (FBtr0342981 FBpp0309745 FBgn0000008 FBcl0000002 arc mRNA a-RD a-PD Dmel 2-98 CG6741 CA807794 58C1-58C5 ESG01_cDNA ESG019c.E21_E07 protein_coding_gene 2R:22136968..22172834(1)))

(=  FBtr0342981 arc)

(=  FBpp0309745 arc)

(=  FBgn0000008 arc)

(=  FBcl0000002 ESG019c.E21_E07)

(=  arc "arc (a) encodes a protein involved in eye development.")

(=  mRNA arc)

(=  a-RD arc)

(=  a-PD arc)

(=  Dmel arc)

(=  2-98 2R:22136968..22172834(1))

(=  CG6741 arc)

(=  CA807794 ESG019c.E21_E07)

(=  58C1-58C5 2R:22136968..22172834(1))

(=  ESG01_cDNA ESG019c.E21_E07)

(=  protein_coding_gene arc)


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $C1 $F1 $G1 $H1 $I1)
  (cDNA_clone  $J1 $E1 $K1 $L1 $M1 $N1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $C1 $F1 $G1 $H1 $I1)
  (cDNA_clone  $J1 $E1 $K1 $L1 $M1 $N1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0342981 FBpp0309745)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (genomic_clone  FBcl0297252 Dmel BACR08O05 AC105774)))

(=  concepts
 (FBtr0342981 FBpp0309745 FBgn0000008 FBcl0297252 arc mRNA a-RD a-PD Dmel 2-98 CG6741 AC105774 BACR08O05 58C1-58C5 protein_coding_gene 2R:22136968..22172834(1)))

(=  FBtr0342981 arc)

(=  FBpp0309745 arc)

(=  FBgn0000008 arc)

(=  arc "arc (a) encodes a protein involved in eye development.")

(=  mRNA arc)

(=  a-RD arc)

(=  a-PD arc)

(=  Dmel arc)

(=  2-98 2R:22136968..22172834(1))

(=  CG6741 arc)

(=  58C1-58C5 2R:22136968..22172834(1))

(=  protein_coding_gene arc)


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $C1 $F1 $G1 $H1 $I1)
  (genomic_clone  $J1 $E1 $K1 $L1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $C1 $F1 $G1 $H1 $I1)
  (genomic_clone  $J1 $E1 $K1 $L1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0342981 FBpp0309745)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))
  (synonym  FBal0000002 Dmel α-Spec[2] () () ())))

(=  concepts
 (FBtr0342981 FBpp0309745 FBgn0000008 FBal0000002 arc mRNA a-RD a-PD Dmel 2-98 CG6741 58C1-58C5 α-Spec[2] protein_coding_gene 2R:22136968..22172834(1)))

(=  FBtr0342981 arc)

(=  FBpp0309745 arc)

(=  FBgn0000008 arc)

(=  FBal0000002 alpha-Spec[2])

(=  arc "arc (a) encodes a protein involved in eye development.")

(=  mRNA arc)

(=  a-RD arc)

(=  a-PD arc)

(=  Dmel arc)

(=  2-98 2R:22136968..22172834(1))

(=  CG6741 arc)

(=  58C1-58C5 2R:22136968..22172834(1))

(=  protein_coding_gene arc)


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $C1 $F1 $G1 $H1 $I1)
  (synonym  $J1 $E1 $K1 $L1 $M1 $N1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (gene_map_table  $E1 $C1 $F1 $G1 $H1 $I1)
  (synonym  $J1 $E1 $K1 $L1 $M1 $N1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000014 FBtr0083387 FBpp0082828)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000014 abd-A "abdominal A" CG10325 mRNA FBtr0083387 abd-A-RA FBpp0082828 abd-A-PA)
  (dmel_unique_protein_isoforms  FBgn0000014 abd-A abd-A-PA "abd-A-PC,abd-A-PD")
  (disease_model_annotations  FBgn0000014 abd-A () ameliorates DOID:1319 "brain cancer" FBal0346203 abd-A[UAS.Tag:HA] () () "modeled by FLYBASE:pros[JF02308]; FB:FBal0220677" FBrf0253491)
  (gene_map_table  Dmel abd-A FBgn0000014 3-59 89E2-89E2 3R:16807214..16830049(-1))))

(=  english
 ("modeled by FLYBASE:pros[JF02308]; FB:FBal0220677" 3R:16807214..16830049(-1)))


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (disease_model_annotations  $E1 $C1 $F1 $G1 $H1 $I1 $J1 $K1 $L1 $M1 $N1 $O1)
  (gene_map_table  $P1 $Q1 $E1 $R1 $S1 $T1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (disease_model_annotations  $E1 $C1 $F1 $G1 $H1 $I1 $J1 $K1 $L1 $M1 $N1 $O1)
  (gene_map_table  $P1 $Q1 $E1 $R1 $S1 $T1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000014 FBtr0083387 FBpp0082828)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000014 abd-A "abdominal A" CG10325 mRNA FBtr0083387 abd-A-RA FBpp0082828 abd-A-PA)
  (dmel_unique_protein_isoforms  FBgn0000014 abd-A abd-A-PA "abd-A-PC,abd-A-PD")
  (disease_model_annotations  FBgn0000014 abd-A () ameliorates DOID:1319 "brain cancer" FBal0346203 abd-A[UAS.Tag:HA] () () "modeled by FLYBASE:pros[JF02308]; FB:FBal0220677" FBrf0253491)
  (dmel_paralogs  FBgn0000014 abd-A 3R 16807214..16830049 -1 FBgn0030058 CG11294 X 8691820..8693620 -1 2)))

(=  english
 ("modeled by FLYBASE:pros[JF02308]; FB:FBal0220677" 8691820..8693620))


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (disease_model_annotations  $E1 $C1 $F1 $G1 $H1 $I1 $J1 $K1 $L1 $M1 $N1 $O1)
  (dmel_paralogs  $E1 $P1 $Q1 $R1 $S1 $T1 $U1 $V1 $W1 $X1 $Y1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (disease_model_annotations  $E1 $C1 $F1 $G1 $H1 $I1 $J1 $K1 $L1 $M1 $N1 $O1)
  (dmel_paralogs  $E1 $P1 $Q1 $R1 $S1 $T1 $U1 $V1 $W1 $X1 $Y1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0342981 FBpp0309745)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (dmel_paralogs  FBgn0000008 a 2R 22136968..22172834 1 FBgn0029830 Grip X 5966279..5986699 1 1)
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))))

(=  english
 (5966279..5986699 22136968..22172834))


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (dmel_paralogs  $E1 $C1 $F1 $G1 $H1 $I1 $J1 $K1 $L1 $M1 $N1)
  (gene_map_table  $O1 $P1 $E1 $Q1 $R1 $S1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (dmel_paralogs  $E1 $C1 $F1 $G1 $H1 $I1 $J1 $K1 $L1 $M1 $N1)
  (gene_map_table  $O1 $P1 $E1 $Q1 $R1 $S1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0342981 FBpp0309745)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (best_gene_summary  FBgn0000008 a "FlyBase Gene Snapshot" "arc (a) encodes a protein involved in eye development.")
  (gene_map_table  Dmel a FBgn0000008 2-98 58C1-58C5 2R:22136968..22172834(1))))

(=  english
 ("arc (a) encodes a protein involved in eye development." "FlyBase Gene Snapshot"))


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (best_gene_summary  $E1 $C1 $F1 $G1)
  (gene_map_table  $H1 $I1 $E1 $J1 $K1 $L1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (best_gene_summary  $E1 $C1 $F1 $G1)
  (gene_map_table  $H1 $I1 $E1 $J1 $K1 $L1)))





(=  grounded
 ((fbgn_fbtr_fbpp  FBgn0000008 FBtr0342981 FBpp0309745)
  (fbgn_fbtr_fbpp_expanded  Dmel protein_coding_gene FBgn0000008 a arc CG6741 mRNA FBtr0342981 a-RD FBpp0309745 a-PD)
  (dmel_unique_protein_isoforms  FBgn0000008 a a-PD ())
  (best_gene_summary  FBgn0000008 a "FlyBase Gene Snapshot" "arc (a) encodes a protein involved in eye development.")
  (gene_snapshots  FBgn0000008 a arc 20190912 "arc (a) encodes a protein involved in eye development.")))

(=  english
 ("arc (a) encodes a protein involved in eye development." "FlyBase Gene Snapshot"))


!(match  &flybase
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (best_gene_summary  $E1 $C1 $F1 $G1)
  (gene_snapshots  $E1 $H1 $I1 $J1 $K1))
 (and
  (fbgn_fbtr_fbpp  $O $P $Q)
  (fbgn_fbtr_fbpp_expanded  $R $S $T $U $V $W $X $P $Y $Z $A1)
  (dmel_unique_protein_isoforms  $B1 $C1 $A1 $D1)
  (best_gene_summary  $E1 $C1 $F1 $G1)
  (gene_snapshots  $E1 $H1 $I1 $J1 $K1)))





