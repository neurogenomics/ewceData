#' @import ExperimentHub
#' @importFrom AnnotationHub query
#' @importFrom utils read.csv
#.onLoad <- function(libname, pkgname) {
#    fl <- system.file("extdata", "metadata.csv", package=pkgname)
#    titles <- read.csv(fl, stringsAsFactors=FALSE)$Title
#    ExperimentHub::createHubAccessors(pkgname, titles)
#}
.onLoad <- function(libname, pkgname) {
  objs <- read.csv(system.file("extdata", "metadata.csv",
                               package="ewceData"),
                   stringsAsFactors=FALSE,fileEncoding = "UTF-8-BOM")$Title
  if (!length(objs))
    stop("no objects found")

  ## Functions to load objects by name:
  ns <- asNamespace(pkgname)
  sapply(objs,
         function(xx) {
           func = function(metadata = FALSE) {
             if (!isNamespaceLoaded("ExperimentHub"))
               attachNamespace("ExperimentHub")
             eh <- query(ExperimentHub(), "ewceData")
             #ehid <- names(query(eh, xx))
             #grepl exact match, avoid issues with all_mgi and all_mgi_wtEnsembl
             ehid <- names(query(eh, paste0("\\b",xx,"\\b")))
             if (!length(ehid))
               stop(paste0("resource ", xx,
                           " not found in ExperimentHub"))
             if (metadata)
               eh[ehid]
             else eh[[ehid]]
           }
           assign(xx, func, envir=ns)
           namespaceExport(ns, xx)
         })
}