
api <- "http://widukind-api.cepremap.org/api/v1/json/"

select_data <- function(x) {
  x[["data"]]
}

select_values <- function(x) {
  x[["values"]]
}

#' Get Providers Keys
#'
#' This function returns a vector with all providers keys
#' @param no parameter
#' @keywords providers
#' @export
#' @examples
#' get_providers_keys()

get_providers_keys <- function() {
  # get the list of all providers keys
  "providers/keys" %>% 
    paste0(api, .) %>% 
    fromJSON() %>% 
    select_data()
}
