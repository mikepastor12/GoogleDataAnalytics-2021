#==========================================================
#  PackageTests.R - October 2021
# 

rm( list = ls() )    # Clear Environment objects

install.packages(c("devtools", "roxygen2", "testthat", "knitr"))

install.packages("knitr")
library(devtools)

install.packages("rstudioapi")
rstudioapi::isAvailable("0.99.149")

writeLines('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron")

has_devel()
#  Your system is ready to build packages!

