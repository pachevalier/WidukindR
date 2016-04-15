
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
#'  paste0(api, .) %>% 
#'  fromJSON() %>%
#'  select_data()

select_data <- function(x) {
  x[["data"]]
}

