
#' Select data
#'
#' This function selects the data part of the output
#' @param x
#' @keywords providers
#' @export
#' @examples
#' load("R/sysdata.rda")
#' "providers" %>% 
#'  paste0(api, .) %>% 
#'  fromJSON() %>%
#'  select_data()

select_data <- function(x) {
  x[["data"]]
}

