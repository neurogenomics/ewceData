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