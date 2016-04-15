

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

get_datasets_keys <- function(provider) {
  # get all the datasets for one provider
  provider %>% 
    paste0(api, "providers/", ., "/datasets/keys") %>% 
    fromJSON() %>% 
    select_data()
}
get_datasets_keys(provider = "insee") 


get_series <- function(dataset){
  # Get the series of a dataset
  dataset %>% 
    paste0(api, "datasets/", ., "/series") %>% 
    fromJSON() %>% 
    select_data()
}
get_series(dataset = "insee-act-trim-anc")


get_frequencies <- function(dataset){
  # Get the frequencies of a dataset
  dataset %>% 
    paste0(api, "dataset/", ., "/frequencies") %>% 
    fromJSON() %>% 
    select_data()
}
get_frequencies(dataset = "insee-act-trim-anc")

get_attributes_keys <- function(dataset) {
  dataset %>% 
    paste0(api, "datasets/", ., "/attributes/keys") %>% 
    fromJSON() %>% 
    select_data()
  }

get_attributes <- function(dataset) {
  dataset %>% 
    paste0(api, "datasets/", ., "/attributes") %>% 
    fromJSON() %>% 
    select_data()
}


# get dimensions keys

get_dimensions_keys <- function(dataset) {
  dataset %>% 
    paste0(api, "datasets/", ., "/dimensions/keys") %>% 
    fromJSON() %>% 
    select_data()
  }
get_dimensions_keys("insee-cho-an-halo")


get_dimensions <- function(dataset) {
  dataset %>% 
    paste0(api, "datasets/", ., "/dimensions") %>% 
    fromJSON() %>% 
    select_data()
}

get_dimensions("insee-cho-an-halo")

"datasets/insee-act-trim-anc/dimensions/keys" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data()  



"datasets/insee-act-trim-anc/dimensions" %>% 
  paste0(api, .) %>% 
  fromJSON() %>% 
  select_data() %>% 
  str()



# Get a serie
get_serie <- function(serie) {
  serie %>% 
    paste0(api, "series/", .) %>% 
    fromJSON() %>% 
    select_data() %>% 
    select_values() 
}
get_serie(serie = "bis-pp-ls-q-au")
  