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
    paste0(widukind_api, "dataset/", ., "/frequencies") %>% 
    fromJSON() %>% 
    select_data()
}

#' Get series of a dataset
#'
#' This function returns a data frame with all series for a dataset
#' @param dataset the slug of the dataset
#' @keywords dataset
#' @export
#' @examples
#' get_series(dataset = "insee-act-trim-anc")

get_series <- function(dataset){
  dataset %>% 
    paste0(widukind_api, "datasets/", ., "/series") %>% 
    fromJSON() %>% 
    select_data()
}

#' Get attributes keys
#'
#' This function returns a vector of slug of attributes
#' @param dataset the slug of the dataset
#' @keywords dataset
#' @export
#' @examples
#' get_attributes_keys(dataset = "insee-act-trim-anc")

get_attributes_keys <- function(dataset) {
    dataset %>%
      paste0(widukind_api, "datasets/", ., "/attributes/keys") %>%
      fromJSON() %>%
      select_data()
  }


#' Get attributes
#'
#' This function returns a list of attributes
#' @param dataset the slug of the dataset
#' @keywords dataset
#' @export
#' @examples
#' get_attributes(dataset = "insee-act-trim-anc")

get_attributes <- function(dataset) {
  dataset %>%
    paste0(widukind_api, "datasets/", ., "/attributes") %>%
    fromJSON() %>%
    select_data()
  }


#' Get dimensions keys
#'
#' This function returns a list of dimensions
#' @param dataset the slug of the dataset
#' @keywords dataset
#' @export
#' @examples
#' get_dimensions_keys("insee-cho-an-halo")

get_dimensions_keys <- function(dataset) {
  dataset %>%
    paste0(widukind_api, "datasets/", ., "/dimensions/keys") %>%
    fromJSON() %>%
    select_data()
  }



#' Get dimensions
#'
#' This function returns a list of dimensions
#' @param dataset the slug of the dataset
#' @keywords dataset
#' @export
#' @examples
#' get_dimensions("insee-cho-an-halo")

get_dimensions <- function(dataset) {
  dataset %>%
    paste0(widukind_api, "datasets/", ., "/dimensions") %>%
    fromJSON() %>%
    select_data()
  }

