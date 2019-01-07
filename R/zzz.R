.onLoad <- function(libname, pkgname) {

    suppressMessages(
        if (Sys.getenv("R_INSTALL_PKG") != "nothing") {
            repeat{
                pkgs <- setdiff(loadedNamespaces(), sessionInfo()$basePkgs)
                if (!length(pkgs)) break
                for (pkg in pkgs) {
                    try(unloadNamespace(pkg), silent = TRUE)
                }
            }
        }
    )

}
