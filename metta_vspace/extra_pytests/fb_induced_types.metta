


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
    (column_names  fbal_to_fbgn 
      (AlleleID AlleleSymbol GeneID GeneSymbol)) True)
  (= 
    (column_names  genotype_phenotype_data 
      ( 