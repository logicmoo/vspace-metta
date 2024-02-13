  (encoding iso-latin-1)
  (flush-output)
  (setenv RUST-BACKTRACE full)
  (multifile (/ fb-pred 2))
  (discontiguous (/ fb-pred 2))
  (dynamic (/ fb-pred 2))


  (ensure-loaded swi-support)



  (= 
    (fb-stats) 
    (, 
      (metta-stats) 
      (set-det)))


  (= 
    (with_self  
      (&flybase) 
      (for-metta &flybase $P)) 
    (, 
      (fb-pred-nr $F $A) 
      (current-predicate (/ $F $A)) 
      (length $L $A) 
      (= $P 
        (Cons  $F $L)) 
      (apply $F $L)))

; ==============
; OBO LOADER
; ==============

  (set-option-value encoding utf8)
  (ensure-loaded flybase-obo)


  (ensure-loaded metta-interp)



  (= 
    (create-flybase-qlf) 
    (shell 'swipl -g "qcompile(whole-flybase)'))


  (= 
    (create-flybase-pl $FtpDir) 
    (create-flybase-pl))

  (= 
    (create-flybase-pl) 
    (, 
      (all-data-once) 
      (load-flybase-full) 
      (all-data-done))); all_metta_once,

  ; all_metta_done,
   ;shell('mv whole_metta.pl whole_flybase.pl').


  (= 
    (create-flybase-pl-tiny) 
    (, 
      (all-data-once) 
      (load-flybase-tiny) 
      (all-data-done) 
      (shell 'mv whole-metta.pl tiny-flybase.pl'))); all_metta_once,
; all_metta_done,



  (= 
    (save-to-pl) 
    (, 
      (tell flybase-metta.pl) 
      (forall 
        (fb-pred $F $A) 
        (listing (/ $F $A))) 
      (told)))



  (= 
    (real-assert $OBO) 
    (, 
      (is-converting) 
      (not (is-loading-file $File)) 
      (set-det) 
      (throw (real-assert $OBO))))
  (= 
    (real-assert $OBO) 
    (, 
      (ignore (real-assert1 $OBO)) 
      (real-assert2 $OBO)))

;real_assert(OBO):- is_converting,!,print_src(OBO).

  (= 
    (real-assert1 $OBO) 
    (, 
      (all-metta-to $Out) 
      (set-det) 
      (with-output-to $Out 
        (print-src $OBO))))

  (= 
    (real-assert2 $OBO) 
    (, 
      (all-data-to $Out) 
      (set-det) 
      (write-canonical $Out $OBO) 
      (set-det) 
      (writeln $Out .)))
  (= 
    (real-assert2 $OBO) 
    (, 
      (is-converting) 
      (set-det) 
      (throw (real-assert2 $OBO))))
  (= 
    (real-assert2 $OBO) 
    (, 
      (call $OBO) 
      (set-det)))
  (= 
    (real-assert2 $OBO) 
    (add-atom  &self $OBO))


  (= 
    (print-src $OBO) 
    (, 
      (format ~N) 
      (uncompound $OBO $Src) 
      (set-det) 
      (write-srcH $Src)))

  (= 
    (write-srcH (Cons  $F $Args)) 
    (, 
      (write ( ) 
      (write-src $F) 
      (maplist write-srcE $Args) 
      (writeln  ))))

  (= 
    (write-srcE $Arg) 
    (, 
      (write ' ') 
      (write-src $Arg)))




  (= 
    (is-loading-file $File) 
    (, 
      (nb-current loading-file $File) 
      (\== $File Nil) 
      (set-det)))
  (= 
    (is-loading-file $File) 
    (, 
      (nb-current saving-file $File) 
      (\== $File Nil)))




  (= 
    (all-data-once) 
    (, 
      (is-loading-file $File) 
      (set-det)))
  (= 
    (all-data-once) 
    (, 
      (nb-setval saving-file whole-metta) 
      (all-data-to $Out) 
      (writeln $Out ':- encoding(utf8).') 
      (writeln $Out ':- style-check(-discontiguous).') 
      (flush-output $Out) 
      (set-det) 
      (all-data-preds)))

  (= 
    (all-data-preds) 
    (, 
      (all-data-to $Out) 
      (with-output-to $Out all-data-preds0) 
      (set-det)))
  (= all_data_preds True)

  (= 
    (all-data-preds0) 
    (, 
      (listing-c (/ table-n-type 3)) 
      (listing-c (/ load-state 2)) 
      (listing-c (/ is-loaded-from-file-count 2)) 
      (listing-c (/ fb-pred 2)) 
      (listing-c (/ fb-arg-type 1)) 
      (listing-c (/ fb-arg-table-n 3)) 
      (listing-c (/ fb-arg 1)) 
      (listing-c (/ done-reading 1)) 
      (set-det)))

  (dynamic (/ is-all-data-to 2))



  (= 
    (all-data-to $Out) 
    (, 
      (once (, (is-all-data-to $File1 $Out1) (is-loading-file $File2))) 
      (== $File1 $File2) 
      (set-det) 
      (= $Out $Out1)))
  (= 
    (all-data-to $Out) 
    (, 
      (is-all-data-to $File1 $Out1) 
      (is-loading-file $File2) 
      (set-det) 
      (close $Out1) 
      (atom-concat $File2 .metta.datalog.tmp $File2Data) 
      (open $File2Data write $Out2 
        (:: 
          (alias all-data) 
          (encoding utf8) 
          (lock write))) 
      (remove-atom  &self 
        (is_all_data_to  $File1 $Out1)) 
      (add-atom  &self 
        (is_all_data_to  $File2 $Out2)) 
      (fbug (all-data-to-switch $File1 $File2)) 
      (set-det) 
      (= $Out $Out2)))
  (= 
    (all-data-to $Out) 
    (, 
      (is-all-data-to $File1 $Out) 
      (set-det)))
  (= 
    (all-data-to $Out) 
    (, 
      (is-converting) 
      (is-loading-file $File2) 
      (set-det) 
      (atom-concat $File2 .metta.datalog.tmp $File2Data) 
      (open $File2Data write $Out2) 
      (add-atom  &self 
        (is_all_data_to  $File2 $Out2)) 
      (fbug (all-data-to $File2)) 
      (set-det) 
      (= $Out $Out2)))


  (= 
    (all-data-done) 
    (, 
      (all-data-preds) 
      (nb-delete saving-file) 
      (all-metta-done) 
      (forall 
        (remove-atom  &self 
          (is_all_data_to  $_ $Out)) 
        (catch-ignore (close $Out)))))


  (if is-converting)
  (at-halt all-data-done)
  (endif)


  (= 
    (listing-c (/ $F $A)) 
    (, 
      (format ~N~q.~n 
        (:: !(multifile (/ $F $A)))) 
      (format ~q.~n 
        (:: !(dynamic (/ $F $A)))) 
      (functor $P $F $A) 
      (catch 
        (forall $P 
          (format ~q.~n 
            (:: $P))) $E 
        (fbug (caused (/ $F $A) $E)))))



  (dynamic (/ is-all-metta-to 2))

  (= 
    (all-metta-to $Out) 
    (, 
      (once (, (is-all-metta-to $File1 $Out1) (is-loading-file $File2))) 
      (== $File1 $File2) 
      (set-det) 
      (= $Out $Out1)))
  (= 
    (all-metta-to $Out) 
    (, 
      (is-all-metta-to $File1 $Out1) 
      (is-loading-file $File2) 
      (set-det) 
      (close $Out1) 
      (atom-concat $File2 .metta.tmp $File2Data) 
      (open $File2Data write $Out2 
        (:: 
          (alias all-metta) 
          (encoding utf8) 
          (lock write))) 
      (remove-atom  &self 
        (is_all_metta_to  $File1 $Out1)) 
      (add-atom  &self 
        (is_all_metta_to  $File2 $Out2)) 
      (fbug (all-metta-to-switch $File1 $File2)) 
      (set-det) 
      (= $Out $Out2)))
  (= 
    (all-metta-to $Out) 
    (, 
      (is-all-metta-to $File1 $Out) 
      (set-det)))
  (= 
    (all-metta-to $Out) 
    (, 
      (is-loading-file $File2) 
      (set-det) 
      (atom-concat $File2 .metta.tmp $File2Data) 
      (open $File2Data write $Out2) 
      (add-atom  &self 
        (is_all_metta_to  $File2 $Out2)) 
      (fbug (all-metta-to $File2)) 
      (set-det) 
      (= $Out $Out2)))


  (= 
    (all-metta-done) 
    (forall 
      (remove-atom  &self 
        (is_all_metta_to  $_ $Out)) 
      (catch-ignore (close $Out))))






  (= 
    (loaded-from-file-count $X) 
    (flag loaded-from-file-count $X $X))

  (= 
    (incr-file-count $X) 
    (, 
      (flag loaded-from-file-count $X 
        (+ $X 1)) 
      (flag total-loaded-symbols $TA 
        (+ $TA 1)) 
      (flag total-loaded-atoms $TA 
        (+ $TA 1))))


  (= 
    (should-cache) 
    (, 
      (fail) 
      (loaded-from-file-count $X) 
      (option-else max-disk-cache $Num 1000) 
      (=< $X $Num)))

  (= 
    (reached-file-max) 
    (, 
      (option-value max-per-file $Y) 
      (\== $Y inf) 
      (\== $Y 0) 
      (loaded-from-file-count $X) 
      (>= $X $Y)))

  (= 
    (should-fix-args) 
    (, 
      (fail) 
      (not should-sample)))

  (= 
    (should-sample) 
    (, 
      (set-det) 
      (fail)))
  (= 
    (should-sample) 
    (, 
      (should-show-data $_) 
      (set-det)))
  (= 
    (should-sample) 
    (, 
      (once (or (option-value samples-per-million $Fifty) (= $Fifty 50))) 
      (loaded-from-file-count $X) 
      (is $Y 
        (mod $X 1000000)) 
      (set-det) 
      (>= $Y 0) 
      (=< $Y $Fifty) 
      (set-det)))

  (= 
    (should-show-data $X) 
    (, 
      (loaded-from-file-count $X) 
      (set-det) 
      (once (or (, (=< $X 13) (>= $X 10)) (, (> $X 0) (is 0 (rem $X 1000000))))) 
      (format user-error ~N Nil) 
      (format user-output ~N Nil) 
      (set-det) 
      (heartbeat)))
  (= 
    (should-show-data $X) 
    (, 
      (nb-current loading-file $F) 
      (\== $F Nil) 
      (symbol-concat $_ .obo $F) 
      (loaded-from-file-count $X) 
      (is $Y 
        (mod $X 100000)) 
      (=< $Y 15) 
      (>= $Y 10)))


; ==============
; VSPACE LOADER
; ==============
;:- set_option_value(max_per_file,10_000_000).
;:- set_option_value(max_per_file,1_000).
;:- set_option_value(max_per_file,300).
;:- set_option_value(max_per_file,inf+1).

  (set-option-value max-per-file 0)
;:- set_option_value(max_per_file,20_000).
;:- set_option_value(max_per_file,20_000_000_000_000_000_000_000_000_000_000_000).
; load_flybase('./precomputed_files/insertions/fu_gal4_table_fb_*.json').
  (set-option-value max-disk-cache 1000)
  (set-option-value samples-per-million 30)
  (set-option-value full-canon True)



  (= 
    (flybase_identifier  FBab Aberration) True)
  (= 
    (flybase_identifier  FBal Allele) True)
  (= 
    (flybase_identifier  FBba Balancer) True)
  (= 
    (flybase_identifier  FBbt AnatomyTerm) True)
  (= 
    (flybase_identifier  FBch ChromosomeArm) True)
  (= 
    (flybase_identifier  FBcl Clone) True)
  (= 
    (flybase_identifier  FBcv ControlledVocabulary) True)
  (= 
    (flybase_identifier  FBdv DevelopmentalStageTerm) True)
  (= 
    (flybase_identifier  FBgg GeneGroup) True)
  (= 
    (flybase_identifier  FBgn Gene) True)
  (= 
    (flybase_identifier  FBhh HumanDisease) True)
  (= 
    (flybase_identifier  FBig GeneInteraction) True)
  (= 
    (flybase_identifier  FBim Image) True)
  (= 
    (flybase_identifier  FBlc LargeDatasetMetadata) True)
  (= 
    (flybase_identifier  FBmc MolecularConstruct) True)
  (= 
    (flybase_identifier  FBms MolecularSegment) True)
  (= 
    (flybase_identifier  FBpl Probe) True)
  (= 
    (flybase_identifier  FBpp Polypeptide) True)
  (= 
    (flybase_identifier  FBrf Reference) True)
  (= 
    (flybase_identifier  FBsf SequenceFeature) True)
  (= 
    (flybase_identifier  FBsn GeneStrain) True)
  (= 
    (flybase_identifier  FBst GeneStock) True)
  (= 
    (flybase_identifier  FBtc CellLine) True)
  (= 
    (flybase_identifier  FBti TransposableIlementInsertion) True)
  (= 
    (flybase_identifier  FBto ExperimentalTool) True)
  (= 
    (flybase_identifier  FBte TransgenicElement) True)
  (= 
    (flybase_identifier  FBtp Transposon) True) ;flybase_identifier('FBtp', 'transgenic construct or natural transposon').
  (= 
    (flybase_identifier  FBtr Transcript) True)

; FlyBase prefixes

  (= 
    (symbol-prefix $Prefix flybase $Desc) 
    (flybase-identifier $Prefix $Desc))
; Some common OBO prefixes (Note: these are more generalized and not specific to FlyBase)
  (= 
    (symbol_prefix  GO obo 'Gene Ontology') True)
  (= 
    (symbol_prefix  PO obo 'Plant Ontology') True)
  (= 
    (symbol_prefix  DOID obo 'Disease Ontology') True)
  (= 
    (symbol_prefix  UBERON obo 'Uber-anatomy ontology') True)
  (= 
    (symbol_prefix  CHEBI obo 'Chemical Entities of Biological Interest') True)


;:- abolish(gp_information/0).

  (forall 
    (remove-atom  &self 
      (fb_pred  $F 0)) 
    (abolish (/ $F 0)))
  (include flybase-learn)

;fbd(X,P):- fb_pred(F,A),functor(P,F,A),arg(_,P,X), no_repeats(P,call(P)).

  (= 
    (fbdead) 
    (, 
      (fb-pred-nr $F $A) 
      (functor $P $F $A) 
      (arg $_ $P xxxxxxxxxxxxxxxxx) 
      (no-repeats $P 
        (call $P)) 
      (writeln (= fbdead $P)) 
      (fail)))
  (= fbdead True)


  (use-module (library csv))

;:- current_MeTTa_flag(libswipl,_)->use_module(library(logicmoo_utils)); true.






  (= 
    (recount-total-loaded-symbols) 
    (, 
      (flag total-loaded-symbols $_ 0) 
      (full-atom-count $Was) 
      (flag total-loaded-symbols $_ $Was)))/* mined
; Total         Atoms (Atomspace size): .................................................. 56,354,849
;               ConceptNodes: ............................................................. 9,472,616
;               Bytes Per Atom (Average): ....................................................... 140
;               Bytes Per ConceptNode (Average): ................................................ 120
;               Relational Memory: ............................................................ 7.39G
;               ConceptNode Memory: ........................................................... 1.07G
;               Atoms per minute: ......................................................... 3,491,880
;               Total Physical Memory Used: ................................................... 9.08G
;               Runtime (days:hh:mm:ss): ................................................. 0:00:16:08


; Total         Atoms (Atomspace size): .................................................. 38,812,356
;               ConceptNodes: ............................................................. 9,380,821
;               Total Memory Used: ............................................................ 8.26G
;               Runtime (days:hh:mm:ss): ................................................. 0:00:19:15


; Total         Atoms (Atomspace size): .................................................. 38,822,366
;               ConceptNodes: ............................................................. 9,824,355
;               Random samples: ................................................................. 805
;               Total Memory Used: ............................................................ 8.18G
;               Runtime (days:hh:mm:ss): ................................................. 0:00:08:28

*/


; Convert flybase data from CSV to MeTTa format.

  (= 
    (load-flybase) 
    (, 
      (is-scryer) 
      (set-det) 
      (load-flybase-files)))
  (= 
    (load-flybase) 
    (with-option mettafiles False 
      (, 
        (make) 
        (recount-total-loaded-symbols) 
        (set-det) 
        (load-flybase-files) 
        (set-det) 
        (cleanup-arities) 
        (set-det) 
        (fb-stats))))

  (= 
    (load-flybase-dirs) 
    (, 
      (load-flybase ./data/ftp.flybase.net/releases/current/das-precomputed/*) 
      (load-flybase ./precomputed-files/*) 
      (load-flybase ./data/ftp.flybase.net/releases/current/./*sv) 
      (set-det)))




  (= 
    (load-flybase-files) 
    (, 
      (ftp-data $Dir) 
      (with-cwd $Dir load-flybase-files-ftp)))/*

declare -a StringArray=(\
"fbgn_fbtr_fbpp_expanded_*.tsv.gz" \
"physical_interactions_mitab*.tsv.gz" \
"dmel_gene_sequence_ontology_annotations*.tsv.gz" \
"gene_map_table_*.tsv.gz" \
"ncRNA_genes_fb_*.json.gz" \
"gene_association.fb.gz" \
"gene_genetic_interactions_*.tsv.gz" \
"allele_genetic_interactions_*.tsv.gz" \
"allele_phenotypic_data_*.tsv.gz" \
"disease_model_annotations*.tsv.gz" \
"dmel_human_orthologs_disease*.tsv.gz" \
"fbrf_pmid_pmcid_doi*.tsv.gz")
*/





  (= 
    (load-flybase-das-11) 
    (, 
      (load-flybase ./precomputed-files/*/ncRNA-genes-fb-*.json) 
      (load-flybase ./precomputed-files/*/fbgn-fbtr-fbpp-expanded*.tsv) 
      (load-flybase ./precomputed-files/*/physical-interactions-mitab*.tsv) 
      (load-flybase ./precomputed-files/*/dmel-gene-sequence-ontology-annotations*.tsv) 
      (load-flybase ./precomputed-files/*/gene-map-table*.tsv) 
      (load-flybase ./precomputed-files/*/gene-association-*.fb tsv) 
      (load-flybase ./precomputed-files/*/gene-genetic-interactions*.tsv) 
      (load-flybase ./precomputed-files/*/allele-genetic-interactions*.tsv) 
      (load-flybase ./precomputed-files/alleles/genotype-phenotype-data*.tsv) 
      (load-flybase ./precomputed-files/*/allele-phenotypic-data*.tsv) 
      (load-flybase ./precomputed-files/*/disease-model-annotations*.tsv) 
      (load-flybase ./precomputed-files/*/dmel-human-orthologs-disease*.tsv) 
      (load-flybase ./precomputed-files/*/fbrf-pmid-pmcid-doi*.tsv) 
      (format "~n=================================================================================================") 
      (format "~n=====================================Das Checkpoint==============================================") 
      (format "~n=================================================================================================") 
      (fb-stats) 
      (format "~n=================================================================================================") 
      (format "~n=================================================================================================") 
      (format "~n=================================================================================================~n") 
      (set-det))); DAS''s 11 tsv and 1 json file
; Note: this file replaces 'allele_phenotypic_data_*.tsv' from FB2023_01 onward.



  (= 
    (load-flybase-files-ftp) 
    (, 
      (maplist must-det-ll 
        (:: 
          (load-flybase ./precomputed-files/collaborators/pmid-fbgn-uniprot*.tsv) load-flybase-das-11 load-flybase-obo-files 
          (load-flybase ./precomputed-files/alleles/fbal-to-fbgn*.tsv) 
          (load-flybase ./precomputed-files/clones/cDNA-clone-data*.tsv) 
          (load-flybase ./precomputed-files/clones/genomic-clone-data*.tsv) 
          (load-flybase ./precomputed-files/collaborators/fbgn-uniprot*.tsv) 
          (load-flybase ./precomputed-files/collaborators/gp-information*.fb) 
          (load-flybase ./precomputed-files/genes/automated-gene-summaries*.tsv) 
          (load-flybase ./precomputed-files/genes/best-gene-summary*.tsv) 
          (load-flybase ./precomputed-files/genes/Dmel-enzyme-data*.tsv) 
          (load-flybase ./precomputed-files/genes/dmel-unique-protein-isoforms*.tsv) 
          (load-flybase ./precomputed-files/genes/fbgn-annotation-ID*.tsv) 
          (with-option 
            (:: (= pred-va True)) 
            (load-flybase ./precomputed-files/genes/fbgn-exons2affy1-overlaps*.tsv)) 
          (with-option 
            (:: (= pred-va True)) 
            (load-flybase ./precomputed-files/genes/fbgn-exons2affy2-overlaps*.tsv)) 
          (with-option 
            (:: (= pred-va False)) 
            (load-flybase ./precomputed-files/genes/fbgn-fbtr-fbpp*.tsv)) 
          (load-flybase ./precomputed-files/genes/fbgn-gleanr*.tsv) 
          (load-flybase ./precomputed-files/genes/fbgn-NAseq-Uniprot*.tsv) 
          (load-flybase ./precomputed-files/genes/gene-functional-complementation*.tsv) 
          (load-flybase ./precomputed-files/genes/gene-group-data*.tsv) 
          (load-flybase ./precomputed-files/genes/gene-groups-HGNC*.tsv) 
          (load-flybase ./precomputed-files/genes/gene-rpkm-matrix*.tsv) 
          (load-flybase ./precomputed-files/genes/gene-rpkm-report*.tsv) 
          (load-flybase ./precomputed-files/genes/gene-snapshots*.tsv) 
          (load-flybase ./precomputed-files/genes/pathway-group-data*.tsv) 
          (load-flybase ./precomputed-files/insertions/fu-gal4-table-fb-*.json) 
          (load-flybase ./precomputed-files/insertions/insertion-mapping*.tsv) 
          (load-flybase ./precomputed-files/map-conversion/cyto-genetic-seq*.tsv) 
          (load-flybase ./precomputed-files/metadata/dataset-metadata*.tsv) 
          (load-flybase ./precomputed-files/orthologs/dmel-paralogs*.tsv) 
          (load-flybase ./precomputed-files/references/entity-publication*.tsv) 
          (load-flybase ./precomputed-files/species/organism-list*.tsv) 
          (load-flybase ./precomputed-files/stocks/stocks-FB*.tsv) 
          (load-flybase ./precomputed-files/synonyms/fb-synonym*.tsv) 
          (format "~n=================================================================================================") 
          (format "~n==========================Should be 18 minute Checkpoint=========================================") 
          (format "~n=================================================================================================") fb-stats 
          (format "~n=================================================================================================") 
          (format "~n=================================================================================================") 
          (format "~n=================================================================================================~n") 
          (load-flybase ./precomputed-files/map-conversion/cytotable.txt tsv) 
          (load-flybase ./precomputed-files/map-conversion/genome-cyto-seq.txt tsv) load-fbase-after-17)) 
      (set-det)));; load_flybase_obo_files,
; 36 more that DAS doesnt load
;load_flybase('./precomputed_files/insertions/construct_maps.zip'),


 
  (= 
    (gene-sequences) 
    (, 
      (load-flybase ./dmel-r6.55/gff/dmel-all-r6.55.gff) 
      (load-flybase ./dmel-r6.55/fasta/*.fasta) 
      (load-flybase ./dmel-r6.55/gtf/*.gft) 
      (set-det)))



  (= 
    (load-fbase-after-17) 
    (, 
      (must-det-ll (load-flybase ./precomputed-files/transposons/transposon-sequence-set.gff*)) 
      (load-flybase ./precomputed-files/transposons/transposon-sequence-set.fa) 
      (load-flybase ./precomputed-files/*/ncRNA-genes-fb-*.json) 
      (load-obo-files) 
      (set-det)));load_flybase('./precomputed_files/genes/scRNA-Seq_gene_expression*.tsv'),
;; load_flybase_chado,



  (= 
    (load-flybase-obo-files) 
    (, 
      (load-flybase ./data/*/*/*.scm) 
      (load-flybase ./precomputed-files/ontologies/doid.obo) 
      (load-flybase ./precomputed-files/ontologies/fly-anatomy.obo) 
      (load-flybase ./precomputed-files/ontologies/fly-development.obo) 
      (load-flybase ./precomputed-files/ontologies/flybase-controlled-vocabulary.obo) 
      (load-flybase ./precomputed-files/ontologies/flybase-stock-vocabulary.obo) 
      (load-flybase ./precomputed-files/ontologies/gene-group-FB*.obo) 
      (load-flybase ./precomputed-files/ontologies/go-basic.obo) 
      (load-flybase ./precomputed-files/ontologies/image.obo) 
      (load-flybase ./precomputed-files/ontologies/psi-mi.obo) 
      (load-flybase ./precomputed-files/ontologies/slice.chebi.obo) 
      (load-flybase ./precomputed-files/ontologies/so-simple.obo) 
      (load-flybase ./precomputed-files/ontologies/chebi-fb-*.obo) 
      (set-det)))




  (= 
    (load-obo-files) 
    (, 
      (load-flybase ./precomputed-files/*/so*.obo) 
      (fb-stats) 
      (load-flybase ./data/SO-Ontologies/Ontology-Files/*.obo) 
      (load-flybase ./data/SO-Ontologies/Ontology-Files/subsets/*.obo) 
      (load-flybase ./data/Legacy/Cross-Products/*.obo) 
      (load-flybase ./precomputed-files/*/*.obo) 
      (print-loaded-from-files) 
      (set-det)))/*
:- ensure_loaded('./reqs/obo_core/MeTTa/obo_core/goslim.pl').
:- ensure_loaded('./reqs/obo_metadata/MeTTa/obo_metadata.pl').
:- ensure_loaded('./reqs/obo_metadata/MeTTa/obo_metadata/iao_metadata.pl').
:- ensure_loaded('./reqs/obo_metadata/MeTTa/obo_metadata/oio.pl').
:- ensure_loaded('./reqs/obo_ro/MeTTa/obo_ro/ro.pl').

:- attach_packs('./reqs',[]).
:- ensure_loaded(library(obo_metadata)).
:- goslim:ensure_loaded(library(obo_core/goslim)).
:- ensure_loaded(library(obo_ro/ro)).

937_381_148
*/
/*
(load_fb_obo "data/ontologies/so.obo")

; Total         Atoms (Atomspace size): ...................................................... 19,967
;               ConceptNodes: ................................................................. 4,258
;               Random samples: ................................................................. 158
;               Total Memory Used: ........................................................ 1,089,408
;               Runtime (days:hh:mm:ss): ................................................. 0:00:00:29



(load_fb_obo "./precomputed_files/ontologies/so-simple.obo" )

; Total         Atoms (Atomspace size): ...................................................... 19,484
;               ConceptNodes: ................................................................. 4,194
;               Random samples: ................................................................. 160
;               Total Memory Used: ........................................................ 1,089,408
;               Runtime (days:hh:mm:ss): ................................................. 0:00:00:29


*/
/*
?- xinfo('SO:0000797').
ontology_info(id_type,'SO:0000797','Term').
def('SO:0000797',"TE that exists (or existed) in nature.",['FB:mc']).
has_quality('SO:0000797','SO:0000782',' natural').
intersection_of('SO:0000797','SO:0000101',' transposable_element').
intersection_of('SO:0000797',has_quality,'SO:0000782',' natural').
ontology_info(is_a,'SO:0000797','SO:0000101').
ontology_info(is_a,'SO:0000797','SO:0001038').
ontology_info(name,'SO:0000797',"natural_transposable_element").
synonym('SO:0000797',"natural transposable element",'EXACT',[]).



xinfo('SO:0000797').
ontology_info(id_type,'SO:0000797','Term').
def('SO:0000797',"TE that exists (or existed) in nature.",['FB:mc']).
has_quality('SO:0000797','SO:0000782',' natural').
intersection_of('SO:0000797','SO:0000101',' transposable_element').
intersection_of('SO:0000797',has_quality,'SO:0000782',' natural').
ontology_info(is_a,'SO:0000797','SO:0000101').
ontology_info(is_a,'SO:0000797','SO:0001038').
ontology_info(name,'SO:0000797',"natural_transposable_element").
synonym('SO:0000797',"natural transposable element",'EXACT',[]).

*/
;load_obo('./reqs/obonet/tests/data/?*.obo'),
; Total         Atoms (Atomspace size): ...................................................... 20,069
;               ConceptNodes: ................................................................. 4,200
;               Random samples: ................................................................. 159
;               Total Memory Used: ........................................................ 1,089,408
;               Runtime (days:hh:mm:ss): ................................................. 0:00:00:29
; Total         Atoms (Atomspace size): ...................................................... 20,551
;               ConceptNodes: ................................................................. 4,270
;               Random samples: ............................................................... 2,928
;               Total Memory Used: ........................................................ 1,154,944
;               Runtime (days:hh:mm:ss): ................................................. 0:00:00:40
;load_flybase('./data/*/*/*.obo'),
; Total         Atoms (Atomspace size): ...................................................... 20,968
;               ConceptNodes: ................................................................. 4,306
;               Random samples: .............................................................. 14,418
;               Total Memory Used: ........................................................ 9,828,592
;               Runtime (days:hh:mm:ss): ................................................. 0:00:01:14
;print_loaded_from_files,
;loaded_from_file(         19_515, './data/SO-Ontologies/Ontology_Files/so-simple.obo').
;         only reflects new entries ... thus full OBO adds 481 entries to the simple one
;loaded_from_file(            481, './data/SO-Ontologies/Ontology_Files/so.obo').
;loaded_from_file(            336, './data/SO-Ontologies/Legacy/Cross_Products/so-xp-dec.obo').
;loaded_from_file(            310, './data/SO-Ontologies/Ontology_Files/subsets/SOFA.obo').
;loaded_from_file(            141, './data/SO-Ontologies/Ontology_Files/subsets/biosapiens.obo').
;loaded_from_file(             73, './data/SO-Ontologies/Ontology_Files/subsets/Alliance_of_Genome_Resources.obo').
;loaded_from_file(             35, './data/SO-Ontologies/Legacy/Cross_Products/so-xp-non-classified.obo').
;loaded_from_file(             31, './data/SO-Ontologies/Ontology_Files/subsets/DBVAR.obo').
;loaded_from_file(             23, './data/SO-Ontologies/Legacy/Cross_Products/so-xp.obo').
;loaded_from_file(             23, './data/SO-Ontologies/Legacy/Cross_Products/so-xp-simple.obo').
; Total         Atoms (Atomspace size): ................................................... 3,489,211
;               ConceptNodes: ............................................................... 688,541
;               Random samples: .............................................................. 26,006
;               Total Memory Used: ............................................................ 1.19G
;               Runtime (days:hh:mm:ss): ................................................. 0:00:34:35
;loaded_from_file(2_637_502, './precomputed_files/ontologies/chebi_fb_2023_04.obo').
;loaded_from_file(  451_168, './precomputed_files/ontologies/go-basic.obo').
;loaded_from_file(  221_705, './precomputed_files/ontologies/fly_anatomy.obo').
;loaded_from_file(  128_798, './precomputed_files/ontologies/doid.obo').
;loaded_from_file(   19_515, './data/SO-Ontologies/Ontology_Files/so-simple.obo').
;loaded_from_file(    9_852, './precomputed_files/ontologies/psi-mi.obo').
;loaded_from_file(    8_644, './precomputed_files/ontologies/gene_group_FB2023_04.obo').
;loaded_from_file(    7_605, './precomputed_files/ontologies/flybase_controlled_vocabulary.obo').
;loaded_from_file(    1_598, './precomputed_files/ontologies/fly_development.obo').
;loaded_from_file(      834, './precomputed_files/ontologies/image.obo').
;loaded_from_file(      491, './precomputed_files/ontologies/flybase_stock_vocabulary.obo').
;loaded_from_file(      481, './data/SO-Ontologies/Ontology_Files/so.obo').
;loaded_from_file(      336, './data/SO-Ontologies/Legacy/Cross_Products/so-xp-dec.obo').
;loaded_from_file(      310, './data/SO-Ontologies/Ontology_Files/subsets/SOFA.obo').
;loaded_from_file(      141, './data/SO-Ontologies/Ontology_Files/subsets/biosapiens.obo').
;loaded_from_file(       73, './data/SO-Ontologies/Ontology_Files/subsets/Alliance_of_Genome_Resources.obo').
;loaded_from_file(       35, './data/SO-Ontologies/Legacy/Cross_Products/so-xp-non-classified.obo').
;loaded_from_file(       31, './data/SO-Ontologies/Ontology_Files/subsets/DBVAR.obo').
;loaded_from_file(       25, './precomputed_files/ontologies/so-simple.obo').
;loaded_from_file(       23, './data/SO-Ontologies/Legacy/Cross_Products/so-xp.obo').
;loaded_from_file(       23, './data/SO-Ontologies/Legacy/Cross_Products/so-xp-simple.obo').
;loaded_from_file(       21, './precomputed_files/ontologies/slice.chebi.obo').








  (= 
    (load-flybase-chado) 
    (with-option 
      (:: 
        (= row-1-is-header True) 
        (= max-per-file 100000)) 
      (load-flybase ./data/tsv-exports/public/*.tsv))); 359 tables with 937,381,148 rows




  (= 
    (est_size  22220267 dataset_metadata) True)
  (= 
    (est_size  5580889 entity_publication) True)
  (= 
    (est_size  2928712 gene_rpkm_report) True)
  (= 
    (est_size  2262949 pmid_fbgn_uniprot) True)
  (= 
    (est_size  1611349 ontology_info) True)
  (= 
    (est_size  1316132 fbgn_NAseq_Uniprot) True)
  (= 
    (est_size  1045549 property_value) True)
  (= 
    (est_size  1001254 synonym) True)
  (= 
    (est_size  722570 cDNA_clone_data) True)
  (= 
    (est_size  384206 genotype_phenotype) True)
  (= 
    (est_size  363453 allele_genetic_interactions) True)
  (= 
    (est_size  288469 fbal_to_fbgn) True)
  (= 
    (est_size  245829 gene_map_table) True)
  (= 
    (est_size  223056 dmel_paralogs) True)
  (= 
    (est_size  212010 insertion_mapping) True)
  (= 
    (est_size  174894 fbgn_gleanr) True)
  (= 
    (est_size  147155 stocks) True)
  (= 
    (est_size  99294 fbrf_pmid_pmcid_doi) True)
  (= 
    (est_size  57986 organism_list) True)
  (= 
    (est_size  51248 physical_interactions_mitab) True)
  (= 
    (est_size  50401 genomic_clone) True)
  (= 
    (est_size  38591 dmel_gene_sequence_ontology_annotations) True)
  (= 
    (est_size  35732 fbgn_fbtr_fbpp_expanded) True)
  (= 
    (est_size  35732 fbgn_fbtr_fbpp) True)
  (= 
    (est_size  35107 dmel_human_orthologs_disease) True)
  (= 
    (est_size  32530 fbgn_uniprot) True)
  (= 
    (est_size  32143 best_gene_summary) True)
  (= 
    (est_size  27827 receives_synaptic_input_in_region) True)
  (= 
    (est_size  27370 automated_gene_summaries) True)
  (= 
    (est_size  26750 disease_model_annotations) True)
  (= 
    (est_size  22453 dmel_unique_protein_isoforms) True)
  (= 
    (est_size  20392 sends_synaptic_output_to_region) True)
  (= 
    (est_size  20322 gene_genetic_interactions) True)
  (= 
    (est_size  17901 fbgn_annotation_ID) True)
  (= 
    (est_size  17748 gene_rpkm_matrix) True)
  (= 
    (est_size  14139 part_of) True)
  (= 
    (est_size  13986 gene_snapshots) True)
  (= 
    (est_size  13394 seq) True)
  (= 
    (est_size  12497 fbgn_exons2affy1_overlaps) True)
  (= 
    (est_size  13746 fbgn_exons2affy2_overlaps) True)
  (= 
    (est_size  10958 gene_group) True)
  (= 
    (est_size  5680 has_synaptic_IO_in) True)
  (= 
    (est_size  3969 Dmel_enzyme) True)
  (= 
    (est_size  3120 regulates) True)
  (= 
    (est_size  2704 negatively_regulates) True)
  (= 
    (est_size  2692 positively_regulates) True)
  (= 
    (est_size  2126 has_soma_location) True)
  (= 
    (est_size  1941 overlaps) True)
  (= 
    (est_size  1744 develops_from) True)
  (= 
    (est_size  1711 gene_groups_HGNC) True)
  (= 
    (est_size  1149 sends_synaptic_output_to_cell) True)
  (= 
    (est_size  993 pathway_group) True)
  (= 
    (est_size  738 receives_synaptic_input_from_neuron) True)
  (= 
    (est_size  706 fasciculates_with) True)
  (= 
    (est_size  601 cyto-genetic-seq) True)
  (= 
    (est_size  572 has_sensory_dendrite_in) True)
  (= 
    (est_size  526 continuous_with) True)
  (= 
    (est_size  464 gene_functional_complementation) True)
  (= 
    (est_size  311 synapsed_via_type_Ib_bouton_to) True)
  (= 
    (est_size  287 innervates) True)
  (= 
    (est_size  239 immediately_preceded_by) True)
  (= 
    (est_size  229 has_fasciculating_neuron_projection) True)
  (= 
    (est_size  200 synapsed_via_type_II_bouton_to) True)
  (= 
    (est_size  186 receives_synaptic_input_throughout) True)
  (= 
    (est_size  185 substage_of) True)
  (= 
    (est_size  165 has_quality) True)
  (= 
    (est_size  156 has_part) True)
  (= 
    (est_size  151 def) True)
  (= 
    (est_size  148 synapsed_via_type_Is_bouton_to) True)
  (= 
    (est_size  126 attached_to) True)
  (= 
    (est_size  100 subsetdef) True)
  (= 
    (est_size  89 receives_input_from) True)
  (= 
    (est_size  88 disjoint_from) True)
  (= 
    (est_size  74 sends_synaptic_output_throughout) True)
  (= 
    (est_size  68 develops_into) True)
  (= 
    (est_size  64 derives_from) True)
  (= 
    (est_size  30 has_origin) True)
  (= 
    (est_size  30 electrically_synapsed_to) True)
  (= 
    (est_size  23 develops_directly_from) True)
  (= 
    (est_size  20 attached_to_part_of) True)
  (= 
    (est_size  18 synonymtypedef) True)
  (= 
    (est_size  17 innervated_by) True)
  (= 
    (est_size  14 synapsed_via_type_III_bouton_to) True)
  (= 
    (est_size  11 has_synaptic_IO_throughout) True)
  (= 
    (est_size  9 transitive_over) True)
  (= 
    (est_size  8 composed_primarily_of) True)
  (= 
    (est_size  7 transcribed_to) True)
  (= 
    (est_size  7 inverse_of) True)
  (= 
    (est_size  6 conditionality) True)
  (= 
    (est_size  6 adjacent_to) True)
  (= 
    (est_size  4 non_functional_homolog_of) True)
  (= 
    (est_size  3 xref) True)
  (= 
    (est_size  3 variant_of) True)
  (= 
    (est_size  3 member_of) True)
  (= 
    (est_size  3 develops_from_part_of) True)
  (= 
    (est_size  3 contains) True)
  (= 
    (est_size  3 RO) True)
  (= 
    (est_size  2 connected_to) True)
  (= 
    (est_size  1 transcribed_from) True)
  (= 
    (est_size  1 guided_by) True)
; SQL

  (= 
    (sql_est_size  248392753 feature_relationship) True)
  (= 
    (sql_est_size  141933326 dbxrefprop) True)
  (= 
    (sql_est_size  98464501 featureloc) True)
  (= 
    (sql_est_size  92616769 feature) True)
  (= 
    (sql_est_size  78909674 analysisfeature) True)
  (= 
    (sql_est_size  61025741 feature_dbxref) True)
  (= 
    (sql_est_size  53031862 library_featureprop) True)
  (= 
    (sql_est_size  39950319 dbxref) True)
  (= 
    (sql_est_size  27923221 library_feature) True)
  (= 
    (sql_est_size  23805221 feature_relationshipprop) True)
  (= 
    (sql_est_size  21279999 featureprop) True)
  (= 
    (sql_est_size  7474185 feature_synonym) True)
  (= 
    (sql_est_size  6554427 synonym) True)
  (= 
    (sql_est_size  5578280 feature_pub) True)
  (= 
    (sql_est_size  5341100 featureprop_pub) True)
  (= 
    (sql_est_size  4865118 feature_relationship_pub) True)
  (= 
    (sql_est_size  2813405 feature_interactionprop) True)
  (= 
    (sql_est_size  2464355 feature_cvterm) True)
  (= 
    (sql_est_size  1950807 feature_cvtermprop) True)
  (= 
    (sql_est_size  1377258 feature_interaction) True)
  (= 
    (sql_est_size  1116490 feature_genotype) True)
  (= 
    (sql_est_size  888210 pubprop) True)
  (= 
    (sql_est_size  734870 featureloc_pub) True)
  (= 
    (sql_est_size  688734 pubauthor) True)
  (= 
    (sql_est_size  518569 genotype_synonym) True)
  (= 
    (sql_est_size  495848 genotype) True)
  (= 
    (sql_est_size  491538 feature_pubprop) True)
  (= 
    (sql_est_size  466209 phenstatement) True)
  (= 
    (sql_est_size  413338 pub_dbxref) True)
  (= 
    (sql_est_size  382054 genotype_dbxref) True)
  (= 
    (sql_est_size  351942 phendesc) True)
  (= 
    (sql_est_size  277992 phenotype_comparison_cvterm) True)
  (= 
    (sql_est_size  254298 feature_expressionprop) True)
  (= 
    (sql_est_size  252544 phenotype_comparison) True)
  (= 
    (sql_est_size  251928 pub) True)
  (= 
    (sql_est_size  242344 pub_relationship) True)
  (= 
    (sql_est_size  227406 feature_expression) True)
  (= 
    (sql_est_size  213360 cvterm_relationship) True)
  (= 
    (sql_est_size  212142 cvterm_dbxref) True)
  (= 
    (sql_est_size  209164 interaction_cvterm) True)
  (= 
    (sql_est_size  195000 cvtermsynonym) True)
  (= 
    (sql_est_size  180311 expression_cvterm) True)
  (= 
    (sql_est_size  167582 update_track) True)
  (= 
    (sql_est_size  150401 feature_relationshipprop_pub) True)
  (= 
    (sql_est_size  149855 stockcollection_stock) True)
  (= 
    (sql_est_size  149855 stock) True)
  (= 
    (sql_est_size  149835 stock_genotype) True)
  (= 
    (sql_est_size  146846 interactionprop) True)
  (= 
    (sql_est_size  122004 interaction_group) True)
  (= 
    (sql_est_size  119611 feature_interaction_pub) True)
  (= 
    (sql_est_size  112784 interaction_pub) True)
  (= 
    (sql_est_size  112781 interaction) True)
  (= 
    (sql_est_size  101687 interaction_group_feature_interaction) True)
  (= 
    (sql_est_size  96405 feature_grpmember_pub) True)
  (= 
    (sql_est_size  94765 cvterm) True)
  (= 
    (sql_est_size  79466 expression_cvtermprop) True)
  (= 
    (sql_est_size  74873 interactionprop_pub) True)
  (= 
    (sql_est_size  73828 library_interaction) True)
  (= 
    (sql_est_size  57144 organism) True)
  (= 
    (sql_est_size  48730 humanhealthprop) True)
  (= 
    (sql_est_size  41075 feature_grpmember) True)
  (= 
    (sql_est_size  36960 expression) True)
  (= 
    (sql_est_size  23565 library_cvterm) True)
  (= 
    (sql_est_size  23483 library_cvtermprop) True)
  (= 
    (sql_est_size  21251 cvtermprop) True)
  (= 
    (sql_est_size  19797 libraryprop) True)
  (= 
    (sql_est_size  18396 phenotype) True)
  (= 
    (sql_est_size  17871 phenotype_cvterm) True)
  (= 
    (sql_est_size  16617 humanhealth_dbxrefprop) True)
  (= 
    (sql_est_size  16529 interaction_expressionprop) True)
  (= 
    (sql_est_size  16318 humanhealth_pub) True)
  (= 
    (sql_est_size  15400 library_synonym) True)
  (= 
    (sql_est_size  15355 humanhealth_dbxref) True)
  (= 
    (sql_est_size  15142 cell_line_feature) True)
  (= 
    (sql_est_size  14972 libraryprop_pub) True)
  (= 
    (sql_est_size  13694 interaction_expression) True)
  (= 
    (sql_est_size  13218 interaction_cell_line) True)
  (= 
    (sql_est_size  10720 library_pub) True)
  (= 
    (sql_est_size  9870 library_relationship) True)
  (= 
    (sql_est_size  9851 humanhealthprop_pub) True)
  (= 
    (sql_est_size  9558 library_dbxref) True)
  (= 
    (sql_est_size  8339 library_relationship_pub) True)
  (= 
    (sql_est_size  7095 grp_pub) True)
  (= 
    (sql_est_size  6719 cell_line_pub) True)
  (= 
    (sql_est_size  6657 grp_relationship) True)
  (= 
    (sql_est_size  6605 strain_synonym) True)
  (= 
    (sql_est_size  5990 grp_synonym) True)
  (= 
    (sql_est_size  5947 humanhealth_synonym) True)
  (= 
    (sql_est_size  5785 strainprop) True)
  (= 
    (sql_est_size  5783 strainprop_pub) True)
  (= 
    (sql_est_size  5769 library) True)
  (= 
    (sql_est_size  5543 grp_cvterm) True)
  (= 
    (sql_est_size  5444 cell_line_synonym) True)
  (= 
    (sql_est_size  5277 library_expression) True)
  (= 
    (sql_est_size  5187 grpprop) True)
  (= 
    (sql_est_size  5159 grpmember) True)
  (= 
    (sql_est_size  4469 humanhealth_dbxrefprop_pub) True)
  (= 
    (sql_est_size  4450 library_expressionprop) True)
  (= 
    (sql_est_size  4415 grpprop_pub) True)
  (= 
    (sql_est_size  4319 stock_cvterm) True)
  (= 
    (sql_est_size  3832 library_dbxrefprop) True)
  (= 
    (sql_est_size  3829 grpmemberprop) True)
  (= 
    (sql_est_size  3777 genotype_cvterm) True)
  (= 
    (sql_est_size  3744 humanhealth_featureprop) True)
  (= 
    (sql_est_size  3721 library_strainprop) True)
  (= 
    (sql_est_size  3721 library_strain) True)
  (= 
    (sql_est_size  3625 humanhealth_feature) True)
  (= 
    (sql_est_size  2641 grp_dbxref) True)
  (= 
    (sql_est_size  2263 humanhealth_relationship) True)
  (= 
    (sql_est_size  2220 humanhealth_relationship_pub) True)
  (= 
    (sql_est_size  2093 strain_pub) True)
  (= 
    (sql_est_size  2010 grp_relationship_pub) True)
  (= 
    (sql_est_size  1939 strain_cvtermprop) True)
  (= 
    (sql_est_size  1939 strain_cvterm) True)
  (= 
    (sql_est_size  1814 grp) True)
  (= 
    (sql_est_size  1777 strain_dbxref) True)
  (= 
    (sql_est_size  1776 strain) True)
  (= 
    (sql_est_size  1739 organism_dbxref) True)
  (= 
    (sql_est_size  1643 feature_humanhealth_dbxref) True)
  (= 
    (sql_est_size  1540 humanhealth_cvtermprop) True)
  (= 
    (sql_est_size  1540 humanhealth_cvterm) True)
  (= 
    (sql_est_size  1515 humanhealth) True)
  (= 
    (sql_est_size  1300 cell_lineprop_pub) True)
  (= 
    (sql_est_size  1291 cell_lineprop) True)
  (= 
    (sql_est_size  1215 cell_line_dbxref) True)
  (= 
    (sql_est_size  1198 cell_line_libraryprop) True)
  (= 
    (sql_est_size  1081 cell_line_library) True)
  (= 
    (sql_est_size  1013 organism_pub) True)
  (= 
    (sql_est_size  821 organismprop) True)
  (= 
    (sql_est_size  731 organismprop_pub) True)
  (= 
    (sql_est_size  714 cell_line_cvterm) True)
  (= 
    (sql_est_size  518 db) True)
  (= 
    (sql_est_size  435 strain_relationship_pub) True)
  (= 
    (sql_est_size  435 strain_relationship) True)
  (= 
    (sql_est_size  320 cell_line) True)
  (= 
    (sql_est_size  308 analysis) True)
  (= 
    (sql_est_size  238 stockprop) True)
  (= 
    (sql_est_size  171 cell_line_relationship) True)
  (= 
    (sql_est_size  139 strain_featureprop) True)
  (= 
    (sql_est_size  139 strain_feature) True)
  (= 
    (sql_est_size  107 strain_phenotypeprop) True)
  (= 
    (sql_est_size  96 humanhealth_pubprop) True)
  (= 
    (sql_est_size  73 cell_line_cvtermprop) True)
  (= 
    (sql_est_size  71 cv) True)
  (= 
    (sql_est_size  54 strain_phenotype) True)
  (= 
    (sql_est_size  40 environment) True)
  (= 
    (sql_est_size  27 stockcollectionprop) True)
  (= 
    (sql_est_size  26 contact) True)
  (= 
    (sql_est_size  18 environment_cvterm) True)
  (= 
    (sql_est_size  11 organism_library) True)
  (= 
    (sql_est_size  7 stockcollection) True)
  (= 
    (sql_est_size  1 lock) True)
  (= 
    (sql_est_size  0 analysisgrp) True)
  (= 
    (sql_est_size  0 analysisgrpmember) True)
  (= 
    (sql_est_size  0 analysisprop) True)
  (= 
    (sql_est_size  0 audit_chado) True)
  (= 
    (sql_est_size  0 cell_line_strain) True)
  (= 
    (sql_est_size  0 cell_line_strainprop) True)
  (= 
    (sql_est_size  0 cvtermpath) True)
  (= 
    (sql_est_size  0 eimage) True)
  (= 
    (sql_est_size  0 expression_image) True)
  (= 
    (sql_est_size  0 expression_pub) True)
  (= 
    (sql_est_size  0 expressionprop) True)
  (= 
    (sql_est_size  0 feature_cvterm_dbxref) True)
  (= 
    (sql_est_size  0 feature_phenotype) True)
  (= 
    (sql_est_size  0 featuremap) True)
  (= 
    (sql_est_size  0 featuremap_pub) True)
  (= 
    (sql_est_size  0 featurepos) True)
  (= 
    (sql_est_size  0 featurerange) True)
  (= 
    (sql_est_size  0 genotype_cvtermprop) True)
  (= 
    (sql_est_size  0 genotype_pub) True)
  (= 
    (sql_est_size  0 genotypeprop) True)
  (= 
    (sql_est_size  0 genotypeprop_pub) True)
  (= 
    (sql_est_size  0 grp_pubprop) True)
  (= 
    (sql_est_size  0 grp_relationshipprop) True)
  (= 
    (sql_est_size  0 grpmember_cvterm) True)
  (= 
    (sql_est_size  0 grpmember_pub) True)
  (= 
    (sql_est_size  0 grpmemberprop_pub) True)
  (= 
    (sql_est_size  0 humanhealth_phenotype) True)
  (= 
    (sql_est_size  0 humanhealth_phenotypeprop) True)
  (= 
    (sql_est_size  0 interaction_cvtermprop) True)
  (= 
    (sql_est_size  0 library_grpmember) True)
  (= 
    (sql_est_size  0 library_humanhealth) True)
  (= 
    (sql_est_size  0 library_humanhealthprop) True)
  (= 
    (sql_est_size  0 organism_cvterm) True)
  (= 
    (sql_est_size  0 organism_cvtermprop) True)
  (= 
    (sql_est_size  0 organism_grpmember) True)
  (= 
    (sql_est_size  0 project) True)
  (= 
    (sql_est_size  0 stock_dbxref) True)
  (= 
    (sql_est_size  0 stock_pub) True)
  (= 
    (sql_est_size  0 stock_relationship) True)
  (= 
    (sql_est_size  0 stock_relationship_pub) True)
  (= 
    (sql_est_size  0 stockprop_pub) True)
  (= 
    (sql_est_size  0 tableinfo) True)


  (= 
    (est-size-loaded $N 
      (/ $F $A)) 
    (, 
      (fb-pred-major $F $A) 
      (metta-stats $F $A $N)))


  (= 
    (fb-pred-major $F $A) 
    (fb-pred-m $F $A))
  (= 
    (fb-pred-major $F $A) 
    (, 
      (fb-pred-nr $F $A) 
      (not (fb-pred-m $F $A)) 
      (not (, (fb-pred $F $A2) (> $A2 $A)))))


  (= 
    (fb_pred_m  fbgn_exons2affy1_overlaps 2) True)
  (= 
    (fb_pred_m  fbgn_exons2affy2_overlaps 2) True)


  (= 
    (print-loaded-from-files) 
    (, 
      (findall 
        (print-est-size loaded-from-file $N $F) 
        (is-loaded-from-file-count $F $N) $L) 
      (sort $L $S) 
      (reverse $S $R) 
      (maplist call $R) 
      (print-est-sizes)))


  (= 
    (fb-info) 
    (, 
      (print-loaded-from-files) 
      (fb-stats)))


  (= 
    (fb-show) 
    (, 
      (print-loaded-from-files) 
      (fb-stats)))


  (= 
    (print-est-sizes) 
    (, 
      (findall 
        (print-est-size est-size-loaded $N $F) 
        (est-size-loaded $N $F) $L) 
      (sort $L $S) 
      (reverse $S $R) 
      (maplist call $R)))


  (= 
    (print-est-size $F $N1 $S) 
    (, 
      (number $S) 
      (not (number $N1)) 
      (set-det) 
      (print-est-size $F $S $N1)))
  (= 
    (print-est-size $F $N1 $S) 
    (, 
      (format '~N (~q ~@ ~q) ' 
        (:: $F 
          (pad-number $N1 15) $S)) 
      (set-det)))

; pad_number(Number, N) pads Number with spaces to occupy N spaces in total
; and includes underscores as the thousand separator.

  (= 
    (pad-number $Number $N) 
    (, 
      (sformat $S "~t~D~*|" 
        (:: $Number $N)) 
      (symbolic-list-concat $L , $S) 
      (symbolic-list-concat $L - $SS) 
      (write $SS)))


; Process a file or directory path with a given predicate.

  (= 
    (with-wild-path $Fnicate $Dir) 
    (, 
      (extreme-debug (fbug (with-wild-path $Fnicate $Dir))) 
      (fail)))
  (= 
    (with-wild-path $Fnicate Nil) 
    (set-det))
  (= 
    (with-wild-path $Fnicate $Dir) 
    (, 
      (is-scryer) 
      (symbol $Dir) 
      (set-det) 
      (must-det-ll (, (path-chars $Dir $Chars) (with-wild-path $Fnicate $Chars)))))
  (= 
    (with-wild-path $Fnicate $Chars) 
    (, 
      (not is-scryer) 
      (not (symbol $Chars)) 
      (set-det) 
      (must-det-ll (, (name $Atom $Chars) (with-wild-path $Fnicate $Atom)))))
  (= 
    (with-wild-path $Fnicate $File) 
    (, 
      (exists-file $File) 
      (set-det) 
      (must-det-ll (call $Fnicate $File))))
  (= 
    (with-wild-path $Fnicate $File) 
    (, 
      (set-det) 
      (with-wild-path-swi $Fnicate $File)))
  (= 
    (with-wild-path $Fnicate $Dir) 
    (, 
      (exists-directory $Dir) 
      (set-det) 
      (must-det-ll (, (directory-files $Dir $Files) (maplist (directory-file-path $Dir $Files) $Paths) (maplist path-chars $Paths $CharPaths) (maplist (with-wild-path $Fnicate) $CharPaths))) 
      (set-det)))
  (= 
    (with-wild-path $Fnicate $File) 
    (, 
      (is-list $File) 
      (set-det) 
      (must-det-ll (maplist (with-wild-path $Fnicate) $File))))
  (= 
    (with-wild-path $Fnicate $File) 
    (must-det-ll (call $Fnicate $File)))


  (= 
    (path-chars $A $C) 
    (symbol-chars $A $C))


  (= 
    (with-wild-path-swi $Fnicate $File) 
    (, 
      (compound $File) 
      (absolute-file-name $File $Dir 
        (:: 
          (access read) 
          (file-errors fail) 
          (file-type directory))) 
      (\=@= $Dir $File) 
      (set-det) 
      (with-wild-path $Fnicate $Dir)))
  (= 
    (with-wild-path-swi $Fnicate $File) 
    (, 
      (compound $File) 
      (set-det) 
      (absolute-file-name $File $Dir 
        (:: 
          (access read) 
          (file-errors fail) 
          (file-type (:: csv tsv '')))) 
      (\=@= $Dir $File) 
      (set-det) 
      (with-wild-path $Fnicate $Dir)))
  (= 
    (with-wild-path-swi $Fnicate $File) 
    (, 
      (symbol-contains $File *) 
      (expand-file-name $File $List) 
      (set-det) 
      (maplist 
        (with-wild-path $Fnicate) $List)))
  (= 
    (with-wild-path-swi $Fnicate $File) 
    (, 
      (exists-directory $File) 
      (directory-file-path $File *.*sv $Wildcard) 
      (expand-file-name $Wildcard $List) 
      (set-det) 
      (maplist $Fnicate $List)))



  (dynamic (/ fix-columns-nth 2))

  (= 
    (needs-fixed $X $Y) 
    (, 
      (if-then-else 
        (var $X) 
        (fb-arg $X) True) 
      (fix-concept $X $L) 
      (\=@= $L 
        (:: $X)) 
      (\=@= $L $X) 
      (if-then-else 
        (= $L 
          (:: $Y)) True 
        (= $Y $L))))

  (= 
    (mine-args-that-need-reduced) 
    (, 
      (writeln 


=====


)     (forall 
        (needs-fixed $X $Y) 
        (, 
          (pp-as (needs-fixed (if-then $X $Y))) 
          (fix-columns-with-arg $X))) 
      (listing fix-columns-nth)))


  (= 
    (fix-columns-with-arg $Arg) 
    (forall 
      (fb-arg-table-n $Arg $Fn $N) 
      (fix-columns-n $Fn $N)))

  (= 
    (fix-columns-n $Fn $N) 
    (assert-new (fix-columns-nth $Fn $N)))



  (= 
    (load-fb-mask $Filename) 
    (, 
      (is-scryer) 
      (symbol $Filename) 
      (name $Filename $Chars) 
      (set-det) 
      (load-fb-mask $Chars)))
  (= 
    (load-fb-mask $Filename) 
    (, 
      (expand-file-name $Filename $Files1) 
      (maplist load-fb-cache $Files1)))

  (= 
    (load-fb-cache $File) 
    (with-wild-path load-fb-cache0 $File))

  (= 
    (load-fb-cache0 $RFile) 
    (, 
      (absolute-file-name $RFile $File) 
      (file-name-extension $Name $E $File) 
      (symbolic-list-concat 
        (:: $Pub $Table) . $Name) 
      (symbolic-list-concat 
        (:: $Pub $Table qlf) . $OutputFile) 
      (set-det) 
      (load-fb-cache $File $OutputFile $Table)))
  (= 
    (load-fb-cache0 $File) 
    (, 
      (file-name-extension $Name $E $File) 
      (symbolic-list-concat 
        (:: $Table) . $Name) 
      (symbolic-list-concat 
        (:: $Table qlf) . $OutputFile) 
      (load-fb-cache $File $OutputFile $Table)))

; ============================================================================
;  LOAD FB Files
; ============================================================================

  (= 
    (track-load-into-file $RelFilename $Goal) 
    (, 
      (must-det-ll (absolute-file-name $RelFilename $Filename)) 
      (must-det-ll (track-load-into-file0 $Filename $Goal)) 
      (set-det)))


  (= 
    (track-load-into-file0 $Filename $Goal) 
    (, 
      (nb-current tracking-file $FilenameW) 
      (== $Filename $FilenameW) 
      (set-det) 
      (call $Goal)))
  (= 
    (track-load-into-file0 $Filename $Goal) 
    (, 
      (must-det-ll (, (nb-setval tracking-file $Filename) (start-html-of $Filename) (fbug (track-load-into-file $Filename)) (flag loaded-from-file-count $Was 0))) 
      (must-det-ll (with-option loading-file $Filename (time (must-det-ll $Goal)))) 
      (must-det-ll (, (flag loaded-from-file-count $New $Was) (if-then-else (or (> $New 0) (not (is-loaded-from-file-count $Filename $_))) (add-atom  &self (is_loaded_from_file_count  $Filename $New)) True) (fbug (= $Filename $New)) (rename-tmp-files $Filename) (save-html-of $Filename))) 
      (set-det)))


  (= 
    (rename-tmp-files $Filename) 
    (, 
      (not is-converting) 
      (set-det)))
  (= 
    (rename-tmp-files $Filename) 
    (, 
      (rename-tmp-files $Filename .metta) 
      (rename-tmp-files $Filename .metta.datalog)))

  (= 
    (rename-tmp-files $Filename $NonTmp) 
    (, 
      (atomic-list-concat 
        (:: $Filename $NonTmp .tmp) $From) 
      (atomic-list-concat 
        (:: $Filename $NonTmp) $To) 
      (fbug (rename-file $From $To)) 
      (ignore (, (exists-file $From) (rename-file $From $To)))))


  (dynamic (/ is-loaded-from-file-count 2))

  (use-module (library (/ http json)))
  (ensure-loaded flybase-json)

  (= 
    (load-fb-json $Fn $File) 
    (, 
      (fbug (load-fb-json $Fn $File)) 
      (current-predicate (/ load-flybase-json 2)) 
      (absolute-file-name $File $Filename) 
      (track-load-into-file $Filename 
        (load-flybase-json $Fn $File))))

  (= 
    (load-fb-json $Fn $File) 
    (, 
      (fbug (load-fb-json $Fn $File)) 
      (setup-call-cleanup 
        (open $File read $In 
          (:: (encoding utf8))) 
        (with_self  
          (json) 
          (json-read $In $Term Nil)) 
        (close $In)) 
      (time (add-atom  &self (saved_fb_json  $File $Term $Fn)))))


; ==============================
; GFF/GTF/GFF3 Reader
; ==============================


  (= 
    (load-fb-gff $Fn $Filename) 
    (track-load-into-file $Filename 
      (must-det-ll (, (fbug (load-fb-gff $Fn $Filename)) (directory-file-path $Directory $BaseName $Filename) (file-name-extension $Id $_ $BaseName) (= $Type SequenceFile) (assert-OBO (id-type $Id $Type)) (assert-OBO (pathname $Id $Filename)) (set-det) (assert-OBO (basename $Id $BaseName)) (set-det) (assert-OBO (directory $Id $Directory)) (set-det) (setup-call-cleanup (open $Filename read $In) (, (repeat) (load-fb-gff-read $Id $In)) (close $In))))))
 ; Main predicate to parse a GFF line and store it as facts

  (= 
    (load-fb-gff-read $Fn $In) 
    (, 
      (or 
        (at-end-of-stream $In) reached-file-max) 
      (set-det)))
  (= 
    (load-fb-gff-read $Fn $In) 
    (, 
      (read-line-to-string $In $Line) 
      (load-fb-gff-line $Fn $Line) 
      (set-det) 
      (fail)))


  (= 
    (load-fb-gff-line $Fn $Line) 
    (, 
      (split-string $Line " \t" " \t" 
        (:: ##sequence-region $SeqID $StartStr $EndStr)) 
      (atom-number $StartStr $Start) 
      (atom-number $EndStr $End) 
      (set-det) 
      (assert-MeTTa (genomic-sequence-region $Fn $SeqID $Start $End)))); Predicate to process a line starting with ##sequence-region

  (= 
    (load-fb-gff-line $Fn $Line) 
    (, 
      (split-string $Line " \t" " \t" 
        (Cons  ##gff-version $_)) 
      (set-det)))
  (= 
    (load-fb-gff-line $Fn $Line) 
    (, 
      (string-concat # $_ $Line) 
      (set-det)))
  (= 
    (load-fb-gff-line $Fn $Line) 
    (, 
      (split-string $Line "\t" "" 
        (Cons  $SeqID 
          (Cons  $Source 
            (Cons  $Type 
              (Cons  $StartStr 
                (Cons  $EndStr 
                  (Cons  $ScoreStr 
                    (Cons  $Strand 
                      (Cons  $Phase $MoreProps))))))))) 
      (atom-number $StartStr $Start) 
      (atom-number $EndStr $End) 
      (store-gff-fact $Fn $SeqID "source" $Source) 
      (store-gff-fact $Fn $SeqID "type" $Type) 
      (store-gff-fact $Fn $SeqID "start" $Start) 
      (store-gff-fact $Fn $SeqID "end" $End) 
      (store-gff-fact $Fn $SeqID "score" $ScoreStr) 
      (store-gff-fact $Fn $SeqID "strand" $Strand) 
      (store-gff-fact $Fn $SeqID "phase" $Phase) 
      (parse-and-store-attributes $SeqID $MoreProps)))
  (= 
    (load-fb-gff-line $Fn $Line) 
    (fbug (load-fb-gff-line $Fn $Line)))
; Predicate to store each field as a fact

  (= 
    (store-gff-fact $Fn $SeqID $Key $Value) 
    (, 
      (\= $Value ".") 
      (assert-MeTTa (genomic-sequence-feature $Fn $SeqID $Key $Value))))
; Predicate to handle the attributes field

  (= 
    (parse-and-store-attributes $Fn $SeqID 
      (Cons  $AttributesStr $_)) 
    (, 
      (split-string $AttributesStr ";" "" $AttrList) 
      (maplist 
        (parse-and-store-attribute $Fn $SeqID) $AttrList)))
; Parse individual attribute and store it

  (= 
    (parse-and-store-attribute $Fn $SeqID $AttrStr) 
    (, 
      (if-then-else 
        (split-string $AttrStr "=" "\"" 
          (:: $Key $Value)) True 
        (split-string $AttrStr " " "\"" 
          (Cons  $Key $Value))) 
      (store-gff-fact $Fn $SeqID $Key $Value)))

  (= 
    (load-fb-fa $Fn $Filename) 
    (track-load-into-file $Filename 
      (must-det-ll (, (fbug (load-fb-fa $Fn $Filename)) (directory-file-path $Directory $BaseName $Filename) (file-name-extension $Id $_ $BaseName) (= $Type SequenceFile) (assert-OBO (id-type $Id $Type)) (assert-OBO (pathname $Id $Filename)) (set-det) (assert-OBO (basename $Id $BaseName)) (set-det) (assert-OBO (directory $Id $Directory)) (set-det) (setup-call-cleanup (open $Filename read $In) (load-fb-fa-read $Id $In $_ 0) (close $In))))))/*

find . \( -name "*.fa" -o -name "*.gff" -o -name "*.json" \) -execdir bash -c 'for file; do metta_pattern="${file;.*}"*metta*; full_path="$(pwd)/$file"; if compgen -G "$metta_pattern" > /dev/null; then true; else echo "Metta file does not exist for $full_path"; fi; done' bash {} \; | sort -r

find .  ! -name "*.metta" - -execdir bash -c 'for file; do metta_pattern="${file;.*}"*metta*; full_path="$(pwd)/$file"; if compgen -G "$metta_pattern" > /dev/null; then true; else echo "Metta file does not exist for $full_path"; fi; done' bash {} \; | sort -r

find . \( -name "*.fa" -o -name "*.gff" -o -name "*.json" \) -execdir bash -c 'for file; do metta_pattern="${file;.*}"*datalog*; full_path="$(pwd)/$file"; if compgen -G "$metta_pattern" > /dev/null; then true; else echo "Datalog file does not exist for $full_path"; fi; done' bash {} \; | sort -r

*/
; ==============================
; FA/FASTA Reader
; ==============================


  (= 
    (load-fb-fa-read $Fn $In $_ $_) 
    (, 
      (or 
        (at-end-of-stream $In) reached-file-max) 
      (set-det)))
  (= 
    (load-fb-fa-read $Fn $In $FBTe $At) 
    (, 
      (read-line-to-string $In $Str) 
      (load-fb-fa-read-str $Fn $In $FBTe $Str $At)))


  (= 
    (load-fb-fa-read-str $Fn $In $_ $Str $_) 
    (, 
      (string-concat > $Line $Str) 
      (set-det) 
      (split-string $Line " \t" " \t" 
        (Cons  $FBTe $Props)) 
      (set-det) 
      (parse-and-store-attributes $FBTe $Props) 
      (load-fb-fa-read $Fn $In $FBTe 0)))

  (= 
    (load-fb-fa-read-str $Fn $In $FBTe $Str $From) 
    (, 
      (atom-chars $Str $Chars) 
      (=.. $Data 
        (:: fasta-sequence $Fn $FBTe $From $Chars)) 
      (assert-MeTTa $Data) 
      (set-det) 
      (length $Chars $Plus) 
      (is $At 
        (+ $From $Plus)) 
      (load-fb-fa-read $Fn $In $FBTe $At)))


  (= 
    (maybe-sample $Fn $Args) 
    (, 
      (not should-sample) 
      (set-det)))
  (= 
    (maybe-sample $Fn $Args) 
    (assert-arg-samples $Fn 1 $Args))


  (dynamic (/ fb-arg 1))
  (dynamic (/ fb-arg-table-n 3))

  (= 
    (assert-arg-table-n $A $Fn $N) 
    (, 
      (assert-new (fb-arg $A)) 
      (assert-new (fb-arg-table-n $A $Fn $N))))


  (= 
    (assert-arg-samples $Fn $N 
      (Cons  $A $Args)) 
    (, 
      (if-then-else 
        (dont-sample $A) True 
        (assert-arg-table-n $A $Fn $N)) 
      (is $N2 
        (+ $N 1)) 
      (assert-arg-samples $Fn $N2 $Args)))
  (= 
    (assert_arg_samples  $_ $_ $_) True)


  (= 
    (dont-sample $N) 
    (not (symbol $N)))  
  (= 
    (dont_sample  '') True) 
  (= 
    (dont_sample  -) True)


  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbolic-list-concat $List / $X) 
      (\== $List Nil) 
      (\= $List 
        (:: $_)) 
      (set-det) 
      (last $List $L) 
      (data-pred0 $L $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbol-concat $YY .tsv $X) 
      (set-det) 
      (data-pred0 $YY $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbol-concat $YY .fb $X) 
      (set-det) 
      (data-pred0 $YY $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbol-concat $YY - $X) 
      (set-det) 
      (data-pred0 $YY $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbol-concat $YY -fb $X) 
      (set-det) 
      (data-pred0 $YY $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbol-concat public. $YY $X) 
      (set-det) 
      (data-pred0 $YY $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbolic-list-concat $L . $X) 
      (= $L 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (symbolic-list-concat $L - $XL) 
      (set-det) 
      (data-pred0 $XL $Y)))
;data_pred0(X,Y):- symbolic_list_concat([L,_|_],'_fb_2',X),!,data_pred0(L,Y).
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbolic-list-concat $L -fb-0 $X) 
      (= $L 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (symbolic-list-concat $L -fb- $XL) 
      (set-det) 
      (data-pred0 $XL $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbolic-list-concat $L -fb-1 $X) 
      (= $L 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (symbolic-list-concat $L -fb- $XL) 
      (set-det) 
      (data-pred0 $XL $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbolic-list-concat $L -fb-2 $X) 
      (= $L 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (symbolic-list-concat $L -fb- $XL) 
      (set-det) 
      (data-pred0 $XL $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbolic-list-concat $L -fb-3 $X) 
      (= $L 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (symbolic-list-concat $L -fb- $XL) 
      (set-det) 
      (data-pred0 $XL $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbolic-list-concat $L -fb-4 $X) 
      (= $L 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (symbolic-list-concat $L -fb- $XL) 
      (set-det) 
      (data-pred0 $XL $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbolic-list-concat $L -fb-5 $X) 
      (= $L 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (symbolic-list-concat $L -fb- $XL) 
      (set-det) 
      (data-pred0 $XL $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbolic-list-concat $L -fb-6 $X) 
      (= $L 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (symbolic-list-concat $L -fb- $XL) 
      (set-det) 
      (data-pred0 $XL $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbolic-list-concat $L -fb-7 $X) 
      (= $L 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (symbolic-list-concat $L -fb- $XL) 
      (set-det) 
      (data-pred0 $XL $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbolic-list-concat $L -fb-8 $X) 
      (= $L 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (symbolic-list-concat $L -fb- $XL) 
      (set-det) 
      (data-pred0 $XL $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbolic-list-concat $L -fb-9 $X) 
      (= $L 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (symbolic-list-concat $L -fb- $XL) 
      (set-det) 
      (data-pred0 $XL $Y)))
  (= 
    (data-pred0 $X $Y) 
    (, 
      (symbolic-list-concat $L -fb-- $X) 
      (= $L 
        (Cons  $_ 
          (Cons  $_ $_))) 
      (symbolic-list-concat $L -fb- $XL) 
      (set-det) 
      (data-pred0 $XL $Y)))
;data_pred0(X,Y):- symbolic_list_concat(List,'_',X),once(not_trimmed_path(List,NewList)),
;  NewList\==[],NewList\==List,symbolic_list_concat(NewList,'_',Y),!.
  (= 
    (data_pred0  $X $X) True)


  (= 
    (data-pred $X $Y) 
    (, 
      (data-pred0 $X $Y) 
      (\== $Y '') 
      (set-det)))
  (= 
    (data_pred  $X $X) True)


;file_to_sep(_File,9).

  (= 
    (file_to_sep  csv ,) True)
  (= 
    (file_to_sep  tsv 	) True)
  (= 
    (file_to_sep  metta_x 	) True)
  (= 
    (file-to-sep $File $Sep) 
    (, 
      (file-name-extension $_ $Ext $File) 
      (get-atoms  &self 
        (= 
          (file_to_sep  $Ext $Sep) true)) 
      (set-det)))
  (= 
    (file_to_sep  $_ 	) True)


  (= 
    (is-swipl) 
    (not is-scryer))


  (if is-scryer)

  (= 
    (read-line-to-chars $S $L) 
    (, 
      (is-scryer) 
      (set-det) 
      (get-line-to-chars $S $L Nil)))

  (endif)

  (= 
    (read-line-to-chars $S $L) 
    (, 
      (read-line-to-string $S $Str) 
      (string-chars $Str $L)))


; Assert a given term if no variant of it already exists in the database.
; Usage: fb_assert(+Term).

  (= 
    (fb-assert $Term) 
    (, 
      (if-then-else 
        (= $Term 
          (= $Head $Body)) 
        (copy-term $Body $CopiedBody) 
        (, 
          (= $Head $Term) 
          (= $CopiedBody True))) 
      (copy-term $Head $CopiedHead) 
      (if-then-else 
        (not (, (get-atoms  &self (= $CopiedHead $CopiedBody)) (variant $CopiedHead $Head))) 
        (assertz $Term) True))); Check if Term is a rule (Head :- Body) or a fact (just Head).
; Copy the Head to generate a new term with fresh variables.
; If no variant of CopiedHead exists in the database with the same body,
; assert Term; otherwise, succeed without asserting Term.



  (dynamic (/ done-reading 1))


  (= use_metta_x 
    (empty))


  (= 
    (load-fb-cache $File $OutputFile $Fn) 
    (, 
      (exists-file $OutputFile) 
      (set-det) 
      (ensure-loaded $OutputFile) 
      (set-det)))
  (= 
    (load-fb-cache $File $OutputFile $Fn) 
    (load-files 
      (:: $File) 
      (:: (qcompile large))))



  (= 
    (load-flybase-tiny) 
    (load-flybase 20000))

  (= 
    (load-flybase-full) 
    (load-flybase 1000000000000000000000000000000000000000000000))

  (= 
    (save-flybase-full) 
    (, 
      (load-flybase-full) 
      (qsave-program)))


  (= 
    (load-flybase $N) 
    (, 
      (if-then-else 
        (number $N) True 
        (== $N inf)) 
      (set-det) 
      (with-option 
        (:: (= max-per-file $N)) 
        (, 
          (option-value max-per-file $Max) 
          (write (= max-per-file $Max)) 
          (load-flybase)))))
  (= 
    (load-flybase $File) 
    (, 
      (file-name-extension $_ $Ext $File) 
      (set-det) 
      (load-flybase $File $Ext)))


  (export (/ load-flybase 1))
  (with_self  
    (system) 
    (import (/ load-flybase 1)))


  (= 
    (load-flybase $File $Ext) 
    (, 
      (with-wild-path 
        (load-flybase0 $Ext) $File) 
      (set-det)))



  (= 
    (exists-with-ext $File $Ext) 
    (, 
      (atom-concat $File $Ext $Res) 
      (exists-file $Res) 
      (set-det)))


  (= 
    (load-flybase0 $Ext $File) 
    (, 
      (== $Ext '') 
      (file-name-extension $_ $Ext2 $File) 
      (\== $Ext2 '') 
      (set-det) 
      (load-flybase0 $Ext2 $File)))
  (= 
    (load-flybase0 $Ext $File) 
    (, 
      (== $Ext pl) 
      (set-det)))
  (= 
    (load-flybase0 $Ext $File) 
    (, 
      (== $Ext metta) 
      (is-converting) 
      (set-det)))
  (= 
    (load-flybase0 $Ext $File) 
    (, 
      (== $Ext datalog) 
      (is-converting) 
      (set-det)))
  (= 
    (load-flybase0 $Ext $File) 
    (, 
      (is-converting) 
      (exists-with-ext $File .metta) 
      (or 
        (exists-with-ext $File .datalog) 
        (exists-with-ext $File .metta.datalog)) 
      (set-det)))
  (= 
    (load-flybase0 $Ext $File) 
    (must-det-ll (, (file-name-extension $Name $_ $File) (data-pred $Name $Fn) (load-flybase $Ext $File $Fn))))


  (dynamic (/ load-state 2))
;load_flybase(_Ext,_File,OutputFile,_Fn):- exists_file(OutputFile),size_file(OutputFile,N),N>100,!.

  (= 
    (load-flybase $Ext $File $Fn) 
    (, 
      (load-state $File $_) 
      (set-det)))
  (= 
    (load-flybase $Ext $File $Fn) 
    (must-det-ll (, (add-atom  &self (load_state  $File loading)) (fbug (load-flybase $Ext $File $Fn)) (load-flybase-ext $Ext $File $Fn) (ignore (remove-atom  &self (load_state  $File loading))) (add-atom  &self (load_state  $File loaded)) (fb-stats))))


  (= 
    (load-flybase-ext $Ext $File $Fn) 
    (, 
      (use-metta-x) 
      (atom-concat $File .metta-x $MFile) 
      (exists-file $MFile) 
      (not is-converting) 
      (not (option-value metta-x-files False)) 
      (set-det) 
      (process-metta-x-file $MFile))); Ext \== 'obo',

  (= 
    (load-flybase-ext $Ext $File $Fn) 
    (, 
      (fail) 
      (atom-concat $File .metta $MFile) 
      (exists-file $MFile) 
      (not is-converting) 
      (not (option-value mettafiles False)) 
      (set-det) 
      (load-flybase-metta $MFile))); Ext \== 'obo',

  (= 
    (load-flybase-ext $Ext $File $Fn) 
    (, 
      (== $Ext obo) 
      (current-predicate (/ load-obo 1)) 
      (set-det) 
      (load-obo $File)))
  (= 
    (load-flybase-ext $Ext $File $Fn) 
    (, 
      (== $Ext scm) 
      (include-atomspace-1-0 $File)))
  (= 
    (load-flybase-ext $Ext $File $Fn) 
    (, 
      (== $Ext json) 
      (set-det) 
      (load-fb-json $Fn $File) 
      (set-det)))
  (= 
    (load-flybase-ext $Ext $File $Fn) 
    (, 
      (== $Ext gff) 
      (set-det) 
      (load-fb-gff $Fn $File) 
      (set-det)))
  (= 
    (load-flybase-ext $Ext $File $Fn) 
    (, 
      (== $Ext gff3) 
      (set-det) 
      (load-fb-gff $Fn $File) 
      (set-det)))
  (= 
    (load-flybase-ext $Ext $File $Fn) 
    (, 
      (== $Ext fa) 
      (set-det) 
      (load-fb-fa $Fn $File) 
      (set-det)))
  (= 
    (load-flybase-ext $Ext $File $Fn) 
    (, 
      (== $Ext fasta) 
      (set-det) 
      (load-fb-fa $Fn $File) 
      (set-det)))
  (= 
    (load-flybase-ext $Ext $File $Fn) 
    (, 
      (== $Ext metta) 
      (current-predicate (/ load-metta 2)) 
      (set-det) 
      (load-flybase-metta $File)))
  (= 
    (load-flybase-ext $Ext $File $Fn) 
    (, 
      (file-to-sep $Ext $Sep) 
      (set-det) 
      (track-load-into-file $File 
        (setup-call-cleanup 
          (open $File read $Stream) 
          (must-det-ll (load-flybase-sv $Sep $File $Stream $Fn)) 
          (close $Stream))) 
      (set-det)))
  (= 
    (load-flybase-ext $Ext $File $Fn) 
    (, 
      (fbug (missed-loading-flybase $Ext $File $Fn)) 
      (set-det)))

;load_flybase_metta(File):- !, load_metta('&flybase',File).

  (= 
    (load-flybase-metta $File) 
    (with-option trace-on-load False 
      (with-option current-self &flybase 
        (include-atomspace-1-0 $File))))

  (= 
    (include-atomspace-1-0 $RelFilename) 
    (, 
      (absolute-file-name $RelFilename $Filename) 
      (track-load-into-file $Filename 
        (must-det-ll (, (atom $RelFilename) (current-self $Self) (exists-file $RelFilename) (set-det) (must-det-ll (setup-call-cleanup (open $Filename read $In (:: (encoding utf8))) (, (directory-file-path $Directory $_ $Filename) (add-atom  &self (metta_file  $Self $Filename $Directory)) (with-cwd $Directory (must-det-ll (load-atomspace-1-0-file-stream $Filename $Self $In)))) (close $In))))))))/*
   (EvaluationLink
    (PredicateNode "has_name")
    (ListLink
        (DiseaseOntologyNode "DOID:0001816")
        (ConceptNode "angiosarcoma")))


                  load_metta('&flybase',File)).
*/



  (= 
    (load-atomspace-1-0-file-stream $Filename $Self $In) 
    (, 
      (once (if-then-else (, (is-file-stream-and-size $In $Size) (> $Size 102400)) (= $P2 read-sform2) (= $P2 read-metta))) 
      (set-det) 
      (with-option loading-file $Filename 
        (, 
          (must-det-ll (, (set-exec-num $Filename 1) (set-exec-num $Filename 0))) 
          (once (, (repeat) (current-read-mode $Mode) (once (call $P2 $In $Expr)) (must-det-ll (if-then-else (do-atomspace-1-0 (file $Filename) $Mode $Self $Expr $O) True (pp-m (unknown-do-atomspace-1-0 (file $Filename) $Mode $Self $Expr)))) (flush-output) (at-end-of-stream $In))))) 
      (set-det)));current_exec_file(Filename),
;load_answer_file(Filename),
;write_src(read_atomspace_1_0=Expr),nl,


;  ['InheritanceLink',['DiseaseOntologyNode','DOID:0112326'],['DiseaseOntologyNode','DOID:0050737']]

  (= 
    (do-atomspace-1-0 $W $M $S end-of-file $O) 
    (set-det))
  (= 
    (do-atomspace-1-0 $W $M $S $E $O) 
    (, 
      (rewrite-as10-to-as20 $E $E2 $Extras) 
      (set-det) 
      (maplist 
        (do-atomspace-2-0 $W $M $S) 
        (Cons  $E2 $Extras))))


  (= 
    (do-atomspace-2-0 $W $M $S $E) 
    (, 
      (assert-OBO $E) 
      (set-det))) ; writeq(E),!,nl.


  (= 
    (rewrite-as10-to-as20 $A $A Nil) 
    (not (is-list $A)))
  (= 
    (rewrite-as10-to-as20 
      (:: $CN $Arg) $Arg Nil) 
    (, 
      (= $CN ConceptNode) 
      (set-det)))
  (= 
    (rewrite-as10-to-as20 
      (:: $ConceptNode $Arg1) $Arg 
      (Cons  
        (is-a $Arg $ConceptNode) $R)) 
    (, 
      (atom $ConceptNode) 
      (atom-concat $Concept Node $ConceptNode) 
      (set-det) 
      (rewrite-as10-to-as20 $Arg1 $Arg $R) 
      (set-det)))
  (= 
    (rewrite-as10-to-as20 
      (:: EvaluationLink 
        (:: PredicateNode $Pred) 
        (Cons  ListLink $Args)) $Res 
      (Cons  
        (arity $Pred $Len) 
        (Cons  
          (is-a $Pred Predicate) $ExtrasF))) 
    (, 
      (length $Args $Len) 
      (maplist rewrite-as10-to-as20 $Args $ArgsL $Extras) 
      (flatten $Extras $ExtrasF) 
      (=.. $Res 
        (Cons  $Pred $ArgsL))))


  (= 
    (rewrite-as10-to-as20 
      (Cons  $InheritanceLink $Args) 
      (Cons  $Inheritance $ArgsL) $ExtrasF) 
    (, 
      (atom $InheritanceLink) 
      (atom-concat $Inheritance Link $InheritanceLink) 
      (maplist rewrite-as10-to-as20 $Args $ArgsL $Extras) 
      (flatten $Extras $ExtrasF) 
      (set-det)))

  (= 
    (rewrite_as10_to_as20  $A $A ()) True)


  (= 
    (fix-list-args $_ $_ $Y $Y) 
    (, 
      (option-value early-canon Nil) 
      (not should-sample) 
      (set-det)))
;fix_list_args(_Fn,_ArgTypes,[X],[X]):- !.
  (= 
    (fix-list-args $Fn $ArgTypes $Args $NewArgs) 
    (must-det-ll (, (primary-term $Fn $ArgTypes $Args $Term $NewArgTypes) (fix-elist-args $Term $Fn 1 $NewArgTypes $Args $NewArgs) (extreme-debug (ignore (, (\== $Args $NewArgs) (fbug $NewArgs)))))))
  (= 
    (fix-list-args $Fn $ArgTypes $Args $Args) 
    (set-det))


  (= 
    (primary-term $Fn 
      (Cons  $N $ArgTypes) $Args $Term $ArgTypes) 
    (, 
      (number $N) 
      (set-det)))
  (= 
    (primary-term $Fn 
      (Cons  $N $ArgTypes) $Args $Term $ArgTypes) 
    (, 
      (number $N) 
      (set-det) 
      (nth1 $N $Args $Term)))
  (= 
    (primary-term $Fn $ArgTypes $Args $Term $ArgTypes) 
    (set-det))
  (= 
    (primary-term $Fn $ArgTypes $Args $Term $NewArgTypes) 
    (, 
      (append $L 
        (Cons  
          (primary $Name) $R) $ArgTypes) 
      (append $L 
        (Cons  $Name $R) $NewArgTypes) 
      (length $L $N) 
      (nth0 $N $Args $Term)))
  (= 
    (primary-term $Fn $ArgTypes $Args $Term $ArgTypes) 
    (, 
      (primary-column $Fn $Name) 
      (nth1 $N $ArgTypes $Name) 
      (set-det) 
      (nth1 $N $Args $Term) 
      (set-det)))
  (= 
    (primary-term $Fn $ArgTypes 
      (Cons  $Term $_) $Term $ArgTypes) 
    (set-det))
  (= 
    (primary_term  $Fn $ArgTypes $Args $Term $ArgTypes) True)


  (= 
    (fix-elist-args $Term $Fn $N 
      (Cons  $Nth $ArgTypes) $Args $NewArgs) 
    (, 
      (number $Nth) 
      (set-det) 
      (fix-elist-args $Term $Fn $N $ArgTypes $Args $NewArgs)))
  (= 
    (fix-elist-args $Term $Fn $N 
      (Cons  $Type $ArgTypes) 
      (Cons  $Concept $Args) 
      (Cons  $Arg $NewArgs)) 
    (, 
      (set-det) 
      (must-det-ll (, (adjust-type $Term $Fn $N $Type $Concept $Arg) (is $N2 (+ $N 1)) (fix-elist-args $Term $Fn $N2 $ArgTypes $Args $NewArgs)))))
  (= 
    (fix_elist_args  $Term $Fn $N $_ $X $X) True)


  (= 
    (adjust-type $Term $Fn $N 
      (listOf $Type) $Arg $NewL) 
    (must-det-ll (, (nonvar $Type) (as-list Nil $Arg $New) (is-list $New) (maplist (adjust-type $Term $Fn $N $Type) $New $NewL))))
  (= 
    (adjust-type $Term $Fn $N 
      (listOf $Type $Seps) $Arg $NewL) 
    (must-det-ll (, (nonvar $Type) (as-list $Seps $Arg $New) (is-list $New) (maplist (adjust-type $Term $Fn $N $Type) $New $NewL))))
  (= 
    (adjust-type $Term $Fn $N $Type $Concept $Arg) 
    (, 
      (numeric-value-p-n $Fn $N $_) 
      (set-det) 
      (must-det-ll (, (if-then-else (into-number $Concept $Arg) True (= $Concept $Arg)) (assert-type-of $Term $Fn $N $Type $Arg)))))
  (= 
    (adjust-type $Term $Fn $N $Type $Concept $Arg) 
    (must-det-ll (, (fix-concept $Concept $Arg) (assert-type-of $Term $Fn $N $Type $Arg))))
  (= 
    (adjust_type  $Term $Fn $N $_ $X $X) True)


  (= 
    (into-number $Concept $Arg) 
    (, 
      (number $Concept) 
      (set-det) 
      (= $Arg $Concept)))
  (= 
    (into-number $Concept $Arg) 
    (, 
      (symbol-number $Concept $Arg) 
      (set-det)))
  (= 
    (into-number $Concept $Arg) 
    (, 
      (= $Concept $Arg) 
      (set-det)))


  (dynamic (/ fb-arg 1))
  (dynamic (/ fb-arg-table-n 3))

  (= 
    (assert-type-of $Term $Fn $N $Type $Arg) 
    (, 
      (not should-sample) 
      (set-det)))
  (= 
    (assert-type-of $Term $Fn $N $Type $Arg) 
    (, 
      (is-list $Arg) 
      (set-det) 
      (maplist 
        (assert-type-of $Term $Fn $N $Type) $Arg)))
  (= 
    (assert-type-of $Term $Fn $N $Type $Arg) 
    (must-det-ll (, (assert-new (fb-arg $Arg)) (assert-new (fb-arg-table-n $Arg $Fn $N)))))


  (dynamic (/ fb-arg-type 1))
  (dynamic (/ table-n-type 3))

  (= 
    (add-table-n-types $Fn $_ $ArgTypes) 
    (, 
      (not (is-list $ArgTypes)) 
      (set-det)))
  (= 
    (add-table-n-types $Fn 1 
      (Cons  $N $ArgTypes)) 
    (, 
      (number $N) 
      (set-det) 
      (add-table-n-types $Fn 1 $ArgTypes)))
  (= 
    (add-table-n-types $Fn $N 
      (Cons  $Type $ArgTypes)) 
    (, 
      (set-det) 
      (sub-term $Sub $Type) 
      (symbol $Sub) 
      (set-det) 
      (assert-new (fb-arg-type $Sub)) 
      (assert-new (table-n-type $Fn $N $Sub)) 
      (is $N2 
        (+ $N 1)) 
      (add-table-n-types $Fn $N2 $ArgTypes) 
      (set-det)))
  (= 
    (add_table_n_types  $Fn $_ ()) True)


  (= 
    (is-concept $Arg) 
    (fb-arg $Arg))

  (= 
    (is-concept-type $Type) 
    (fb-arg-type $Type))


  (= 
    (arg-table-n-type $Arg $Fn $N $Type) 
    (, 
      (table-n-type $Fn $N $Type) 
      (once (, (fb-pred $Fn $A) (functor $G $Fn $A) (arg $N $G $Arg) (call $G) (not (is-list $Arg)) (not (as-list $Arg Nil))))))


  (= 
    (is-valuesymbol $Fn $N $Type) 
    (, 
      (arg-table-n-type $Arg $Fn $N $Type) 
      (symbol-number $Arg $_)))


  (dynamic (/ numeric-value-p-n 3))

  (= 
    (fis-valuesymbol $PNList $Len) 
    (, 
      (findall 
        (- $P $N) 
        (is-valuesymbol $P $N $Type) $PNList) 
      (length $PNList $Len)))


  (= 
    (save-value-symbol-cols) 
    (, 
      (for-all 
        (is-valuesymbol $Fn $N $Type) 
        (assert-new (numeric-value-p-n $Fn $N $Type))) 
      (listing (/ numeric-value-p-n 3))))



  (= 
    (write-flybase-data $ArgTypes $Fn Nil) 
    (set-det))/*
load_flybase_chars(Sep,File,Stream,Chars,OutputStream,Fn):-
  flag(loaded_from_file_count,_,0),
  ignore(once((table_columns(File,Header);table_columns(Fn,Header)))),
  fix_header_names(Fn,Header,ArgTypes),
  for_all((table_columns(File,ColInfo),ArgTypes\==ColInfo),pp_fb(odd_table_columns(File,ColInfo))),
  for_all((table_columns(Fn,ColInfo),ArgTypes\==ColInfo),pp_fb(odd_table_columns(Fn,ColInfo))),
  if_t(is_list(ArgTypes),set_option_value(fb_argtypes,ArgTypes)),
  time((repeat,
  read_line_to_chars(Stream, Chars),
    once(load_flybase_chars(Sep,File,Stream,Chars,OutputStream,Fn)),
  once(done_reading(File);reached_file_max;at_end_of_stream(Stream)),!,
    once(end_fb_file_data(File,Stream,Fn,OutputStream)),
  loaded_from_file_count(X),!,
  fb_stats(Fn),
  pl_stats(File,X))).

write_flybase_data(_OutputStream,_Fn,[]):-!.
write_flybase_data(_OutputStream,_Fn,['']):-!.
write_flybase_data(_OutputStream,Fn,DataL):- assert_MeTTa(Fn,DataL).

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

  (= 
    (write-flybase-data $ArgTypes $Fn 
      (:: '')) 
    (set-det))
  (= 
    (write-flybase-data $ArgTypes $Fn 
      (:: $_)) 
    (set-det))
  (= 
    (write-flybase-data $ArgTypes $Fn $DataL0) 
    (, 
      (maplist fast-column $DataL0 $DataL) 
      (set-det) 
      (=.. $Data 
        (Cons  $Fn $DataL)) 
      (assert-MeTTa $Data)))
;write_flybase_data(_ArgTypes,Fn,DataL):- into_datum(Fn,DataL,Data), assert_OBO(Data).



  (= 
    (make-assertion $Fn $Cols $NewData $OldData) 
    (, 
      (set-det) 
      (make-assertion4 $Fn $Cols $NewData $OldData)))/*

assert_MeTTa(Data):- Data=..[Fn|DataL],assert_MeTTa(Fn,DataL),!.

assert_MeTTa(Fn,DataL0):-
  make_assertion(Fn,DataL0,Data,OldData),
  ignore((
    heartbeat,
    functor(Data,F,A), A>=2,
   decl_fb_pred(F,A),
    flag(loaded_from_file_count,X,X+1),
    flag(total_loaded_symbols,TA,TA+1),
    assert(Data),
    ignore((((has_list(_ArgTypes)->(X<23,X>20); (X<13,X>10)); (X>0,(0 is X rem 1_000_000),fb_stats)),nl,nl,fbug(X=Data),ignore((OldData\==DataL0,fbug(oldData=OldData))))),
    ignore((fail,catch_ignore(ignore((X<1000,must_det_ll((write_canonical(OutputStream,Data),writeln(OutputStream,'.')))))))))),!.
 */


  (= 
    (make-assertion $Fn $DataL0 $Data $DataL0) 
    (must-det-ll (, (into-datum $Fn $DataL0 $Data0) (=.. $Data0 (Cons  $F $Args)) (= $Args $DataL) (=.. $Data (Cons  $F $DataL)))))

  (= 
    (make-assertion $ArgTypes $Fn $DataL0 $Data $DataL0) 
    (must-det-ll (, (into-datum $Fn $DataL0 $Data0) (=.. $Data0 (Cons  $F $Args)) (skip (if-t (var $ArgTypes) (must-det-ll (once (, (length $Args $Len) (length $ArgTypes $Len) (once (or (table-columns $Fn $ArgTypes) (table-columns $F $ArgTypes)))))))) (fix-list-args $Fn $ArgTypes $Args $DataL) (=.. $Data (Cons  $F $DataL)))))


; FBcv_0000743 ; "FBtp0000743 ;CL:0000743 ; WBPhenotype_0000743
;reprefix(['GO_','GO--','FBgn','BiologicalProcess:GO:'],'GO:').

  (= 
    (reprefix  
      (GO_ GO-- BiologicalProcess:GO:) GO:) True)
  (= 
    (reprefix  
      (flybase: FLYBASE: comment:) '') True)
  (= 
    (reprefix  
      (FBpp:) FBpp) True)
  (= 
    (reprefix  
      (FBgn:) FBgn) True)
  (= 
    (reprefix  
      (FB:FB) FB) True)
;./KBs/SUMO-OBO/gene-merged-SUMO.kif
;#
;FBbt_00051628=


  (= 
    (as-list $A $New) 
    (, 
      (is-list $A) 
      (set-det) 
      (= $A $New)))
  (= 
    (as-list $N 
      (:: $N)) 
    (, 
      (not (symbol $N)) 
      (not (string $N)) 
      (set-det)))
;as_list(A,New):- var(A),!,New = [A].
  (= 
    (as_list  - ()) True) 
  (= 
    (as_list  "-" ()) True) 
  (= 
    (as_list  '' ()) True)
  (= 
    (as_list  "" ()) True) 
  (= 
    (as_list  ' ' ()) True) 
  (= 
    (as_list  " " ()) True)
;as_list(N,[N]):- !.
  (= 
    (as-list $_ $S $O) 
    (, 
      (as-list $S $O) 
      (set-det)))
  (= 
    (as-list $SepL $A $List) 
    (, 
      (member $Sep $SepL) 
      (catch-ignore (symbolic-list-concat $List $Sep $A)) 
      (\= $List 
        (:: $_)) 
      (set-det)))
  (= 
    (as-list Nil $A $ListO) 
    (, 
      (member $Sep 
        (:: | , or)) 
      (catch-ignore (symbolic-list-concat $List $Sep $A)) 
      (\= $List 
        (:: $_)) 
      (set-det) 
      (maplist fix-concept $List $ListO)))
  (= 
    (as_list  $Sep $A 
      ($A)) True)

  (= 
    (has-list $Header) 
    (, 
      (is-list $Header) 
      (member 
        (listOf $_) $Header)))

; FBcv_0000743 ; "FBtp0000743 ;CL:0000743 ; WBPhenotype_0000743

; =======================================
; Fix Concept1
; =======================================


  (= 
    (fix-concept1 $A $L) 
    (, 
      (as-list 
        (:: |) $A $L) 
      (\=@= $L 
        (:: $A)) 
      (\=@= $A $L)))
  (= 
    (fix-concept1 $A $N) 
    (, 
      (symbol-number $A $N) 
      (set-det)))
;fix_concept1(A,AO):- reprefix(List,To),member(E,List),symbol_concat(E,AM,A),symbol_concat(To,AM,AO).
;fix_concept1(A,AO):- symbol_concat('FB',_,A),symbolic_list_concat([Type,Number],':',A),!,symbol_concat(Type,Number,AO).
  (= 
    (fix-concept1 $A $AO) 
    (, 
      (symbol-concat " $Mid $A) 
      (symbol-concat $AS " $Mid) 
      (symbol-string $AS $AO)))
  (= 
    (fix-concept1 $A $AO) 
    (, 
      (symbol-concat $AO '(gene name)' $A) 
      (\== $AO '')))

  (= 
    (fix-concept1 $A $N) 
    (, 
      (symbol $A) 
      (set-det) 
      (= $N $A)))
;fix_concept(S,A):- number_string(A,S),!.


; =======================================
; Fix Concept
; =======================================


  (= 
    (fix-concept $A $New) 
    (, 
      (is-list $A) 
      (set-det) 
      (maplist fix-concept $A $L) 
      (set-det) 
      (= $New $L)))
  (= 
    (fix-concept $A $New) 
    (, 
      (not (symbol $A)) 
      (set-det) 
      (= $New $A)))
  (= 
    (fix-concept $S $O) 
    (, 
      (once (fix-concept1 $S $M)) 
      (\=@= $S $M) 
      (set-det) 
      (fix-concept $M $O)))
  (= 
    (fix-concept $A $New) 
    (, 
      (= $A $New) 
      (set-det)))



  (= 
    (fix_columns_nth  genome-cyto-seq 1) True)
  (= 
    (fix_columns_nth  genome-cyto-seq 2) True)
  (= 
    (fix_columns_nth  genome-cyto-seq 3) True)
  (= 
    (fix_columns_nth  allele_genetic_interactions 3) True)
  (= 
    (fix_columns_nth  dmel_human_orthologs_disease 6) True)
  (= 
    (fix_columns_nth  dmel_human_orthologs_disease 7) True)
  (= 
    (fix_columns_nth  dmel_paralogs 10) True)
  (= 
    (fix_columns_nth  dmel_paralogs 11) True)
  (= 
    (fix_columns_nth  dmel_paralogs 5) True)
  (= 
    (fix_columns_nth  dmel_paralogs 8) True)
  (= 
    (fix_columns_nth  entity_publication 4) True)
  (= 
    (fix_columns_nth  fbgn_NAseq_Uniprot 7) True)
  (= 
    (fix_columns_nth  fbrf_pmid_pmcid_doi 2) True)
  (= 
    (fix_columns_nth  gene_genetic_interactions 1) True)
  (= 
    (fix_columns_nth  gene_genetic_interactions 2) True)
  (= 
    (fix_columns_nth  gene_genetic_interactions 3) True)
  (= 
    (fix_columns_nth  gene_genetic_interactions 4) True)
  (= 
    (fix_columns_nth  gene_groups_HGNC 4) True)
  (= 
    (fix_columns_nth  gene_rpkm_matrix $_) True)
  (= 
    (fix_columns_nth  gene_rpkm_report 10) True)
  (= 
    (fix_columns_nth  gene_rpkm_report 11) True)
  (= 
    (fix_columns_nth  gene_rpkm_report 8) True)
  (= 
    (fix_columns_nth  gene_rpkm_report 9) True)
  (= 
    (fix_columns_nth  gene_snapshots 4) True)
  (= 
    (fix_columns_nth  genotype_phenotype 5) True)
  (= 
    (fix_columns_nth  genotype_phenotype 6) True)
  (= 
    (fix_columns_nth  gp_information 9) True)
  (= 
    (fix_columns_nth  insertion_mapping 5) True)
  (= 
    (fix_columns_nth  insertion_mapping 6) True)
  (= 
    (fix_columns_nth  physical_interactions_mitab $_) True)
  (= 
    (fix_columns_nth  pmid_fbgn_uniprot 2) True)
  (= 
    (fix_columns_nth  stocks 7) True)
  (= 
    (fix_columns_nth  synonym 5) True)
  (= 
    (fix_columns_nth  synonym 6) True)
  (= 
    (fix_columns_nth  transposon_sequence_set 4) True)
  (= 
    (fix_columns_nth  transposon_sequence_set 5) True)
  (= 
    (fix_columns_nth  transposon_sequence_set 8) True)




  (discontiguous (/ column-description 4))
  (discontiguous (/ primary-column 2))
  (discontiguous (/ column-names 2))
  (discontiguous (/ file-location 2))



; 466_896_429
; Descriptions for allele_genetic_interactions columns
; Descriptions for genotype_phenotype_data columns
; For the file allele_genetic_interactions_*.tsv
; For the file genotype_phenotype_data_*.tsv




  (= 
    (load-flybase $Sep $File $Stream $Fn) 
    (must-det-ll (, (symbolic-list-concat (:: data $Fn) - $Fn0) (data-pred $Fn0 $Fn) (load-flybase-sv $Sep $File $Stream $Fn))));ignore(swi_only(format(":- ~q.\n",[encoding(utf8)]))),


; Sep,File,Stream,OutputStream,Fn

  (= 
    (load-flybase-sv $Sep $File $Stream $Fn) 
    (, 
      (at-end-of-stream $Stream) 
      (set-det) 
      (once (load-fb-data $ArgTypes $File $Stream $Fn $Sep end-of-file))))

  (= 
    (load-flybase-sv $Sep $File $Stream $Fn) 
    (, 
      (must-det-ll (, (flag loaded-from-file-count $_ 0) (ignore (once (or (table-columns $File $Header) (table-columns $Fn $Header)))) (fix-header-names $Fn $Header $ArgTypes) (forall (, (table-columns $File $ColInfo) (\== $ArgTypes $ColInfo)) (pp-fb (odd-table-columns $File $ColInfo))) (forall (, (table-columns $Fn $ColInfo) (\== $ArgTypes $ColInfo)) (pp-fb (odd-table-columns $Fn $ColInfo))) (if-then-else (, (primary-column $Fn $Name) (nth1 $N $ArgTypes $Name)) (= $NArgTypes (Cons  $N $ArgTypes)) (= $NArgTypes (Cons  1 $ArgTypes))) (if-t (is-list $ArgTypes) (add-table-n-types $Fn 1 $ArgTypes)) (ground $NArgTypes) (if-t (is-list $ArgTypes) (ignore (, (length $ArgTypes $A) (decl-fb-pred $Fn $A)))) (time (, (repeat) (read-line-to-chars $Stream $Chars) (once (load-flybase-chars $NArgTypes $File $Stream $Fn $Sep $Chars)) (once (or reached-file-max (or (done-reading $File) (at-end-of-stream $Stream)))) (set-det) (once (load-fb-data $NArgTypes $File $Stream $Fn $Sep end-of-file)))) (loaded-from-file-count $X) (set-det) (metta-stats $Fn) (pl-stats $File $X))) 
      (set-det)))


;save_conversion_data(ArgTypes,Fn,OutputStream,Data):- maplist(write_flybase_data(ArgTypes,ArgTypes,Fn,OutputStream),Data).


  (= 
    (is-really-header-row 
      (Cons  $H $_) $Names) 
    (, 
      (symbol-concat '' $_ $H) 
      (set-det)))


  (= 
    (process-metta-x-file $MXFile) 
    (, 
      (data-pred $MXFile $Fn) 
      (setup-call-cleanup 
        (open $MXFile read $In 
          (:: (encoding utf8))) 
        (, 
          (repeat) 
          (read-line-to-string $In $Chars) 
          (if-then-else 
            (== $In end-of-file) 
            (set-det) 
            (once (, (atomic-list-concat $Row0 	 $Chars) (maplist fast-column $Row0 $Row) (assert-MeTTa (Cons  $Fn $Row)))))) 
        (close $In))))


  (= 
    (fast-column $X $X) 
    (set-det))
  (= 
    (fast-column $X $Y) 
    (, 
      (into-fb-term $X $Y) 
      (set-det)))
  (= 
    (fast_column  $X $X) True)

;read_csv_stream(Sep,CharsStream,Header):- read_string(CharsStream, "\n", "\r\t ",_,)

  (= 
    (read-csv-stream $Sep $CharsStream $Header) 
    (, 
      (read-line-to-string $CharsStream $Chars) 
      (if-then-else 
        (== $Chars end-of-file) 
        (= $Header $Chars) 
        (symbolic-list-concat $Header $Sep $Chars))));  \+ option_value(full_canon,[]),!,

  (= 
    (read-csv-stream $Sep $CharsStream $Header) 
    (, 
      (not (option-value full-canon Nil)) 
      (set-det) 
      (read-line-to-string $CharsStream $Chars) 
      (if-then-else 
        (== $Chars end-of-file) 
        (= $Header $Chars) 
        (split-string $Chars $Sep " \t\n" $Header))))
  (= 
    (read-csv-stream $Sep $CharsStream $Header) 
    (, 
      (name $Sep 
        (:: $SepCode)) 
      (csv-options $CompiledHeaderOptions 
        (:: (separator $SepCode))) 
      (csv-read-row $CharsStream $HeaderRow $CompiledHeaderOptions) 
      (=.. $HeaderRow 
        (Cons  $_ $Header)) 
      (set-det)))


  (= 
    (read-csv $Sep $Chars $Header) 
    (, 
      (not (option-value full-canon Nil)) 
      (set-det) 
      (split-string $Chars $Sep " \t\n" $Header)))
  (= 
    (read-csv $Sep $Chars $Header) 
    (, 
      (open-string $Chars $CharsStream) 
      (read-csv-stream $Sep $CharsStream $Header)))



  (= 
    (attempt-header-row $Sep $Chars $Fn $Header $ArgTypes) 
    (, 
      (read-csv $Sep $Chars $Header) 
      (fix-header-names $Fn $Header $ArgTypes) 
      (set-det)))


  (dynamic (/ t-h-n 3))


  (= 
    (load-flybase-chars $ArgTypes $File $Stream $Fn $Sep $Chars) 
    (, 
      (or 
        (not (member $Sep $Chars)) 
        (or 
          (= 
            (Cons  # 
              (Cons  # 
                (Cons  ' ' $_))) $Chars) 
          (, 
            (ground $ArgTypes) 
            (= 
              (Cons  # $_) $Chars)))) 
      (format "~n ; ~s" 
        (:: $Chars)) 
      (ignore (, (loaded-from-file-count $X) (> $X 2000) (set-det) (add-atom  &self (done_reading  $File))))));writeln(comment(Sep)=Chars),!,


  (= 
    (load-flybase-chars 
      (Cons  $N $ArgTypes) $File $Stream $Fn $Sep $Chars) 
    (, 
      (var $ArgTypes) 
      (member $Sep $Chars) 
      (= 
        (Cons  # $_) $Chars) 
      (format "~n ; Maybe Header: ~s" 
        (:: $Chars)) 
      (attempt-header-row $Sep $Chars $Fn $Header $ArgTypes) 
      (is-really-header-row $Header $ArgTypes) 
      (fbug (t-h-n $Fn $Header $ArgTypes)) 
      (fb-assert (t-h-n $Fn $Header $ArgTypes)) 
      (set-det) 
      (load-fb-data 
        (Cons  $N $ArgTypes) $File $Stream $Fn $Sep is-swipl)))

  (= 
    (load-flybase-chars 
      (Cons  $N $ArgTypes) $File $Stream $Fn $Sep $Chars) 
    (, 
      (is-swipl) 
      (attempt-header-row $Sep $Chars $Fn $Header $_) 
      (write-flybase-data 
        (Cons  $N $ArgTypes) $Fn $Header) 
      (set-det) 
      (load-fb-data 
        (Cons  $N $ArgTypes) $File $Stream $Fn $Sep is-swipl)))



  (= 
    (load-fb-data $ArgTypes $File $Stream $Fn $Sep $Data) 
    (, 
      (or 
        (== $Data end-of-file) 
        (done-reading $File)) 
      (set-det)))

  (= 
    (load-fb-data $ArgTypes $File $Stream $Fn $Sep is-swipl) 
    (, 
      (if-then-else 
        (option-value max-per-file $Max) True 
        (= $Max inf)) 
      (fbug (load-fb-data $ArgTypes $File $Max $Fn $Sep)) 
      (add-table-n-types $Fn 1 $ArgTypes) 
      (set-det) 
      (repeat) 
      (once (read-csv-stream $Sep $Stream $Data)) 
      (loaded-from-file-count $X) 
      (if-then-else 
        (or 
          (== $Data end-of-file) 
          (or reached-file-max 
            (> $X $Max))) 
        (add-atom  &self 
          (done_reading  $File)) 
        (, 
          (once (write-flybase-data $ArgTypes $Fn $Data)) 
          (fail))) 
      (set-det))); \+ option_value(full_canon,[]), !,
; trace,


  (= 
    (load-fb-data $ArgTypes $File $Stream $Fn $Sep is-swipl) 
    (, 
      (set-det) 
      (name $Sep 
        (:: $SepCode)) 
      (csv-options $CompiledOptions 
        (:: (separator $SepCode))) 
      (if-then-else 
        (option-value max-per-file $Max) True 
        (= $Max inf)) 
      (fbug (load-fb-data $ArgTypes $File $Max $Fn $Sep)) 
      (add-table-n-types $Fn 1 $ArgTypes) 
      (set-det) 
      (repeat) 
      (once (csv-read-row $Stream $RData $CompiledOptions)) 
      (loaded-from-file-count $X) 
      (if-then-else 
        (or 
          (== $RData end-of-file) 
          (or reached-file-max 
            (> $X $Max))) 
        (add-atom  &self 
          (done_reading  $File)) 
        (, 
          (=.. $RData 
            (Cons  $_ $Data)) 
          (once (write-flybase-data $ArgTypes $Fn $Data)) 
          (fail))) 
      (set-det)))

; recursion depth 16 million rows
  (= 
    (load-fb-data $ArgTypes $File $Stream $Fn $Sep is-swipl) 
    (, 
      (name $Sep 
        (:: $SepCode)) 
      (csv-options $CompiledOptions 
        (:: 
          (strip True) 
          (convert True) 
          (separator $SepCode))) 
      (if-then-else 
        (option-value max-per-file $Max) True 
        (= $Max inf)) 
      (once (csv-read-row $Stream $RData $CompiledOptions)) 
      (loaded-from-file-count $X) 
      (if-then-else 
        (or 
          (== $RData end-of-file) 
          (> $X $Max)) 
        (add-atom  &self 
          (done_reading  $File)) 
        (, 
          (=.. $RData 
            (Cons  $_ $Data)) 
          (once (write-flybase-data $ArgTypes $Fn $Data)) 
          (load-fb-data $ArgTypes $File $Stream $Fn $Sep is-swipl))) 
      (set-det)))




  (= 
    (column_description  allele_FBal# "Current FlyBase identifier (FBal#) of allele." identifier 'Allele Identifier') True)
  (= 
    (column_description  allele_symbol "Current FlyBase allele symbol." symbol 'Allele Symbol') True)
  (= 
    (column_description  Bin_value "The expression bin classification of this gene in this RNA-Seq experiment, based on RPKM value." numeric 'Expression Bin') True)
  (= 
    (column_description  Cluster_Cell_Type_ID "The FlyBase FBbt ID for the cell type represented by the cell cluster." identifier 'Cell Type') True)
  (= 
    (column_description  Cluster_Cell_Type_Name "The FlyBase name for the cell type represented by the cell cluster." name 'Cell Type Name') True)
  (= 
    (column_description  Cluster_ID "The FlyBase FBlc ID for the dataset representing the cell cluster." identifier 'Cell Cluster') True)
  (= 
    (column_description  Cluster_Name "The FlyBase name for the dataset representing the cell cluster." name 'Cell Cluster Name') True)
  (= 
    (column_description  Clustering_Analysis_ID "The FlyBase FBlc ID for the dataset representing the clustering analysis." identifier Dataset) True)
  (= 
    (column_description  Clustering_Analysis_Name "The FlyBase name for the dataset representing the clustering analysis." name 'Dataset Name') True)
  (= 
    (column_description  Count_used "Indicates if the RPKM expression value was calculated using only the exonic regions unique to the gene and not overlapping exons of other genes (Unique), or, if the RPKM expression value was calculated based on all exons of the gene regardless of overlap with other genes (Total)." category 'Count Type') True)
  (= 
    (column_description  DATASAMPLE_NAME_(DATASET_ID) "Each subsequent column reports the gene RPKM values for the sample listed in the header." matrix 'Expression Matrix') True)
  (= 
    (column_description  FBgn "The unique FlyBase gene ID for this gene." identifier Gene) True)
  (= 
    (column_description  FBgn_id "Unique FlyBase gene ID." identifier Gene) True)
  (= 
    (column_description  FBrf# "Current FlyBase identifer (FBrf#) of publication from which data came." identifier 'Publication Identifier') True)
  (= 
    (column_description  FBrf "Current FlyBase identifer (FBrf) of publication from which data came." identifier 'Publication Identifier') True)
  (= 
    (column_description  FBrf_id "FlyBase reference ID for the publication." identifier Reference) True)
  (= 
    (column_description  Gene_ID "The FlyBase FBgn ID for the expressed gene." identifier Gene) True)
  (= 
    (column_description  Gene_Symbol "The FlyBase symbol for the expressed gene." symbol 'Gene Symbol') True)
  (= 
    (column_description  GeneSymbol "The official FlyBase symbol for this gene." symbol 'Gene Symbol') True)
  (= 
    (column_description  interaction "Interaction information associated with allele." text 'Interaction Info') True)
  (= 
    (column_description  Interaction_type "Type of interaction observed, either 'suppressible' or 'enhanceable'." category 'Interaction Type') True)
  (= 
    (column_description  Mean_Expression "The average level of expression of the gene across all cells of the cluster." numeric 'Expression Level') True)
  (= 
    (column_description  Parent_library_FBlc "The unique FlyBase ID for the dataset project to which the RNA-Seq experiment belongs." identifier 'Dataset Project') True)
  (= 
    (column_description  Parent_library_name "The official FlyBase symbol for the dataset project to which the RNA-Seq experiment belongs." name 'Dataset Project Name') True)
  (= 
    (column_description  phenotype_id "Phenotypic identifier associated with the genotype." identifier 'Phenotype Identifier') True)
  (= 
    (column_description  phenotype_name "Phenotypic name associated with the genotype." name 'Phenotype Name') True)
  (= 
    (column_description  PMID "PubMed ID for the publication." identifier Publication) True)
  (= 
    (column_description  Pub_ID "The FlyBase FBrf ID for the reference in which the expression was reported." identifier Publication) True)
  (= 
    (column_description  Pub_miniref "The FlyBase citation for the publication in which the expression was reported." citation 'Publication Citation') True)
  (= 
    (column_description  Publication_FBrf "Current FlyBase identifier (FBrf) of publication from which the data came." identifier 'Publication Reference') True)
  (= 
    (column_description  reference "Current FlyBase identifer (FBrf#) of publication from which data came." identifier 'Publication Identifier') True)
  (= 
    (column_description  Release_ID "The D. melanogaster annotation set version from which the gene model used in the analysis derives." version 'Annotation Version') True)
  (= 
    (column_description  RNASource_FBlc "The unique FlyBase ID for the RNA-Seq experiment used for RPKM expression calculation." identifier 'RNA-Seq Experiment') True)
  (= 
    (column_description  RNASource_name "The official FlyBase symbol for the RNA-Seq experiment used for RPKM expression calculation." name 'RNA-Seq Experiment Name') True)
  (= 
    (column_description  RPKM_value "The RPKM expression value for the gene in the specified RNA-Seq experiment." numeric 'Expression Value') True)
  (= 
    (column_description  Source_Tissue_Anatomy "The ansymbolical region of the source tissue used for the experiment." category 'Tissue Anatomy') True)
  (= 
    (column_description  Source_Tissue_Sex "The sex of the source tissue used for the experiment." category 'Tissue Sex') True)
  (= 
    (column_description  Source_Tissue_Stage "The life stage of the source tissue used for the experiment." category 'Tissue Stage') True)
  (= 
    (column_description  Spread "The proportion of cells in the cluster in which the gene is detected." proportion 'Expression Spread') True)
  (= 
    (column_description  Total_exon_base_count "The number of bases in all exons of this gene." numeric 'Total Exonic Base Count') True)
  (= 
    (column_description  UniProt_database "Database in UniProt where the protein is listed (either UniProt/TrEMBL or UniProt/Swiss-Prot)." category 'Protein Database') True)
  (= 
    (column_description  UniProt_id "Unique identifier for the protein in UniProt." identifier Protein) True)
  (= 
    (column_description  Unique_exon_base_count "The number of exonic bases unique to the gene (not overlapping exons of other genes)." numeric 'Exonic Base Count') True)
  (= 
    (column_description  allele_FBal "Current FlyBase identifier (FBal) of allele." identifier 'Allele Identifier') True)
  (= 
    (column_description  allele_symbol "Current FlyBase allele symbol." symbol 'Allele Symbol') True)
  (= 
    (column_description  current_fullname "Current full name used in FlyBase for the object." name Name) True)
  (= 
    (column_description  current_symbol "Current symbol used in FlyBase for the object." symbol Symbol) True)
  (= 
    (column_description  gene_fullname "The official full name for this gene." name 'Gene Name') True)
  (= 
    (column_description  gene_primary_id "The unique FlyBase gene ID for this gene." identifier Gene) True)
  (= 
    (column_description  gene_symbol "The official FlyBase symbol for this gene." symbol 'Gene Symbol') True)
  (= 
    (column_description  gene_type "The type of gene." category 'Gene Type') True)
  (= 
    (column_description  interaction "Interaction information associated with allele." text 'Interaction Info') True)
  (= 
    (column_description  
      