
## WidukindR

R interface to the Widukind API

* [Widukind website](http://widukind.cepremap.org/)

## Installation



    library(devtools)
    install_github("pachevalier/WidukindR")


## Examples

Get the list

    > library(WidukindR)
    > get_providers_keys()
    [1] "esri"      "oecd"      "fed"       "imf"       "ecb"       "insee"     "bis"       "eurostat"  "worldbank"


    > get_serie("insee-txcho-reg-001515842")
    > as.yearqtr("1982-Q1", format = "%Y-Q%q") %>% as.Date()

## Todo

- get_values()
- get_multiple_series() or get_mseries()
- search()

## See also

- [World Bank Development indicators for R](https://github.com/vincentarelbundock/WDI) by @vincentarelbundock
- [wbstats](https://github.com/GIST-ORNL/wbstats) by @GIST-ORNL
