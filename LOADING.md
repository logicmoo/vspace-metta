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

{}
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
 loaded_from_file(     22_220_267, './data/ftp.flybase.net/releases/current/precomputed_files/metadata/dataset_metadata_fb_2023_04.tsv').
 loaded_from_file(      5_580_890, './data/ftp.flybase.net/releases/current/precomputed_files/references/entity_publication_fb_2023_04.tsv').
 loaded_from_file(      2_928_712, './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_rpkm_report_fb_2023_04.tsv').
 loaded_from_file(      2_639_866, './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/chebi_fb_2023_04.obo').
 loaded_from_file(      2_262_949, './data/ftp.flybase.net/releases/current/precomputed_files/collaborators/pmid_fbgn_uniprot_fb_2023_04.tsv').
 loaded_from_file(      1_316_133, './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_NAseq_Uniprot_fb_2023_04.tsv').
 loaded_from_file(      1_001_255, './data/ftp.flybase.net/releases/current/precomputed_files/synonyms/fb_synonym_fb_2023_04.tsv').
 loaded_from_file(        722_571, './data/ftp.flybase.net/releases/current/precomputed_files/clones/cDNA_clone_data_fb_2023_04.tsv').
 loaded_from_file(        519_823, './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/go-basic.obo').
 loaded_from_file(        384_207, './data/ftp.flybase.net/releases/current/precomputed_files/alleles/genotype_phenotype_data_fb_2023_04.tsv').
 loaded_from_file(        363_453, './data/ftp.flybase.net/releases/current/precomputed_files/alleles/allele_genetic_interactions_fb_2023_04.tsv').
 loaded_from_file(        288_469, './data/ftp.flybase.net/releases/current/precomputed_files/alleles/fbal_to_fbgn_fb_2023_04.tsv').
 loaded_from_file(        251_228, './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/fly_anatomy.obo').
 loaded_from_file(        250_923, './data/ftp.flybase.net/releases/current/precomputed_files/genes/automated_gene_summaries_fb_2023_04.tsv').
 loaded_from_file(        250_923, './data/ftp.flybase.net/releases/current/precomputed_files/genes/automated_gene_summaries.tsv').
 loaded_from_file(        245_830, './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_map_table_fb_2023_04.tsv').
 loaded_from_file(        223_056, './data/ftp.flybase.net/releases/current/precomputed_files/orthologs/dmel_paralogs_fb_2023_04.tsv').
 loaded_from_file(        212_011, './data/ftp.flybase.net/releases/current/precomputed_files/insertions/insertion_mapping_fb_2023_04.tsv').
 loaded_from_file(        174_894, './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_gleanr_fb_2023_04.tsv').
 loaded_from_file(        147_155, './data/ftp.flybase.net/releases/current/precomputed_files/stocks/stocks_FB2023_04.tsv').
 loaded_from_file(        144_465, './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/doid.obo').
 loaded_from_file(         99_296, './data/ftp.flybase.net/releases/current/precomputed_files/references/fbrf_pmid_pmcid_doi_fb_2023_04.tsv').
 loaded_from_file(         57_987, './data/ftp.flybase.net/releases/current/precomputed_files/species/organism_list_fb_2023_04.tsv').
 loaded_from_file(         51_248, './data/ftp.flybase.net/releases/current/precomputed_files/genes/physical_interactions_mitab_fb_2023_04.tsv').
 loaded_from_file(         50_401, './data/ftp.flybase.net/releases/current/precomputed_files/clones/genomic_clone_data_fb_2023_04.tsv').
 loaded_from_file(         38_591, './data/ftp.flybase.net/releases/current/precomputed_files/genes/dmel_gene_sequence_ontology_annotations_fb_2023_04.tsv').
 loaded_from_file(         35_733, './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_fb_2023_04.tsv').
 loaded_from_file(         35_733, './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_fbtr_fbpp_expanded_fb_2023_04.tsv').
 loaded_from_file(         35_107, './data/ftp.flybase.net/releases/current/precomputed_files/orthologs/dmel_human_orthologs_disease_fb_2023_04.tsv').
 loaded_from_file(         32_530, './data/ftp.flybase.net/releases/current/precomputed_files/collaborators/fbgn_uniprot_fb_2023_04.tsv').
 loaded_from_file(         32_143, './data/ftp.flybase.net/releases/current/precomputed_files/genes/best_gene_summary_fb_2023_04.tsv').
 loaded_from_file(         26_751, './data/ftp.flybase.net/releases/current/precomputed_files/human_disease/disease_model_annotations_fb_2023_04.tsv').
 loaded_from_file(         22_453, './data/ftp.flybase.net/releases/current/precomputed_files/genes/dmel_unique_protein_isoforms_fb_2023_04.tsv').
 loaded_from_file(         21_982, './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/so-simple.obo').
 loaded_from_file(         21_580, './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/slice.chebi.obo').
 loaded_from_file(         20_322, './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_genetic_interactions_fb_2023_04.tsv').
 loaded_from_file(         17_902, './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_annotation_ID_fb_2023_04.tsv').
 loaded_from_file(         17_748, './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_rpkm_matrix_fb_2023_04.tsv').
 loaded_from_file(         13_986, './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_snapshots_fb_2023_04.tsv').
 loaded_from_file(         13_746, './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_exons2affy2_overlaps.tsv').
 loaded_from_file(         13_398, './data/ftp.flybase.net/releases/current/precomputed_files/transposons/transposon_sequence_set.fa').
 loaded_from_file(         12_497, './data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_exons2affy1_overlaps.tsv').
 loaded_from_file(         12_095, './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/gene_group_FB2023_04.obo').
 loaded_from_file(         11_223, './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/psi-mi.obo').
 loaded_from_file(         10_959, './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_group_data_fb_2023_04.tsv').
 loaded_from_file(          8_883, './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/flybase_controlled_vocabulary.obo').
 loaded_from_file(          3_970, './data/ftp.flybase.net/releases/current/precomputed_files/genes/Dmel_enzyme_data_fb_2023_04.tsv').
 loaded_from_file(          1_813, './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/fly_development.obo').
 loaded_from_file(          1_713, './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_groups_HGNC_fb_2023_04.tsv').
 loaded_from_file(          1_092, './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/image.obo').
 loaded_from_file(            994, './data/ftp.flybase.net/releases/current/precomputed_files/genes/pathway_group_data_fb_2023_04.tsv').
 loaded_from_file(            601, './data/ftp.flybase.net/releases/current/precomputed_files/map_conversion/cyto-genetic-seq.tsv').
 loaded_from_file(            545, './data/ftp.flybase.net/releases/current/precomputed_files/ontologies/flybase_stock_vocabulary.obo').
 loaded_from_file(            464, './data/ftp.flybase.net/releases/current/precomputed_files/genes/gene_functional_complementation_fb_2023_04.tsv').
true.
```

Table sizes
```
metta +> print_est_sizes.
 est_size_loaded(     22_220_267, dataset_metadata).
 est_size_loaded(      5_580_889, entity_publication).
 est_size_loaded(      2_928_712, gene_rpkm_report).
 est_size_loaded(      2_262_949, pmid_fbgn_uniprot).
 est_size_loaded(      1_707_189, ontology_info).
 est_size_loaded(      1_316_132, fbgn_NAseq_Uniprot).
 est_size_loaded(      1_142_700, property_value).
 est_size_loaded(      1_001_254, synonym).
 est_size_loaded(        722_570, cDNA_clone).
 est_size_loaded(        384_206, genotype_phenotype).
 est_size_loaded(        363_453, allele_genetic_interactions).
 est_size_loaded(        288_469, fbal_to_fbgn).
 est_size_loaded(        245_829, gene_map_table).
 est_size_loaded(        223_056, dmel_paralogs).
 est_size_loaded(        212_010, insertion_mapping).
 est_size_loaded(        174_894, fbgn_gleanr).
 est_size_loaded(        147_155, stocks).
 est_size_loaded(         99_294, fbrf_pmid_pmcid_doi).
 est_size_loaded(         57_986, organism_list).
 est_size_loaded(         51_248, physical_interactions_mitab).
 est_size_loaded(         50_401, genomic_clone).
 est_size_loaded(         38_591, dmel_gene_sequence_ontology_annotations).
 est_size_loaded(         35_732, fbgn_fbtr_fbpp_expanded).
 est_size_loaded(         35_732, fbgn_fbtr_fbpp).
 est_size_loaded(         35_107, dmel_human_orthologs_disease).
 est_size_loaded(         32_530, fbgn_uniprot).
 est_size_loaded(         32_143, best_gene_summary).
 est_size_loaded(         27_827, receives_synaptic_input_in_region).
 est_size_loaded(         27_370, automated_gene_summaries).
 est_size_loaded(         26_750, disease_model_annotations).
 est_size_loaded(         26_432, transposon_sequence_set).
 est_size_loaded(         22_453, dmel_unique_protein_isoforms).
 est_size_loaded(         20_392, sends_synaptic_output_to_region).
 est_size_loaded(         20_322, gene_genetic_interactions).
 est_size_loaded(         17_901, fbgn_annotation_ID).
 est_size_loaded(         17_748, gene_rpkm_matrix).
 est_size_loaded(         14_139, part_of).
 est_size_loaded(         13_986, gene_snapshots).
 est_size_loaded(         13_746, fbgn_exons2affy2_overlaps).
 est_size_loaded(         12_497, fbgn_exons2affy1_overlaps).
 est_size_loaded(         10_958, gene_group).
 est_size_loaded(          5_680, has_synaptic_IO_in).
 est_size_loaded(          3_969, 'Dmel_enzyme').
 est_size_loaded(          3_120, regulates).
 est_size_loaded(          2_704, negatively_regulates).
 est_size_loaded(          2_692, positively_regulates).
 est_size_loaded(          2_126, has_soma_location).
 est_size_loaded(          1_941, overlaps).
 est_size_loaded(          1_744, develops_from).
 est_size_loaded(          1_711, gene_groups_HGNC).
 est_size_loaded(          1_149, sends_synaptic_output_to_cell).
 est_size_loaded(            993, pathway_group).
 est_size_loaded(            738, receives_synaptic_input_from_neuron).
 est_size_loaded(            706, fasciculates_with).
 est_size_loaded(            601, 'cyto-genetic-seq').
 est_size_loaded(            572, has_sensory_dendrite_in).
 est_size_loaded(            526, continuous_with).
 est_size_loaded(            464, gene_functional_complementation).
 est_size_loaded(            311, synapsed_via_type_Ib_bouton_to).
 est_size_loaded(            287, innervates).
 est_size_loaded(            239, immediately_preceded_by).
 est_size_loaded(            229, has_fasciculating_neuron_projection).
 est_size_loaded(            200, synapsed_via_type_II_bouton_to).
 est_size_loaded(            186, receives_synaptic_input_throughout).
 est_size_loaded(            185, substage_of).
 est_size_loaded(            165, has_quality).
 est_size_loaded(            156, has_part).
 est_size_loaded(            151, def).
 est_size_loaded(            148, synapsed_via_type_Is_bouton_to).
 est_size_loaded(            126, attached_to).
 est_size_loaded(            103, subsetdef).
 est_size_loaded(             89, receives_input_from).
 est_size_loaded(             88, disjoint_from).
 est_size_loaded(             74, sends_synaptic_output_throughout).
 est_size_loaded(             68, develops_into).
 est_size_loaded(             64, derives_from).
 est_size_loaded(             30, has_origin).
 est_size_loaded(             30, electrically_synapsed_to).
 est_size_loaded(             23, develops_directly_from).
 est_size_loaded(             20, attached_to_part_of).
 est_size_loaded(             18, synonymtypedef).
 est_size_loaded(             17, innervated_by).
 est_size_loaded(             14, synapsed_via_type_III_bouton_to).
 est_size_loaded(             11, has_synaptic_IO_throughout).
 est_size_loaded(              9, transitive_over).
 est_size_loaded(              8, composed_primarily_of).
 est_size_loaded(              7, transcribed_to).
 est_size_loaded(              7, inverse_of).
 est_size_loaded(              6, conditionality).
 est_size_loaded(              6, adjacent_to).
 est_size_loaded(              4, non_functional_homolog_of).
 est_size_loaded(              3, xref).
 est_size_loaded(              3, variant_of).
 est_size_loaded(              3, member_of).
 est_size_loaded(              3, develops_from_part_of).
 est_size_loaded(              3, contains).
 est_size_loaded(              3, 'RO').
 est_size_loaded(              2, connected_to).
 est_size_loaded(              1, transcribed_from).
 est_size_loaded(              1, guided_by).
 est_size_loaded(              0, seq).
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
find ./data/ \( -name "*.tsv" -or -name "*.txt" -or -name "*.fb" \) -exec python metta_vspace/check_duplicates.py {} \;

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
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_exons2affy1_overlaps.tsv" ())  ; Could not parse file.
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/genes/fbgn_exons2affy2_overlaps.tsv" ())  ; Could not parse file.
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
(unique-columns "./data/ftp.flybase.net/releases/current/precomputed_files/map_conversion/cytotable.txt" (1 "flybase/maps/cytotable.txt                                        July 26 1994"))
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


