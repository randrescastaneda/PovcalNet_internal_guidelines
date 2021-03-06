set.seed(1234)
options(digits = 3)

knitr::opts_chunk$set(
  comment = "#>",
  # comment=NA,
  warning = FALSE
  #collapse = TRUE,
  #cache = TRUE,
  #out.width = "70%",
  #fig.align = 'center',
  #fig.width = 6,
  #fig.asp = 0.618,  # 1 / phi
  #fig.show = "hold"
)

options(dplyr.print_min = 6, dplyr.print_max = 6)


# install and load packages that have not been installed before
pkg <-  c("ggplot2", "png", "grid", "DiagrammeR",
          "tidyverse", "data.tree", "flair")
new.pkg <- pkg[!(pkg %in% installed.packages()[,"Package"])] # check installed packages
load.pkg <- pkg[!(pkg %in% loadedNamespaces())]              # check loaded packages


if (length(new.pkg)) install.packages(new.pkg)     # Install missing packages
inst = lapply(load.pkg, library, character.only = TRUE) # load all packages

if (!("Statamarkdown"  %in% installed.packages())) {
  devtools::install_github("Hemken/Statamarkdown")
}
library(Statamarkdown)

if (!("emo"  %in% installed.packages())) {
  devtools::install_github("hadley/emo")
}



