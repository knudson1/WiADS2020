
<!-- README.md is generated from README.Rmd. Please edit that file -->

# MyFirstPackage

The goal of MyFirstPackage is to accompany the talk by Dietz & Knudson
at the Minneanalytics Women in Analytics and Data Science conference
held on October 30, 2020.

## Installation

You can install the development version of MyFirstPackage from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("knudson1/WiADS2020", build_vignettes = TRUE)
```

## Talk Slides

After installing, you can access the slides using the following code:

``` r
vignette("2020_WiADS_Slides")
```

You can also get there directly using the link:
<https://github.com/knudson1/WiADS2020/blob/master/doc/Presentation_Slides.pdf>

## Example

This is an example of the two functions included in this package:

``` r
library(MyFirstPackage)

#Calculate effective sample size
minESS(p = 2, alpha = 0.05, epsilon = 0.05)
#> [1] 7529

#Calculate target PSRF using 5 chains
target_psrf(m = 5, p = 2, alpha = 0.05, epsilon = 0.05)
#> $psrf
#> [1] 1.000332
#> 
#> $epsilon
#> [1] 0.05
```
