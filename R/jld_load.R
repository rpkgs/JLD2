#' @import JuliaCall
#' @export 
jld_load <- function(f) {
  julia_call("load", f)
}

#' @export
jld_setup <- function (pkg_check=TRUE, pkgs = c("JLD2", "DataFrames"), ...){
  julia <- JuliaCall::julia_setup(installJulia=TRUE,...)
  if(pkg_check) JuliaCall::julia_install_package_if_needed("JLD2")

  for (pkg in pkgs) {
    JuliaCall::julia_library(pkg)
  }
}
