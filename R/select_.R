
#' Select data
#'
#' This function selects the data part of the output
#' @param x a list 
#' @keywords providers
#' @export
#' @examples
#' library(jsonlite)
#' library(magrittr)
#' "providers" %>% 
#'  paste0(widukind_api, .) %>% 
#'  fromJSON() %>%
#'  select_data()

select_data <- function(x) {
  x[["data"]]
}


#' Select values
#'
#' This function extract values
#' @param x a list 
#' @export
#' @examples
#' library(jsonlite)
#' library(magrittr)
#' "bis-pp-ls-q-au" %>% 
#'  paste0(widukind_api, "series/", .) %>% 
#'  fromJSON() %>% 
#'  select_data() %>% 
#'  select_values() 

select_values <- function(x) {
  x[["values"]]
}

  