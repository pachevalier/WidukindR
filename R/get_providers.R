#' Get Providers Keys
#'
#' This function returns a vector with all providers keys
#' @param no parameter
#' @keywords providers
#' @export
#' @examples
#' get_providers_keys()

get_providers_keys <- function() {
  "providers/keys" %>% 
    paste0(widukind_api, .) %>% 
    fromJSON() %>% 
    select_data()
  }

#' Get Providers Table
#'
#' This function returns a data frame with data on providers
#' @param no parameter
#' @keywords providers
#' @export
#' @examples
#' get_providers_table()

get_providers_table <- function() {
  "providers" %>% 
    paste0(widukind_api, .) %>% 
    fromJSON() %>% 
    select_data()
  }

