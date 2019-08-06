
[![Travis build
status](https://travis-ci.com/muschellij2/fit2csv.svg?branch=master)](https://travis-ci.com/muschellij2/fit2csv)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/fit2csv?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/fit2csv)
[![Coverage
status](https://coveralls.io/repos/github/muschellij2/fit2csv/badge.svg?branch=master)](https://coveralls.io/r/muschellij2/fit2csv?branch=master)
[![Coverage
status](https://codecov.io/gh/muschellij2/fit2csv/branch/master/graph/badge.svg)](https://codecov.io/github/muschellij2/fit2csv?branch=master)
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fit2csv Package:

The goal of `fit2csv` is to convert Fit files to CSV.

## Installation

You can install `fit2csv` from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("muschellij2/fit2csv")
```

## Example

``` r
library(fit2csv)
file = system.file("extdata", "example.fit",
package = "fit2csv")
res = fit2csv(file)
x = read.csv(res, as.is = TRUE)
```