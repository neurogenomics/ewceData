#' @import ExperimentHub
# @importFrom AnnotationHub query
# @importFrom AnnotationHub mcols
#' @importFrom utils read.csv
#.onLoad <- function(libname, pkgname) {
#  objs <- read.csv(system.file("extdata", "metadata.csv",
#                               package="ewceData"),
#                   stringsAsFactors=FALSE,fileEncoding = "UTF-8-BOM")$Title
#  if (!length(objs))
#    stop("no objects found")

#  ## Functions to load objects by name:
#  ns <- asNamespace(pkgname)
#  eh <- query(ExperimentHub(), "ewceData")
#  sapply(objs,
#         function(xx) {
#           func = function(metadata = FALSE) {
#             if (!isNamespaceLoaded("ExperimentHub"))
#               attachNamespace("ExperimentHub")
#             #grepl exact match, avoid issues with all_mgi and all_mgi_wtEnsembl
#             ehid <- rownames(mcols(eh)[mcols(eh)$title==xx,])
#             #ehid <- names(query(eh, paste0("\\b",xx,"\\b")))
#             if (!length(ehid))
#               stop(paste0("resource ", xx,
#                           " not found in ExperimentHub"))
#             if (metadata)
#               eh[ehid]
#             else eh[[ehid]]
#           }
#           assign(xx, func, envir=ns)
#           namespaceExport(ns, xx)
#         })
#}
.onLoad <- function(libname, pkgname) {
  fl <- system.file("extdata", "metadata.csv", package=pkgname)
  titles <- read.csv(fl, stringsAsFactors=FALSE)$Title
  createHubAccessors(pkgname, titles)
}