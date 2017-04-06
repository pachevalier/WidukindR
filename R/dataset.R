#' Get frequencies
#'
#' This function returns a vector with all possible frequencies for a dataset
#' @param slug the slug of the dataset
#' 
#' @keywords dataset
#' 
#' @export
#' 
#' @examples
#' 
#' get_frequencies(slug = "insee-act-trim-anc")
#' 
get_frequencies <- function(slug){
  widukind_api <- "http://widukind-api.cepremap.org/api/v1/json/"
  paste0(widukind_api, "dataset/", slug, "/frequencies") %>% 
  jsonlite::fromJSON() %>%
  magrittr::extract2("data")
}

#' Get series of a dataset
#'
#' This function returns a data frame with all series for a dataset
#' @param dataset the slug of the dataset
#' @keywords dataset
#' @export
#' @examples
#' get_series(slug = "insee-act-trim-anc")
#' 
get_series <- function(slug){
  widukind_api <- "http://widukind-api.cepremap.org/api/v1/json/"
  paste0(widukind_api, "datasets/", slug, "/series") %>% 
  jsonlite::fromJSON() %>%
  magrittr::extract2("data")
}

#' Get attributes keys
#'
#' This function returns a vector of slug of attributes
#' @param dataset the slug of the dataset
#' @keywords dataset
#' @export
#' @examples
#' get_attributes_keys(slug = "insee-act-trim-anc")

get_attributes_keys <- function(slug) {
  widukind_api <- "http://widukind-api.cepremap.org/api/v1/json/"
  paste0(widukind_api, "datasets/", slug, "/attributes/keys") %>%
  jsonlite::fromJSON() %>%
  magrittr::extract2("data")
  }


#' Get attributes
#'
#' This function returns a list of attributes
#' @param slug the slug of the dataset
#' @keywords dataset
#' @export
#' @examples
#' get_attributes(slug = "insee-act-trim-anc")

get_attributes <- function(slug) {
  widukind_api <- "http://widukind-api.cepremap.org/api/v1/json/"
  paste0(widukind_api, "datasets/", slug, "/attributes") %>%
  jsonlite::fromJSON() %>%
  magrittr::extract2("data")
  }

#' Get dimensions keys
#'
#' This function returns a list of dimensions
#' @param dataset the slug of the dataset
#' @keywords dataset
#' @export
#' @examples
#' get_dimensions_keys("insee-cho-an-halo")

get_dimensions_keys <- function(slug) {
  widukind_api <- "http://widukind-api.cepremap.org/api/v1/json/"
  paste0(widukind_api, "datasets/", slug, "/dimensions/keys") %>%
  jsonlite::fromJSON() %>%
  magrittr::extract2("data")
  }

#' Get dimensions
#'
#' This function returns a list of dimensions
#' 
#' @param slug the slug of the dataset
#' @keywords dataset
#' @export
#' @examples
#' get_dimensions("insee-cho-an-halo")

get_dimensions <- function(slug) {
  widukind_api <- "http://widukind-api.cepremap.org/api/v1/json/"
  paste0(widukind_api, "datasets/", slug, "/dimensions") %>%
  jsonlite::fromJSON() %>%
  magrittr::extract2("data")
  }

