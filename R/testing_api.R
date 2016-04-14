# http://widukind-api.cepremap.org/

library(jsonlite)
library(magrittr)

providers <- fromJSON("http://widukind-api.cepremap.org/api/v1/json/providers")
providers$data %>% View()

api <- "http://widukind-api.cepremap.org/api/v1/json/"
  
insee_datasets <- fromJSON("http://widukind-api.cepremap.org/api/v1/json/providers/insee/datasets")
insee_datasets$data %>% View()


insee_act_trim_anc <- fromJSON("http://widukind-api.cepremap.org/api/v1/json/dataset/insee-act-trim-anc")
insee_act_trim_anc$data



insee_ipc_2015_ens <- fromJSON("http://widukind-api.cepremap.org/api/v1/json/dataset/insee-ipc-2015-ens")

fromJSON("http://widukind-api.cepremap.org/api/v1/json/dataset/insee-ipc-2015-ens/values?champ-geo=fe")
insee_ipc_2015_ens
insee_ipc_2015_ens$data
pop_evo$data

test <- fromJSON("http://widukind-api.cepremap.org/api/v1/json/datasets/bis-pp-ls/values?reference-area=fr+au")
test$data %>% View()

australia <- fromJSON("http://widukind-api.cepremap.org/api/v1/json/series/bis-pp-ls-q-au")
australia$data$values

base_url <- "http://widukind-api.cepremap.org/api/v1/json/"

serie1 <- "series/bis-pp-ls-q-au" %>% 
  paste0(base_url, .) %>% 
  fromJSON()
serie1_data <- serie1$data$values

year_quarter <- df$Period %>% 
  as.yearqtr(., format = "%Y-Q%q") %>% 
  as.Date() %>% 
  quarter(. , with_year = TRUE)

df %>% ggplot() + 
  geom_line(
    mapping = aes(x = year_quarter, y = Value)
  ) + 
  scale_x_yearqtr(name = "date", n = 10) + 
  scale_y_continuous(name = "unemployment rate", 
                     limits = c(5,12)) + 
  theme_tufte()
