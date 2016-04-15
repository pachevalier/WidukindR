#' Get datasets for one provider
#'
#' This function returns a dataframe with all datasets for one provider
#' @param provider the slug of the provider
#' @keywords providers
#' @export
#' @examples
#' get_datasets(provider = "insee") 

get_datasets <- function(provider) {
  provider %>% 
    paste0(api, "providers/", ., "/datasets") %>% 
    fromJSON() %>% 
    select_data()
  }

#' Get keys of a dataset
#'
#' This function returns a vector with all datasets keys for one provider
#' @param provider the slug of the provider
#' @keywords providers
#' @export
#' @examples
#' get_datasets_keys(provider = "insee") 

get_datasets_keys <- function(provider) {
  provider %>% 
    paste0(api, "providers/", ., "/datasets/keys") %>% 
    fromJSON() %>% 
    select_data()
}
