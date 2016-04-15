#' Get frequencies
#'
#' This function returns a vector with all possible frequencies for a dataset
#' @param dataset the slug of the dataset
#' @keywords dataset
#' @export
#' @examples
#' get_frequencies(dataset = "insee-act-trim-anc")

get_frequencies <- function(dataset){
  dataset %>% 
    paste0(api, "dataset/", ., "/frequencies") %>% 
    fromJSON() %>% 
    select_data()
}

#' Get series
#'
#' This function returns a data frame with all series for a dataset
#' @param dataset the slug of the dataset
#' @keywords dataset
#' @export
#' @examples
#' get_series(dataset = "insee-act-trim-anc")

get_series <- function(dataset){
  dataset %>% 
    paste0(api, "datasets/", ., "/series") %>% 
    fromJSON() %>% 
    select_data()
}


