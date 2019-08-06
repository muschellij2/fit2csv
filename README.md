
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
head(x)
#>         Type Local.Number      Message          Field.1    Value.1 Units.1
#> 1 Definition            0      file_id    serial_number          1        
#> 2       Data            0      file_id    serial_number 2147483647        
#> 3 Definition            0 file_creator software_version          1        
#> 4 Definition            0 file_creator software_version          1        
#> 5       Data            0 file_creator software_version        240        
#> 6 Definition            1        event        timestamp          1        
#>            Field.2   Value.2 Units.2      Field.3 Value.3 Units.3
#> 1     time_created         1         manufacturer       1        
#> 2     time_created 702940946         manufacturer      15        
#> 3 hardware_version         1                           NA        
#> 4                         NA                           NA        
#> 5                         NA                           NA        
#> 6             data         1                event       1        
#>          Field.4 Value.4 Units.4     Field.5 Value.5 Units.5 Field.6
#> 1        product       1                type       1                
#> 2 garmin_product       1                type       4                
#> 3                     NA                          NA                
#> 4                     NA                          NA                
#> 5                     NA                          NA                
#> 6     event_type       1         event_group       1                
#>   Value.6 Units.6 Field.7 Value.7 Units.7 Field.8 Value.8 Units.8 Field.9
#> 1      NA                      NA                      NA                
#> 2      NA                      NA                      NA                
#> 3      NA                      NA                      NA                
#> 4      NA                      NA                      NA                
#> 5      NA                      NA                      NA                
#> 6      NA                      NA                      NA                
#>   Value.9 Units.9 Field.10 Value.10 Units.10 Field.11 Value.11 Units.11
#> 1      NA                        NA                         NA         
#> 2      NA                        NA                         NA         
#> 3      NA                        NA                         NA         
#> 4      NA                        NA                         NA         
#> 5      NA                        NA                         NA         
#> 6      NA                        NA                         NA         
#>   Field.12 Value.12 Units.12 Field.13 Value.13 Units.13 Field.14 Value.14
#> 1                NA                         NA                         NA
#> 2                NA                         NA                         NA
#> 3                NA                         NA                         NA
#> 4                NA                         NA                         NA
#> 5                NA                         NA                         NA
#> 6                NA                         NA                         NA
#>   Units.14 Field.15 Value.15 Units.15 Field.16 Value.16 Units.16 Field.17
#> 1                         NA                         NA                  
#> 2                         NA                         NA                  
#> 3                         NA                         NA                  
#> 4                         NA                         NA                  
#> 5                         NA                         NA                  
#> 6                         NA                         NA                  
#>   Value.17 Units.17 Field.18 Value.18 Units.18 Field.19 Value.19 Units.19
#> 1       NA       NA                NA       NA                NA       NA
#> 2       NA       NA                NA       NA                NA       NA
#> 3       NA       NA                NA       NA                NA       NA
#> 4       NA       NA                NA       NA                NA       NA
#> 5       NA       NA                NA       NA                NA       NA
#> 6       NA       NA                NA       NA                NA       NA
#>   Field.20 Value.20 Units.20 Field.21 Value.21 Units.21 Field.22 Value.22
#> 1                NA       NA                NA                         NA
#> 2                NA       NA                NA                         NA
#> 3                NA       NA                NA                         NA
#> 4                NA       NA                NA                         NA
#> 5                NA       NA                NA                         NA
#> 6                NA       NA                NA                         NA
#>   Units.22 Field.23 Value.23 Units.23  X
#> 1                         NA          NA
#> 2                         NA          NA
#> 3                         NA          NA
#> 4                         NA          NA
#> 5                         NA          NA
#> 6                         NA          NA
```
