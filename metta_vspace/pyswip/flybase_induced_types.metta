










































  (= 
    (linked-mutations $Publication1 $Mutation1 $Publication2 $Mutation2) 
    (, 
      (mutation $M1_id $Mutation1) 
      (mutation-publication $M1_id $MP1_id) 
      (publication $MP1_id $Publication1) 
      (mutation-publication $M2_id $MP2_id) 
      (mutation $M2_id $Mutation2) 
      (publication $MP2_id $Publication2) 
      (\= $M1_id $M2_id) 
      (\= $Mutation1 $Mutation2) 
      (= $MP1_id $MP2_id)))/*
Finding Publications That Link Multiple Mutations
SQL Version:

SELECT P1.title AS Publication1, M1.name AS Mutation1, P2.title AS Publication2, M2.name AS Mutation2
FROM Mutation AS M1
INNER JOIN MutationPublication AS MP1 ON M1.id = MP1.mutation_id
INNER JOIN Publication AS P1 ON MP1.publication_id = P1.id
INNER JOIN MutationPublication AS MP2 ON M1.id != MP2.mutation_id
INNER JOIN Mutation AS M2 ON MP2.mutation_id = M2.id
INNER JOIN Publication AS P2 ON MP2.publication_id = P2.id AND P1.id = P2.id
WHERE M1.name != M2.name
*/



  (= 
    (related-genes-publication $Gene1 $Mutation1 $Gene2 $Mutation2 $Title) 
    (, 
      (gene $G1_id $Gene1 $Function1 $Pathway1) 
      (mutation $M1_id $Mutation1) 
      (mutation-gene $M1_id $G1_id) 
      (mutation-publication $M1_id $MP1_id) 
      (publication $MP1_id $Title) 
      (gene $G2_id $Gene2 $Function2 $Pathway2) 
      (mutation $M2_id $Mutation2) 
      (mutation-gene $M2_id $G2_id) 
      (mutation-publication $M2_id $MP2_id) 
      (publication $MP2_id $Title) 
      (\= $G1_id $G2_id) 
      (or 
        (= $Function1 $Function2) 
        (= $Pathway1 $Pathway2))))/*
 Publications Discussing Mutations in Related Genes
SQL Version:

SELECT G1.name AS Gene1, M1.name AS Mutation1, G2.name AS Gene2, M2.name AS Mutation2, P.title
FROM Gene AS G1
INNER JOIN Mutation AS M1 ON G1.id = M1.gene_id
INNER JOIN MutationPublication AS MP1 ON M1.id = MP1.mutation_id
INNER JOIN Publication AS P ON MP1.publication_id = P.id
INNER JOIN Mutation AS M2 ON P.id IN (SELECT publication_id FROM MutationPublication WHERE mutation_id = M2.id)
INNER JOIN Gene AS G2 ON M2.gene_id = G2.id AND G1.id != G2.id
WHERE G1.function = G2.function OR G1.pathway = G2.pathway
*/



  (= 
    (linked-phenotypes $Publication $Mutation1 $Phenotype1 $Mutation2 $Phenotype2) 
    (, 
      (mutation $M1_id $Mutation1) 
      (mutation-phenotype $M1_id $P1_id) 
      (phenotype $P1_id $Phenotype1) 
      (mutation-publication $M1_id $MP1_id) 
      (publication $MP1_id $Publication) 
      (mutation-publication $M2_id $MP2_id) 
      (mutation $M2_id $Mutation2) 
      (mutation-phenotype $M2_id $P2_id) 
      (phenotype $P2_id $Phenotype2) 
      (publication $MP2_id $Publication) 
      (\= $M1_id $M2_id)))/*

 Publications Linking Phenotypic Effects of Different Mutations
SQL Version:

SELECT M1.name AS Mutation1, P1.description AS Phenotype1, M2.name AS Mutation2, P2.description AS Phenotype2, Pub.title
FROM Mutation AS M1
INNER JOIN Phenotype AS P1 ON M1.phenotype_id = P1.id
INNER JOIN MutationPublication AS MP1 ON M1.id = MP1.mutation_id
INNER JOIN Publication AS Pub ON MP1.publication_id = Pub.id
INNER JOIN MutationPublication AS MP2 ON Pub.id = MP2.publication_id AND MP1.mutation_id != MP2.mutation_id
INNER JOIN Mutation AS M2 ON MP2.mutation_id = M2.id
INNER JOIN Phenotype AS P2 ON M2.phenotype_id = P2.id
*/






  (= 
    (gene-expression-phenotype $GeneName $Tissue $PhenotypeDescription) 
    (, 
      (gene $GeneId $GeneName) 
      (expression $GeneId $Tissue) 
      (= $Tissue 'wing disc') 
      (phenotype $GeneId $PhenotypeDescription) 
      (sub-string $PhenotypeDescription $_ $_ $_ 'wing defects')))/*

 Gene Expression and Phenotypes
SQL Version:


SELECT Gene.name, Expression.tissue, Phenotype.description
FROM Gene
INNER JOIN Expression ON Gene.id = Expression.gene_id
INNER JOIN Phenotype ON Gene.id = Phenotype.gene_id
WHERE Expression.tissue = 'wing disc' AND Phenotype.description LIKE ';wing defects;'
*/



  (= 
    (protein-interaction $ProteinName1 $ProteinName2) 
    (, 
      (protein $Protein1Id $ProteinName1) 
      (= $ProteinName1 protein-of-interest) 
      (interaction $Protein1Id $Protein2Id) 
      (protein $Protein2Id $ProteinName2)))/*
 Protein-Protein Interactions
SQL Version:

SELECT Protein1.name, Protein2.name
FROM Protein AS Protein1
INNER JOIN Interaction ON Protein1.id = Interaction.protein1_id
INNER JOIN Protein AS Protein2 ON Interaction.protein2_id = Protein2.id
WHERE Protein1.name = 'protein_of_interest'
*/



  (= 
    (genetic-modifier $ModifierGeneName $MutationName $PhenotypeDescription) 
    (, 
      (gene $ModifierGeneId $ModifierGeneName) 
      (genetic-interaction $ModifierGeneId $MutationId) 
      (mutation $MutationId $MutationName) 
      (= $MutationName specific-mutation) 
      (phenotype $MutationId $PhenotypeDescription)))/*
 Genetic Modifiers of a Mutation
SQL Version:

SELECT ModifierGene.name, Mutation.name, ModifiedPhenotype.description
FROM Gene AS ModifierGene
INNER JOIN GeneticInteraction ON ModifierGene.id = GeneticInteraction.modifier_gene_id
INNER JOIN Mutation ON GeneticInteraction.mutation_id = Mutation.id
INNER JOIN Phenotype AS ModifiedPhenotype ON Mutation.phenotype_id = ModifiedPhenotype.id
WHERE Mutation.name = 'specific_mutation'
*/



  (= 
    (gene-go-annotation $GeneName $GOTerm $GODescription) 
    (, 
      (gene $GeneId $GeneName) 
      (- fb 
        (member $GeneName 
          (:: gene1 gene2 gene3))) 
      (go-annotation $GeneId $GOTerm $GODescription)))/*
4. Gene Ontology (GO) Annotations
SQL Version:

SELECT Gene.name, GOAnnotation.GO_term, GOAnnotation.description
FROM Gene
INNER JOIN GOAnnotation ON Gene.id = GOAnnotation.gene_id
WHERE Gene.name IN ('gene1', 'gene2', 'gene3')
*/




  (= 
    (gene-allele-disease $GeneName $AlleleName $HumanDisease) 
    (, 
      (gene $GeneId $GeneName) 
      (= $GeneName target-gene-name) 
      (allele $GeneId $AlleleId $AlleleName) 
      (or 
        (disease $AlleleId $HumanDisease) 
        (= $HumanDisease 'No associated disease'))))/*

SELECT Strain.name, StockCenter.name, StockCenter.location
FROM Strain
INNER JOIN StockCenter ON Strain.stock_center_id = StockCenter.id
WHERE Strain.name LIKE ';desired_trait;'
ChatGPT
Translating these SQL queries to MeTTa predicates involves creating a set of MeTTa facts and rules that mimic the structure and logic of the SQL database and queries. Here's how each of these queries can be represented in MeTTa:

 Gene Alleles and Associated Diseases

SELECT Gene.name, Allele.name, Disease.human_disease
FROM Gene
INNER JOIN Allele ON Gene.id = Allele.gene_id
LEFT JOIN Disease ON Allele.disease_id = Disease.id
WHERE Gene.name = 'target_gene_name'
*/



  (= 
    (transcription-factor-regulation $TranscriptionFactorName $TargetGeneName $RegulationType) 
    (, 
      (gene $TranscriptionFactorId $TranscriptionFactorName) 
      (gene-regulation $TranscriptionFactorId $TargetGeneId $RegulationType) 
      (gene $TargetGeneId $TargetGeneName) 
      (= $TargetGeneName specific-target-gene)))/*

 Transcription Factors Regulating a Gene
SQL Version:
SELECT TranscriptionFactor.name, TargetGene.name, Regulation.type
FROM Gene AS TranscriptionFactor
INNER JOIN GeneRegulation AS Regulation ON TranscriptionFactor.id = Regulation.transcription_factor_id
INNER JOIN Gene AS TargetGene ON Regulation.target_gene_id = TargetGene.id
WHERE TargetGene.name = 'specific_target_gene'
*/



  (= 
    (mutation-publication-info $MutationName $Title $Authors) 
    (, 
      (mutation $MutationId $MutationName) 
      (= $MutationName specific-mutation-name) 
      (mutation-publication $MutationId $PublicationId) 
      (publication $PublicationId $Title $Authors)))/*

 Publications Related to a Gene Mutation
SQL Version:

SELECT Mutation.name, Publication.title, Publication.authors
FROM Mutation
INNER JOIN MutationPublication ON Mutation.id = MutationPublication.mutation_id
INNER JOIN Publication ON MutationPublication.publication_id = Publication.id
WHERE Mutation.name = 'specific_mutation_name'
*/



  (= 
    (rnai-knockdown-phenotype $GeneName $RNAiDescription $PhenotypeDescription) 
    (, 
      (gene $GeneId $GeneName) 
      (= $GeneName gene-of-interest) 
      (rnai-experiment $GeneId $RNAiId $RNAiDescription) 
      (phenotype $RNAiId $PhenotypeDescription)))/*

4. RNAi Knockdown Effects on Phenotype
SQL Version:

SELECT Gene.name, RNAiExperiment.description, Phenotype.description
FROM Gene
INNER JOIN RNAiExperiment ON Gene.id = RNAiExperiment.gene_id
INNER JOIN Phenotype ON RNAiExperiment.phenotype_id = Phenotype.id
WHERE Gene.name = 'gene_of_interest'
*/





  (= 
    (stock-center-info $StrainName $StockCenterName $Location) 
    (, 
      (strain $StrainId $StrainName) 
      (sub-string $StrainName $_ $_ $_ desired-trait) 
      (stock-center $StrainId $StockCenterId $StockCenterName $Location)))/*
5. Stock Center Information for Specific Strains

SELECT Strain.name, StockCenter.name, StockCenter.location
FROM Strain
INNER JOIN StockCenter ON Strain.stock_center_id = StockCenter.id
WHERE Strain.name LIKE ';desired_trait;'
*/









  (= 
    (flybase_tables  
      (analysis analysisfeature analysisgrp analysisgrpmember analysisprop audit_chado cell_line cell_line_loaderm cell_line_loadermprop cell_line_dbxref cell_line_feature cell_line_library cell_line_libraryprop cell_line_pub cell_line_relationship cell_line_strain cell_line_strainprop cell_line_synonym cell_lineprop cell_lineprop_pub contact cv loaderm loaderm_dbxref loaderm_relationship loadermpath loadermprop loadermsynonym db dbxref dbxrefprop eimage environment environment_loaderm expression expression_loaderm expression_loadermprop expression_image expression_pub expressionprop feature feature_loaderm feature_loaderm_dbxref feature_loadermprop feature_dbxref feature_expression feature_expressionprop feature_genotype feature_grpmember feature_grpmember_pub feature_humanhealth_dbxref feature_interaction feature_interaction_pub feature_interactionprop feature_phenotype feature_pub feature_pubprop feature_relationship feature_relationship_pub feature_relationshipprop feature_relationshipprop_pub feature_synonym featureloc featureloc_pub featuremap featuremap_pub featurepos featureprop featureprop_pub featurerange genotype genotype_loaderm genotype_loadermprop genotype_dbxref genotype_pub genotype_synonym genotypeprop genotypeprop_pub grp grp_loaderm grp_dbxref grp_pub grp_pubprop grp_relationship grp_relationship_pub grp_relationshipprop grp_synonym grpmember grpmember_loaderm grpmember_pub grpmemberprop grpmemberprop_pub grpprop grpprop_pub humanhealth humanhealth_loaderm humanhealth_loadermprop humanhealth_dbxref humanhealth_dbxrefprop humanhealth_dbxrefprop_pub humanhealth_feature humanhealth_featureprop humanhealth_phenotype humanhealth_phenotypeprop humanhealth_pub humanhealth_pubprop humanhealth_relationship humanhealth_relationship_pub humanhealth_synonym humanhealthprop humanhealthprop_pub interaction interaction_cell_line interaction_loaderm interaction_loadermprop interaction_expression interaction_expressionprop interaction_group interaction_group_feature_interaction interaction_pub interactionprop interactionprop_pub library library_loaderm library_loadermprop library_dbxref library_dbxrefprop library_expression library_expressionprop library_feature library_featureprop library_grpmember library_humanhealth library_humanhealthprop library_interaction library_pub library_relationship library_relationship_pub library_strain library_strainprop library_synonym libraryprop libraryprop_pub lock organism organism_loaderm organism_loadermprop organism_dbxref organism_grpmember organism_library organism_pub organismprop organismprop_pub phendesc phenotype phenotype_comparison phenotype_comparison_loaderm phenotype_loaderm phenstatement project pub pub_dbxref pub_relationship pubauthor pubprop sql_features sql_implementation_info sql_parts sql_sizing stock stock_loaderm stock_dbxref stock_genotype stock_pub stock_relationship stock_relationship_pub stockcollection stockcollection_stock stockcollectionprop stockprop stockprop_pub strain strain_loaderm strain_loadermprop strain_dbxref strain_feature strain_featureprop strain_phenotype strain_phenotypeprop strain_pub strain_relationship strain_relationship_pub strain_synonym strainprop strainprop_pub synonym tableinfo update_track)) True)


  (= 
    (ncRNA_genes_fb_scheme  '
{
        "$schema": "http://json-schema.org/draft-04/schema#",
        "title": "RNAcentral ncRNA object",
        "description": "A sequence to import to RNAcentral. These entries must not be pseudogenes or coding RNA transcripts.",
        "id": "ncrna.json#",
        "type": "object",
        "required": ["primaryId", "taxonId", "soTermId", "sequence", "url"],
        "additionalProperties": false,
        "properties": {
                "primaryId": {
                        "$ref" : "global-id.json#/properties/globalId",
                        "description": "The prefixed primary (MOD) ID for an entity. For internal use, e.g. FLYBASE:FBgn0003301, MGI:87917."
                },
                "taxonId": {
                        "$ref" : "global-id.json#/properties/globalId",
                        "description" : "The NCBI taxonId for the species of the gene entity."
                },
                "soTermId": {
                        "$ref" : "global-id.json#/properties/globalId",
                        "description": "The SO Term that represents as best we can, the bioType, or featureType of the object in the file."
                },
                "ecoTermId": {
                        "$ref" : "global-id.json#/properties/globalId",
                        "description": "The ECO Term that represents the evidence for this sequence having the given SO term."
                },
                "sequence": {
                        "$ref": "sequence.json#properties/sequence",
                        "description": "The DNA sequence of this entry."
                },
                "name": {
                        "type": "string",
                        "description": "The name of this sequence."
                },
                "description": {
                        "type": "string",
                        "description": "An informative human readable description. If not provided then it will be generated using the name and species information."
                },
                "symbol": {
                        "type": "string",
                        "description": "The symbol for this ncRNA"
                },
                "symbolSynonyms": {
                        "type": "array",
                        "items": {
                                "type": "string"
                        },
                        "uniqueItems": true,
                        "description": "A list of other symbols for the ncRNA"
                },
                "version": {
                        "description": "The version of this sequence, if any"
                },
                "gene": {
                        "$ref": "gene.json#"
                },
                "crossReferenceIds": {
                        "description":"Collection holding a limited set (for now) of database cross references for each gene.  That set is defined in geneCrossReferences.json dataSoruce enumeration.  NCBI GENE means just the NCBI Gene reference.  UniProtKB is swissprot and trembl.  Ensembl is just the GENE id for now (not transcript nor protein).",
                        "type": "array",
                        "items": {
                                "$ref" : "global-id.json#/properties/globalId"
                        },
                        "uniqueItems": true
                },
                "genomeLocations": {
                        "description":"Collection holding the set of locations for this sequence. This should include the exon/intron structure of the sequence.",
                        "type": "array",
                        "items": {
                                "$ref" : "location.json#"
                        },
                        "uniqueItems": true
                },
                "url": {
                        "type": "string",
                        "format": "uri",
                        "description": "URL to the page for this entry in the database"
                },
                "externalUrl": {
                        "type": "string",
                        "format": "uri",
                        "description": "URL to a synopsis outside the database, like wikipedia."
                },
                "secondaryStructure": {
                        "description": "The secondary structure in dot-bracket notation for this sequence",
                        "$ref": "secondary-structure.json#/properties/dot_bracket"
                },
                "publications": {
                        "description": "List of references to associate with this sequence.",
                        "type": "array",
                        "items": {
                                "anyOf": [
                                        { "$ref": "publications.json#/properties/pubMedId" },
                                        { "$ref": "publications.json#/properties/doi" }
                                ]
                        },
                        "uniqueItems": true
                },
                "localization": {
                        "description": "Name of the organelle or plasmid this sequence is found in",
                        "enum": [
                                "mitochondria",
                                "plastid",
                                "chloroplast",
                                "plasmid"
                        ]
                },
                "sequenceFeatures": {
                        "anticodon": {
                                "description": "Information about the anticodon",
                                "$ref": "anticodon.json#"
                        },
                        "modifications": {
                                "description": "List of the modifications in this sequence",
                                "type": "array",
                                "items": {
                                        "$ref": "modification.json#"
                                },
                                "uniqueItems": true
                        }
                },
                "sourceModel": {
                        "description": "Information about the model used to find this sequence",
                        "$ref" : "global-id.json#/properties/globalId"
                },
                "product": {
                        "description": "The name of the product, this should be more specific than the name of the SO term that was provided",
                        "type": "string"
                },
                "additionalAnnotations": {
                        "isoType": {
                                "description": "The isoType of this tRNA",
                                "enum": [
                                        "Ala",
                                        "Cys",
                                        "Asp",
                                        "Glu",
                                        "Phe",
                                        "Gly",
                                        "His",
                                        "Ile",
                                        "Lys",
                                        "Leu",
                                        "iMet",
                                        "Met",
                                        "Asn",
                                        "Pro",
                                        "Gln",
                                        "Arg",
                                        "Ser",
                                        "Thr",
                                        "Val",
                                        "Trp",
                                        "Tyr"
                                ]
                        }
                },
                "relatedSequences": {
                        "description": "Information about related sequences, like precursors or targets",
                        "type": "array",
                        "items": {
                                "$ref": "related-sequence.json#"
                        },
                        "uniqueItems": true
                },
                "inferredPhylogeny": {
                        "description": "A phylogeny that has been inferred for this sequence",
                        "$ref": "inferred-phylogeny.json#"
                }
        }
}') True)/*
table_n_type(fbgn_NAseq_Uniprot, 1, gene_symbol, _).
table_n_type(fbgn_NAseq_Uniprot, 2, organism_abbreviation, _).
table_n_type(fbgn_NAseq_Uniprot, 3, primary_FBgn, 'FBgn').
table_n_type(fbgn_NAseq_Uniprot, 4, nucleotide_accession, _).
table_n_type(fbgn_NAseq_Uniprot, 5, na_based_protein_accession, _).
table_n_type(fbgn_NAseq_Uniprot, 6, 'UniprotKB/Swiss-Prot/TrEMBL_accession', _).
table_n_type(fbgn_NAseq_Uniprot, 7, 'EntrezGene', _).
table_n_type(fbgn_NAseq_Uniprot, 8, 'RefSeq_transcripts', _).
table_n_type(fbgn_NAseq_Uniprot, 9, 'RefSeq_proteins', _).
*/
/*
table_n_type(fbgn_uniprot, 1, primary_FBgn, 'FBgn').
table_n_type(fbgn_uniprot, 2, gene_symbol, _).
table_n_type(fbgn_uniprot, 3, 'CG', _).
table_n_type(fbgn_uniprot, 4, 'UniprotKB/Swiss-Prot/TrEMBL_accession', _).
table_n_type(pmid_fbgn_uniprot, 1, primary_FBgn, 'FBgn').
table_n_type(pmid_fbgn_uniprot, 2, gene_symbol, _).
table_n_type(pmid_fbgn_uniprot, 3, 'CG', _).
table_n_type(pmid_fbgn_uniprot, 4, 'UniprotKB/Swiss-Prot/TrEMBL_accession', _).
*/


;                                        #genotype_symbols           	genotype_FBids	phenotype_name	phenotype_id	qualifier_names	qualifier_ids	reference

  (dynamic (/ maybe-corisponds 2))
  (dynamic (/ numeric-value-p-n 3))
  (module-transparent (/ maybe-corisponds 2))
  (module-transparent (/ numeric-value-p-n 3))

  (= 
    (column_names  cyto-genetic-seq 
      (Cytogenetic_map_position Genetic_map_position Sequence_coordinates_(release_6) R6_conversion_notes)) True)
  (= 
    (column_names  Dmel_enzyme 
      (gene_group_id gene_group_name 
        (ListValue gene_group_GO_id) 
        (ListValue gene_group_GO_name) 
        (ListValue gene_group_EC_number) 
        (ListValue gene_group_EC_name) gene_id gene_symbol gene_name 
        (ListValue gene_EC_number) 
        (ListValue gene_EC_name))) True)
  (= 
    (column_names  scRNA-Seq_gene_expression 
      (Pub_ID Pub_miniref Clustering_Analysis_ID Clustering_Analysis_Name Source_Tissue_Sex Source_Tissue_Stage Source_Tissue_Anatomy Cluster_ID Cluster_Name Cluster_Cell_Type_ID Cluster_Cell_Type_Name Gene_ID Gene_Symbol Mean_Expression Spread)) True)
  (= 
    (column_names  allele_genetic_interactions 
      (allele_symbol allele_FBal interaction FBrf)) True)
  (= 
    (column_names  allele_phenotypic 
      (allele_symbol allele_FBal phenotype FBrf)) True)
  (= 
    (column_names  automated_gene_summaries 
      (primary_FBgn summary_text)) True)
  (= 
    (column_names  best_gene_summary 
      (FBgn Gene_Symbol Summary_Source Summary)) True)
  (= 
    (column_names  cDNA_clone 
      (FBcl organism_abbreviation clone_name dataset_metadata_name 
        (ListValue cDNA_accession) 
        (ListValue EST_accession))) True)
  (= 
    (column_names  dataset_metadata 
      (Dataset_Metadata_ID Dataset_Metadata_Name Item_ID Item_Name)) True)
  (= 
    (column_names  disease_model_annotations 
      (FBgn Gene_symbol HGNC DO_qualifier DO DO_term Allele_used_in_model_(FBal) Allele_used_in_model_(symbol) Based_on_orthology_with_(HGNC_ID) Based_on_orthology_with_(symbol) Evidence/interacting_alleles Reference_(FBrf))) True)
  (= 
    (column_names  dmel_gene_sequence_ontology_annotations 
      (gene_primary_id gene_symbol so_term_name so_term_id)) True)
  (= 
    (column_names  dmel_human_orthologs_disease 
      (Dmel_gene Dmel_gene_symbol Human_gene_HGNC Human_gene_OMIM Human_gene_symbol DIOPT_score OMIM_Phenotype_IDs OMIM_Phenotype_IDs[name])) True)
  (= 
    (column_names  dmel_paralogs 
      (FBgn GeneSymbol Arm/Scaffold Location Strand Paralog_FBgn Paralog_GeneSymbol Paralog_Arm/Scaffold Paralog_Location Paralog_Strand DIOPT_score)) True)
  (= 
    (column_names  dmel_unique_protein_isoforms 
      (FBgn FB_gene_symbol representative_protein 
        (ListValue identical_protein))) True)
  (= 
    (column_names  entity_publication 
      (entity_id entity_name FlyBase_publication PubMed)) True)
  (= 
    (column_names  fb_synonym 
      (primary_FBid organism_abbreviation current_symbol current_fullname 
        