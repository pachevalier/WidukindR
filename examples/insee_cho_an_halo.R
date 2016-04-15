# 
# # We look at the list of all insee datasets
# get_datasets(provider = "insee") 
# get_datasets_keys(provider = "insee") 
# 
# # We choose Insee-cho-an-halo
# get_frequencies("insee-cho-an-halo")
# 
# "insee-tnb-reg" %>% 
#   get_frequencies()
# 
# 
# get_attributes_keys("insee-cho-an-halo")
# attributes <- get_attributes("insee-cho-an-halo") 
# get_dimensions_keys("insee-cho-an-halo")
# dimensions <- get_dimensions("insee-cho-an-halo")
# dimensions$sexe
# 
# 
# http://widukind-api.cepremap.org/api/v1/json/datasets/insee-cho-an-halo/values?sexe=1&age=15
# test <- "datasets/insee-cho-an-halo/values?sexe=1" %>% 
#   paste0(api, .) %>% 
#   fromJSON() %>% 
#   select_data()
# 
# %>% 
#   select_values()
# 
# test %>% str()
# 
# 
# %>% 
#   str()
# 
# http://widukind-api.cepremap.org/api/v1/json/datasets//values?sexe=1
# 
# series <- get_series("insee-cho-an-halo")
# 
# serie <- get_serie("insee-cho-an-halo-001739436") %>% 
#   mutate(
#     period = as.numeric(period), 
#     value = as.numeric(value)
#   )
# 
# serie %>% str()
# 
# serie %>% 
#   ggplot() + 
#   geom_line(
#     mapping = aes(x = period, y = value)
#   ) + 
#   scale_y_continuous() + 
#   scale_x_continuous() + 
#   theme_fivethirtyeight()
# 
