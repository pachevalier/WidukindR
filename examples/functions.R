# 
# 
# select_values <- function(x) {
#   x[["values"]]
# }
# 
# 
# get_attributes <- function(dataset) {
#   dataset %>% 
#     paste0(api, "datasets/", ., "/attributes") %>% 
#     fromJSON() %>% 
#     select_data()
# }
# 
# 
# # get dimensions keys
# 
# get_dimensions_keys <- function(dataset) {
#   dataset %>% 
#     paste0(api, "datasets/", ., "/dimensions/keys") %>% 
#     fromJSON() %>% 
#     select_data()
#   }
# get_dimensions_keys("insee-cho-an-halo")
# 
# 
# get_dimensions <- function(dataset) {
#   dataset %>% 
#     paste0(api, "datasets/", ., "/dimensions") %>% 
#     fromJSON() %>% 
#     select_data()
# }
# 
# get_dimensions("insee-cho-an-halo")
# 
# "datasets/insee-act-trim-anc/dimensions/keys" %>% 
#   paste0(api, .) %>% 
#   fromJSON() %>% 
#   select_data()  
# 
# 
# 
# "datasets/insee-act-trim-anc/dimensions" %>% 
#   paste0(api, .) %>% 
#   fromJSON() %>% 
#   select_data() %>% 
#   str()
# 
# 
# 
# # Get a serie
# get_serie <- function(serie) {
#   serie %>% 
#     paste0(api, "series/", .) %>% 
#     fromJSON() %>% 
#     select_data() %>% 
#     select_values() 
# }
# get_serie(serie = "bis-pp-ls-q-au")
#   