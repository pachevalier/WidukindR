#' Get Providers Keys
#'
#' This function returns a vector with all providers keys
#'
#' @return a vector
#'
#' @keywords providers
#' @export
#' 
#' @examples
#' get_providers_keys()

get_providers_keys <- function() { 
    widukind_api <- "http://widukind-api.cepremap.org/api/v1/json/"
    paste0(widukind_api, "providers/keys") %>% 
    jsonlite::fromJSON() %>% 
    magrittr::extract2("data")
  }

#' Get Providers Table
#'
#' This function returns a data frame with data on providers
#' 
#' @return a tibble
#' 
#' @keywords providers
#' @export
#' 
#' @examples
#' get_providers_table()

get_providers_table <- function() {
  widukind_api <- "http://widukind-api.cepremap.org/api/v1/json/"
  paste0(widukind_api, "providers") %>%
    jsonlite::fromJSON() %>% 
    magrittr::extract2("data") %>% 
    tibble::as_tibble()
  }

