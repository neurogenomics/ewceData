\name{ewceData}
\docType{data}
\alias{ewceData}
\alias{ewceData-package}
\alias{alzh_gwas_top100}
\alias{mgi_synonym_data}
\alias{cortex_mrna}
\alias{id_genes}
\alias{rbfox_genes}
\alias{hpsd_genes}
\alias{schiz_genes}
\alias{ctd}
\alias{tt_alzh_BA44}
\alias{tt_alzh_BA36}
\alias{tt_alzh}
\alias{example_genelist}
\alias{all_hgnc}
\alias{all_hgnc_wtEnsembl}
\alias{all_mgi}
\alias{all_mgi_wtEnsembl}
\alias{mouse_to_human_homologs}
\alias{ensembl_transcript_lengths_GCcontent}
\title{The ewceData package provides reference data required for ewce}
\description{
  This package provides reference data required for ewce. Expression 
  Weighted Celltype Enrichment (EWCE) is used to determine which cell 
  types are enriched within gene lists. The package provides tools 
  for testing enrichments within simple gene lists (such as human 
  disease associated genes) and those resulting from differential 
  expression studies. The package does not depend upon any particular 
  Single Cell Transcriptome dataset and user defined datasets can be 
  loaded in and used in the analyses.
}
\usage{
alzh_gwas_top100(metadata=FALSE)
mgi_synonym_data(metadata=FALSE)
cortex_mrna(metadata=FALSE)
id_genes(metadata=FALSE)
rbfox_genes(metadata=FALSE)
hpsd_genes(metadata=FALSE)
schiz_genes(metadata=FALSE)
ctd(metadata=FALSE)
tt_alzh_BA44(metadata=FALSE)
tt_alzh_BA36(metadata=FALSE)
tt_alzh(metadata=FALSE)
example_genelist(metadata=FALSE)
all_hgnc(metadata=FALSE)
all_hgnc_wtEnsembl(metadata=FALSE)
all_mgi(metadata=FALSE)
all_mgi_wtEnsembl(metadata=FALSE)
mouse_to_human_homologs(metadata=FALSE)
ensembl_transcript_lengths_GCcontent(metadata=FALSE)
}
\arguments{
  \item{metadata}{
    \code{logical} value indicating whether metadata only should be returned
    or if the resource should be loaded. Default behavior(metadata=FALSE) 
    loads the data.
  }
}
\examples{
  alzh_gwas_top100()
}
\value{ These accessor functions return differing dataset types}
\source{These datasets have been sourced from various repositories, see 
the ExperimentHub database for details}
\keyword{datasets}
