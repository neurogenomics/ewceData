#' @import ExperimentHub

.my_internal_global_variables <- new.env(parent=emptyenv())

.get_eh <- function() get("eh", envir=.my_internal_global_variables)
.set_eh <- function(value) assign("eh", value,
                                  envir=.my_internal_global_variables)

get_ExperimentHub <- function()
{
  eh <- try(.get_eh(), silent=TRUE)
  if (inherits(eh, "try-error")) {
    eh <- ExperimentHub::ExperimentHub()
    .set_eh(eh)
  }
  eh
}

#internal functions to call the data quickly
#doesn't require multiple calls to eh
#' tt_alzh
#'
#' \code{tt_alzh} returns the tt_alzh dataset
#' @return tt_alzh dataset
#' @examples tt_alzh()
#' @export
tt_alzh <- function()
{
  eh <- get_ExperimentHub()
  eh[["EH5373"]]
}

#' tt_alzh_BA36
#'
#' \code{tt_alzh_BA36} returns the tt_alzh_BA36 dataset
#' @return tt_alzh_BA36 dataset
#' @examples tt_alzh_BA36()
#' @export
tt_alzh_BA36 <- function(){
  eh <- get_ExperimentHub()
  tt_alzh_BA36 <- eh[["EH5374"]]
}

#' tt_alzh_BA44
#'
#' \code{tt_alzh_BA44} returns the tt_alzh_BA44 dataset
#' @return tt_alzh_BA44 dataset
#' @examples tt_alzh_BA44()
#' @export
tt_alzh_BA44 <- function(){
  eh <- get_ExperimentHub()
  tt_alzh_BA44 <- eh[["EH5375"]]
}

#' ctd
#'
#' \code{ctd} returns the ctd dataset
#' @return ctd dataset
#' @examples ctd()
#' @export
ctd <- function(){
  eh <- get_ExperimentHub()
  ctd <- eh[["EH5376"]]
}

#' example_genelist
#'
#' \code{example_genelist} returns the example_genelist dataset
#' @return example_genelist dataset
#' @examples example_genelist()
#' @export
example_genelist <- function(){
  eh <- get_ExperimentHub()
  example_genelist <- eh[["EH5372"]]
}

#' mouse_to_human_homologs
#'
#' \code{mouse_to_human_homologs} returns the mouse_to_human_homologs dataset
#' @return mouse_to_human_homologs dataset
#' @examples mouse_to_human_homologs()
#' @export
mouse_to_human_homologs <- function(){
  eh <- get_ExperimentHub()
  mouse_to_human_homologs <- eh[["EH5367"]]
}

#' all_mgi
#'
#' \code{all_mgi} returns the all_mgi dataset
#' @return all_mgi dataset
#' @examples all_mgi()
#' @export
all_mgi<- function(){
  eh <- get_ExperimentHub()
  all_mgi <- eh[["EH5369"]]
}

#' all_hgnc
#'
#' \code{all_hgnc} returns the all_hgnc dataset
#' @return all_hgnc dataset
#' @examples all_hgnc()
#' @export
all_hgnc  <- function(){
  eh <- get_ExperimentHub()
  all_hgnc <- eh[["EH5371"]]
}

#' cortex_mrna
#'
#' \code{cortex_mrna} returns the cortex_mrna dataset
#' @return cortex_mrna dataset
#' @examples cortex_mrna()
#' @export
cortex_mrna  <- function(){
  eh <- get_ExperimentHub()
  cortex_mrna <- eh[["EH5381"]]
}

#' alzh_gwas_top100
#'
#' \code{alzh_gwas_top100} returns the alzh_gwas_top100 dataset
#' @return alzh_gwas_top100 dataset
#' @examples alzh_gwas_top100
#' @export
alzh_gwas_top100  <- function(){
  eh <- get_ExperimentHub()
  alzh_gwas_top100 <- eh[["EH5382"]]
}

#' ensembl_transcript_lengths_GCcontent
#'
#' \code{ensembl_transcript_lengths_GCcontent} returns the ensembl_transcript_lengths_GCcontent dataset
#' @return ensembl_transcript_lengths_GCcontent dataset
#' @examples ensembl_transcript_lengths_GCcontent()
#' @export
ensembl_transcript_lengths_GCcontent  <- function(){
  eh <- get_ExperimentHub()
  ensembl_transcript_lengths_GCcontent <- eh[["EH5366"]]
}

#' all_mgi_wtEnsembl
#'
#' \code{all_mgi_wtEnsembl} returns the all_mgi_wtEnsembl dataset
#' @return all_mgi_wtEnsembl dataset
#' @examples all_mgi_wtEnsembl()
#' @export
all_mgi_wtEnsembl <- function(){
  eh <- get_ExperimentHub()
  all_mgi_wtEnsembl <- eh[["EH5368"]]
}

#' all_hgnc_wtEnsembl
#'
#' \code{all_hgnc_wtEnsembl} returns the all_hgnc_wtEnsembl dataset
#' @return all_hgnc_wtEnsembl dataset
#' @examples all_hgnc_wtEnsembl()
#' @export
all_hgnc_wtEnsembl <- function(){
  eh <- get_ExperimentHub()
  all_hgnc_wtEnsembl <- eh[["EH5370"]]
}

#' schiz_genes
#'
#' \code{schiz_genes} returns the schiz_genes dataset
#' @return schiz_genes dataset
#' @examples schiz_genes()
#' @export
schiz_genes <- function(){
  eh <- get_ExperimentHub()
  schiz_genes <- eh[["EH5377"]]
}

#' hpsd_genes
#'
#' \code{hpsd_genes} returns the hpsd_genes dataset
#' @return hpsd_genes dataset
#' @examples hpsd_genes()
#' @export
hpsd_genes <- function(){
  eh <- get_ExperimentHub()
  hpsd_genes <- eh[["EH5378"]]
}

#' rbfox_genes
#'
#' \code{rbfox_genes} returns the rbfox_genes dataset
#' @return rbfox_genes dataset
#' @examples rbfox_genes()
#' @export
rbfox_genes <- function(){
  eh <- get_ExperimentHub()
  rbfox_genes <- eh[["EH5379"]]
}

#' id_genes
#'
#' \code{id_genes} returns the id_genes dataset
#' @return id_genes dataset
#' @examples id_genes()
#' @export
id_genes <- function(){
  eh <- get_ExperimentHub()
  id_genes <- eh[["EH5380"]]
}

#' mgi_synonym_data
#'
#' \code{mgi_synonym_data} returns the mgi_synonym_data dataset
#' @return mgi_synonym_data dataset
#' @examples mgi_synonym_data()
#' @export
mgi_synonym_data <- function(){
  eh <- get_ExperimentHub()
  mgi_synonym_data <- eh[["EH5383"]]
}


#' hypothalamus_mrna
#'
#' \code{hypothalamus_mrna} returns the hypothalamus_mrna dataset
#' @return hypothalamus_mrna dataset
#' @examples hypothalamus_mrna()
#' @export
hypothalamus_mrna  <- function(){
  eh <- get_ExperimentHub()
  hypothalamus_mrna <- eh[["EH5446"]]
}
