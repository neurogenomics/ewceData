\name{ewceData}
\docType{data}
\alias{ewceData}
\alias{ewceData-package}
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
