##The datasets stored within ewceData are described below

## ensembl_transcript_lengths_GCcontent
## A dataset containing the transcript lengths and GC content for each 
## human ensembl gene
# Code:
# listMarts(host="www.ensembl.org")
# human <- useMart(host="www.ensembl.org", "ENSEMBL_MART_ENSEMBL", dataset="hsapiens_gene_ensembl")
# ensembl_transript_lengths_GCcontent = getBM(attributes=c("transcript_length","percentage_gene_gc_content","ensembl_gene_id"), mart= human)
# save(ensembl_transript_lengths_GCcontent,file="ensembl_transcript_lengths_GCcontent.Rda")

## mouse_to_human_homologs
## A dataset containing the MGI and HGNC symbols, Human and Mouse Entrez and 
## Ensembl gene IDs for all human orthologs for mouse genes. Whenin the mouse 
## genes are defined based on a list of all MGI markers from the MGI website
# Code:
# markers = read.csv(url("http://www.informatics.jax.org/downloads/reports/MRK_List2.rpt"),sep="\t")
# genes = markers[markers$Feature.Type=="protein coding gene",]
# listMarts(host="www.ensembl.org")
# human <- useMart(host="www.ensembl.org", "ENSEMBL_MART_ENSEMBL", dataset="hsapiens_gene_ensembl")
# mouse <- useMart(host="www.ensembl.org", "ENSEMBL_MART_ENSEMBL", dataset="mmusculus_gene_ensembl")
# mouse_to_human_homologs = getLDS(attributes = c("mgi_symbol","entrezgene","ensembl_gene_id"),
#                                  filters = "mgi_symbol", values = genes$Marker.Symbol,
#                                  mart = mouse,
#                                  attributesL = c("hgnc_symbol","ensembl_gene_id","entrezgene"), martL = human)
# unique_mgi = setdiff(mouse_to_human_homologs$MGI.symbol,mouse_to_human_homologs$MGI.symbol[duplicated(mouse_to_human_homologs$MGI.symbol)])
# unique_hgnc = setdiff(mouse_to_human_homologs$HGNC.symbol,mouse_to_human_homologs$HGNC.symbol[duplicated(mouse_to_human_homologs$HGNC.symbol)])
# mouse_to_human_homologs = mouse_to_human_homologs[mouse_to_human_homologs$MGI.symbol %in% unique_mgi & mouse_to_human_homologs$HGNC.symbol %in% unique_hgnc,]
# save(mouse_to_human_homologs,file="mouse_to_human_homologs.Rda")


## all_mgi_wtEnsembl
## A dataset containing all MGI symbols in first column, then ensembl_gene_id 
## in second column
# Code:
# listMarts(host="www.ensembl.org")
# mouse <- useMart(host="www.ensembl.org", "ENSEMBL_MART_ENSEMBL", dataset="mmusculus_gene_ensembl")
# all_mgi_wtEnsembl = getBM(attributes=c("mgi_symbol","ensembl_gene_id"), mart=mouse)
# save(all_mgi_wtEnsembl,file="all_mgi_wtEnsembl.Rda")

## all_mgi
## A dataset containing all MGI symbols
# Code:
# listMarts(host="www.ensembl.org")
# mouse <- useMart(host="www.ensembl.org", "ENSEMBL_MART_ENSEMBL", dataset="mmusculus_gene_ensembl")
# mgi_symbols = getBM(attributes=c("mgi_symbol","ensembl_gene_id"), mart=mouse)
# all_mgi = unique(mgi_symbols$mgi_symbol)
# save(all_mgi,file="all_mgi.Rda")

## all_hgnc_wtEnsembl
## A dataset containing all HGNC symbols in first column, then ensembl_gene_id 
## in second column
# Code:
# listMarts(host="www.ensembl.org")
# human <- useMart(host="www.ensembl.org", "ENSEMBL_MART_ENSEMBL", dataset="hsapiens_gene_ensembl")
# all_hgnc_wtEnsembl = getBM(attributes=c("hgnc_symbol","ensembl_gene_id"), mart=human)
# save(all_hgnc_wtEnsembl,file="all_hgnc_wtEnsembl.Rda")

## all_hgnc
## A dataset containing all HGNC symbols
# Code:
# listMarts(host="www.ensembl.org")
# human <- useMart(host="www.ensembl.org", "ENSEMBL_MART_ENSEMBL", dataset="hsapiens_gene_ensembl")
# hgnc_symbols = getBM(attributes=c("hgnc_symbol","ensembl_gene_id"), mart=human)
# all_hgnc = unique(hgnc_symbols$hgnc_symbol)
# save(all_hgnc,file="all_hgnc.Rda")

## example_genelist
## A list of genes genetically associated with Alzheimer's disease
# Code: Manual curation
# These were obtained from two sources:
# http://www.alzgene.org/TopResults.asp and PMID24162737

## tt_alzh
## A list of genes found to be differentially expressed in the BA46 in 
## Alzheimer's disease.
# Code: Manual
# The table was determined based on data associated with the paper with 
# PMID:17845826

## tt_alzh_BA36
## A list of genes found to be differentially expressed in the BA36 in 
## Alzheimer's disease.
# Code: Manual
# The table was determined based on data associated with the paper with 
# PMID:17845826

## tt_alzh_BA44
## A list of genes found to be differentially expressed in the BA44 in 
## Alzheimer's disease.
# Code: Manual
# The table was determined based on data associated with the paper with 
# PMID:17845826

## ctd
## The genes from Karolinska cortex/hippocampus and hypothalamus single cell 
## transcriptome datasets
# Code:
# The datasets were downloaded from the website associated with the paper & 
# GEO and loaded using read_celltype_data PMID:25700174
# usethis::use_data(ctd,overwrite = TRUE)

## schiz_genes
## Schizophrenia susceptibility genes from CLOZUK
# Code:
# Extended data tables downloaded from: 
# http://www.biorxiv.org/content/early/2016/08/09/068593.figures-only
# schiz_genes = read.csv("/Users/ns9/Google Drive/DiseaseLists/Schizophrenia_CLOZUK_geneWideSignif.txt",stringsAsFactors = FALSE)[-1,1]
# save(schiz_genes,file="data/schiz_genes.rda")

## hpsd_genes
## Human post-synaptic density
# Code:
# From Supplementary Table 2 of 
# https://www.nature.com/neuro/journal/v14/n1/full/nn.2719.html
# hpsd_genes = read.csv("/Users/ns9/Google Drive/DiseaseLists/hPSD.txt",stringsAsFactors = FALSE)[-1,1]
# save(hpsd_genes,file="data/hpsd_genes.rda")

## rbfox_genes
## Rbfox binding genes from HITS-CLIP and Integrative Modeling Define the Rbfox 
## Splicing-Regulatory Network Linked to Brain Development and Autism.
# Code:
# from supplementary table 1 of HITS-CLIP and Integrative Modeling Define the 
# Rbfox Splicing-Regulatory Network Linked to Brain Development and Autism. 
# All with rbfox2 count greater than 4 or summed rbfox 1 and 3 greater than 12
# rbfox_genes = read.csv("/Users/ns9/Google Drive/DiseaseLists/Rbfox_binding.txt",stringsAsFactors = FALSE)[-1,1]
# save(rbfox_genes,file="data/rbfox_genes.rda")

## id_genes
## Intellectual disability genes
# Code:
# from http://compbio.charite.de/hpoweb/showterm?id=HP:0001249
# id_genes = read.csv("/Users/ns9/Google Drive/DiseaseLists/Intellectual Disability July2017.txt",stringsAsFactors = FALSE)[-1,1]
# save(id_genes,file="data/id_genes.rda")

## cortex_mrna
## Karolinska Cortex/Hippocamus dataset subsample
# Code:
# Note this code can be used as a general approach for how to derive CTD files
# from downloaded data from papers
# download.file("goo.gl/r5Y24y",destfile="expression_mRNA_17-Aug-2014.txt")
# path = "expression_mRNA_17-Aug-2014.txt"
# all_dat <- read.csv(fName, sep = "\t", stringsAsFactors = FALSE)
# Check that data is formatted as expected
#corr_fmt<-paste0("group #,total mRNA mol,well,sex,age,",
#                 "diameter,cell_id,level1class,level2class")
#if (paste(all_dat[seq_len(9), 2], collapse = ",") != corr_fmt) {
#  stop("ERROR: annotation rows are not written as expected")
#}
## A blank row seperates the annotation from expression data...find that row
#expDataStarts <- 1
#for (i in seq_len(30))
#{
#  if (length(unique(unlist(all_dat[i, ]))) == 1 &
#      unique(unlist(all_dat[i, ]))[1] == "") {
#    expDataStarts <- i + 1
#  }
#}
# Get the expression data and convert to numerical matrix
# zeisel_exp <- all_dat[expDataStarts:dim(all_dat)[1], 3:dim(all_dat)[2]]
# zeisel_exp <- as.matrix(zeisel_exp)
# storage.mode(zeisel_exp) <- "numeric"
# Extract the annotation data
# zeisel_annot <- all_dat[seq_len((expDataStarts - 2)), 2:dim(all_dat)[2]]
# zeisel_annot <- rbind(zeisel_annot, tissue = colnames(zeisel_annot))
# rownames(zeisel_annot) <- zeisel_annot[, 1]
# zeisel_annot <- zeisel_annot[, -1]
# z2_annot <- data.frame(
#   groupNo = as.numeric(zeisel_annot[1, ]),
#   total_mRNA_mol = as.numeric(zeisel_annot[2, ]),
#   well = as.numeric(zeisel_annot[3, ]),
#   sex = as.numeric(zeisel_annot[4, ]),
#   age = as.numeric(zeisel_annot[5, ]),
#   diameter = as.numeric(zeisel_annot[6, ]),
#   cell_id = as.character(zeisel_annot[7, ]),
#   level1class = as.character(zeisel_annot[8, ]),
#   level2class = as.character(zeisel_annot[9, ]),
#   tissue = as.character(zeisel_annot[10, ]), stringsAsFactors = FALSE
# )
# z2_annot$tissue <- gsub("\\..*", "", as.character(z2_annot$tissue))
# colnames(zeisel_exp) <- z2_annot$cell_id
# rownames(zeisel_exp) <- all_dat[expDataStarts:dim(all_dat)[1], 1]
# rownames(z2_annot) <- z2_annot$cell_id
# cortex_mrna <- list(exp = zeisel_exp, annot = z2_annot)
# save(cortex_mrna,file="data/cortex_mrna.rda")

## alzh_gwas_top100
## Alzheimers disease top100 GWAS genes generated by MAGMA using the iGAP 
## summary statistics
# Code:
# hgnc_symbols = getBM(attributes=c("hgnc_symbol","ensembl_gene_id","entrezgene"), mart=human)
# magma2=merge(magma,hgnc_symbols,by="GENE")
# write.csv(magma2[1:100,]$hgnc_symbol,file="Alzh_IGAP_top100magma.txt",quote=FALSE,row.names = FALSE)

## mgi_synonym_data
## MGI synonym data
# Code:
# download.file("http://www.informatics.jax.org/downloads/reports/MRK_List2.rpt", destfile="MRK_List2.rpt")
# mgi_synonym_data = read.csv(mrk_file_path,sep="\\t",stringsAsFactors = FALSE)
# mgi_synonym_data = mgi_data[!mgi_data$Marker.Synonyms..pipe.separated.=="",]
# save(mgi_synonym_data,file="data/mgi_synonym_data.rda", compress='xz')
