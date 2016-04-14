
# We look at the list of all insee datasets
get_datasets(provider = "insee") %>% View()
get_datasets_keys(provider = "insee") 

# We choose Insee-cho-an-halo
get_frequencies("insee-cho-an-halo")
get_attributes_keys("insee-cho-an-halo")
attributes <- get_attributes("insee-cho-an-halo") 
get_dimensions_keys("insee-cho-an-halo")
dimensions <- get_dimensions("insee-cho-an-halo")
dimensions$sexe

series <- get_series("insee-cho-an-halo")

serie <- get_serie("insee-cho-an-halo-001739436") %>% 
  mutate(
    period = as.numeric(period), 
    value = as.numeric(value)
  )

serie %>% str()

serie %>% 
  ggplot() + 
  geom_line(
    mapping = aes(x = period, y = value)
  ) + 
  scale_y_continuous() + 
  scale_x_continuous() + 
  theme_fivethirtyeight()

