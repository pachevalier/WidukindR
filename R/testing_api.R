# http://widukind-api.cepremap.org/
library(jsonlite)
library(magrittr)
library(purrr)
api <- "http://widukind-api.cepremap.org/api/v1/json/"

select_data <- function(x) {
  x[["data"]]
  }

# List of providers keys
"providers/keys" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data()

# Table of all providers
providers <- "providers" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data()

# Data for one provider
"providers/insee" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data()

# Table of all datasets for one provider
insee_datasets <- "providers/insee/datasets" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data()

# Metadata for one dataset
"dataset/insee-act-trim-anc" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data()

insee_act_trim_anc_series <- "datasets/insee-act-trim-anc/series" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data() 

# Fréquences possibles du dataset
"dataset/insee-act-trim-anc/frequencies" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data()

get_frequencies <- function(slug){
  # Get the frequencies of a dataset
  slug %>% 
    paste0(api, "dataset/", ., "/frequencies") %>% 
    fromJSON() %>% 
    select_data()
  }
get_frequencies(slug = "insee-act-trim-anc")


# Get values
values <- "datasets/insee-act-trim-anc/values" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data()


values <- "datasets/insee-cho-an-halo/values" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data() %>% 
  select_values()




# Get Dimensions
"datasets/insee-act-trim-anc/dimensions" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data() %>% 
  str()

"datasets/insee-act-trim-anc/dimensions/keys" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data()  

# Get Series
series <- "datasets/insee-act-trim-anc/series" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data()

# Get codelist
"datasets/insee-act-trim-anc/codelists" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data() %>% 
  str()

# Get attributes keys
"datasets/insee-act-trim-anc/attributes/keys" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data() 

"datasets/insee-act-trim-anc/attributes" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data() %>% 
  str()
# 
# library(ggthemes)
# library(ggplot2)
# library(dplyr)
# library(zoo)
# library(lubridate)
# "bis-pp-ls-q-au" %>% 
#   paste0(api, "series/", .) %>% 
#   fromJSON() %>% 
#   select_data() %>% 
#   select_values() 
# 
# get_serie <- function(serie) {
#     serie %>% 
#       paste0(api, "series/", .) %>% 
#       fromJSON() %>% 
#       select_data() %>% 
#       select_values() 
#   }
# get_serie(serie = "bis-pp-ls-q-au")
# 
# bis_pp_ls_q_au <- get_serie(serie = "bis-pp-ls-q-au") %>% 
#   mutate(
#     value = as.numeric(value), 
#     year_quarter = period %>% 
#                     as.yearqtr(., format = "%Y-Q%q") %>% 
#                     as.Date() %>% 
#                     quarter(. , with_year = TRUE)
#   )
# 
# bis_pp_ls_q_au %>% str()
# bis_pp_ls_q_au %>%  
#   ggplot() + 
#     geom_point(
#       mapping = aes(x = year_quarter, y = value)
#     ) + 
#     scale_x_yearqtr(name = "date", n = 10) + 
#     scale_y_continuous(name = "unemployment rate", 
#                      limits = c(5,12)) + 
#     theme_tufte()
