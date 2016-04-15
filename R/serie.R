#' Get a serie
#'
#' This function returns the values of a serie
#' @param serie the slug of a serie
#' @keywords serie
#' @export
#' @examples
#' get_serie(serie = "bis-pp-ls-q-au")

get_serie <- function(serie) {
  serie %>%
    paste0(widukind_api, "series/", .) %>%
    fromJSON() %>%
    select_data() %>%
    select_values()
}

