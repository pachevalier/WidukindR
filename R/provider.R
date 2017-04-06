#' Get datasets for one provider
#'
#' This function returns a dataframe with all datasets for one provider
#' 
#' @param slug the slug of the provider
#' 
#' @keywords providers
#' @export
#' @examples
#' get_datasets(slug = "insee") 

get_datasets <- function(slug) {
  widukind_api <- "http://widukind-api.cepremap.org/api/v1/json/"
  paste0(widukind_api, "providers/", slug, "/datasets") %>% 
  jsonlite::fromJSON() %>% 
  magrittr::extract2("data")
  }

#' Get keys of a dataset
#'
#' This function returns a vector with all datasets keys for one provider
#' 
#' @param slug the slug of the provider
#' @keywords providers
#' @export
#' @examples
#' get_datasets_keys(slug = "insee") 

get_datasets_keys <- function(slug) {
  widukind_api <- "http://widukind-api.cepremap.org/api/v1/json/"
  paste0(widukind_api, "providers/", slug, "/datasets/keys") %>% 
  jsonlite::fromJSON() %>% 
  magrittr::extract2("data")
  }
