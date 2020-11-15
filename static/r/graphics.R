# Preparation for the workshop by the library XJTLU, 2020-11-25

install.packages2 <- function(pkg){
    if (system.file(package = pkg) == "") utils::install.packages(pkg)
}
install_github2 <- function(pkg){
  install.packages2("remotes")
  if (system.file(package = basename(pkg)) == "") remotes::install_github(pkg)
}
require2 <- function(pkgs){
  pkgs_n <- grepl("/", pkgs)
  pkgs_cran <- pkgs[!pkgs_n]
  pkgs_github <- pkgs[pkgs_n]
  if(length(pkgs_cran > 0)) lapply(pkgs_cran, install.packages2)
  if(length(pkgs_github > 0)) lapply(pkgs_github, install_github2)
  y <- lapply(basename(pkgs), require, character.only = TRUE)
  return(unlist(y))
}
require2("beginr", "corrplot", "ggplot2", "openair", "psych", "plotly", "TeachingDemos", 
         "vioplot", "wordcloud2",
         "pzhaonet/xjtlu", "yihui/MSG")
Sys.setlocale("LC_CTYPE", "Chinese")
