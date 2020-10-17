## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  echo = TRUE,
  collapse = TRUE,
  comment = "#>"
)

## ----ldck, echo=FALSE, out.width = '50%'--------------------------------------
knitr::include_graphics("pics/ldck.jpg")

## ----setup, message=FALSE, eval=FALSE-----------------------------------------
#  library(MyFirstPackage)
#  
#  # Best practices for R package design
#  design_package()
#  
#  # Building an R package
#  build_package()
#  
#  # Distribution of your R package
#  distribute_package()
#  

## ----setup2, echo=FALSE, message=FALSE----------------------------------------
library(dplyr)
library(here)

## ----pam, echo=FALSE, out.width = '100%'--------------------------------------
knitr::include_graphics("pics/pam.jpeg")

## ----lego1, echo=FALSE, out.width = '100%'------------------------------------
knitr::include_graphics("pics/lego.jpeg")

## ----setup3, eval=FALSE, message=FALSE----------------------------------------
#  #install.packages('testthat', 'devtools',
#  #                 'roxygen2', 'usethis')
#  library(testthat)
#  library(devtools)
#  library(roxygen2)
#  library(usethis)
#  
#  usethis::create_package("~/MyFirstPackage")
#  # usethis::use_testthat() #if you want to add tests
#  usethis::use_git() #if you want to use Git
#  

## ----setup4, eval=FALSE, message=FALSE----------------------------------------
#  
#  usethis::use_r('target_psrf')
#  usethis::use_r('minESS')
#  

## ----miness, echo=FALSE, out.width = '100%'-----------------------------------
knitr::include_graphics("pics/partialfunc.jpeg")

## ----miness2, echo=FALSE, out.width = '100%'----------------------------------
knitr::include_graphics("pics/fullfunc.jpeg")

## ----doc, echo=FALSE, out.width = '75%'---------------------------------------
knitr::include_graphics("pics/doc.jpg")

## ----check, eval = FALSE, echo=TRUE-------------------------------------------
#  devtools::check()
#  devtools::build()
#  devtools::install()

## ----build, echo=FALSE, out.width = '80%'-------------------------------------
knitr::include_graphics("pics/buildtools.jpg")

## ----bedazzle, echo=FALSE, out.width = '100%'---------------------------------
knitr::include_graphics("pics/bedazzler.jpg")

## ----janet, echo=FALSE, out.width = '100%'------------------------------------
knitr::include_graphics("pics/janets.png")

## ----dr, echo=FALSE, out.width = '100%'---------------------------------------
knitr::include_graphics("pics/dr.jpeg")

## ----organized, echo=FALSE, out.width = '100%'--------------------------------
knitr::include_graphics("pics/ann.jpg")

