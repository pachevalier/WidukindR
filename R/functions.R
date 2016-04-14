api <- "http://widukind-api.cepremap.org/api/v1/json/"

select_data <- function(x) {
  x[["data"]]
  }

get_providers_keys <- function() {
  # get the list of all providers keys
  "providers/keys" %>% 
    paste0(api, .) %>% 
    fromJSON() %>% 
    select_data()
  }
get_providers_keys()

get_providers_table <- function() {
  # get a table with all providers
  "providers" %>% 
    paste0(api, .) %>% 
    fromJSON() %>% 
    select_data()
  }
get_providers_table()

get_datasets <- function(provider) {
  # get all the datasets for one provider
  provider %>% 
    paste0(api, "providers/", ., "/datasets") %>% 
    fromJSON() %>% 
    select_data()
  }

get_datasets(provider = "insee") 

get_frequencies <- function(dataset){
  # Get the frequencies of a dataset
  dataset %>% 
    paste0(api, "dataset/", ., "/frequencies") %>% 
    fromJSON() %>% 
    select_data()
}
get_frequencies(dataset = "insee-act-trim-anc")
