#' Get a serie
#'
#' This function returns the values of a serie
#' 
#' @param slug the slug of a serie
#' @keywords serie
#' 
#' @export
#' @examples
#' get_serie(slug = "bis-pp-ls-q-au")
get_serie <- function(slug) {
  widukind_api <- "http://widukind-api.cepremap.org/api/v1/json/"
  paste0(widukind_api, "series/", "insee-txcho-reg-001515842") %>%
    jsonlite::fromJSON() %>%
    magrittr::extract2("data") %>% 
    magrittr::extract2("values") %>%
    dplyr::select_(.dots = list(~ period, ~ value)) %>% 
    tibble::as_tibble()
}

httr::GET("https://api.db.nomics.world/api/v1/json/datasets/insee-act-partielle-dep/values") %>% 
  content()
