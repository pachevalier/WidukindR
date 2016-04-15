# 
# 
# # http://widukind-api.cepremap.org/api/v1/json/datasets/insee-cho-an-halo/values?sexe=1&age=15
# 
# test <- "datasets/insee-cho-an-halo/values?sexe=1&age=15" %>% 
#   paste0(api, .) %>% 
#   fromJSON() %>% 
#   select_data()
# 
# test
# test %>% select_values()
# 
# do.call()
# 
# test <- "datasets/insee-cho-an-halo/values?sexe=1&age=15" %>% 
#   paste0(api, .) %>% 
#   fromJSON() %>% 
#   select_data() %>% 
#   select_values()
