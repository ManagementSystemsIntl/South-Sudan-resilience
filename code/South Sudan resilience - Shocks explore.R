# South Sudan resilience
# Shocks explore

shock_labs <- c("Floods",
                "Drought",
                "Erosion",
                "Loss of land",
                "Increase in food prices",
                "Theft", 
                "No crop inputs",
                "Crop disease",
                "Crop pests",
                "Crop theft",
                "No livestock inputs",
                "Livestock disease",
                "Livestock theft",
                "Unable to sell",
                "Illness in household",
                "Death in household")

shock_key <- data.frame(shock=1:16,
                        shock_lab = shock_labs)

shck_mn <- dat %>%
  select(shock_flood:shock_death) %>%
  summarize_all(mean, na.rm=T) %>%
  t() %>%
  as.data.frame() %>%
  rownames_to_column() %>%
  set_names(nm=c("var_name","freq")) %>%
  cbind(shock_key)

shck_mn

shock_key <- shock_key %>%
  mutate(var_name=shck_mn$var_name) %>%
  as.data.frame()

shock_key
str(shock_key)

write_csv(shock_key, "output/tables/shocks/shock key.csv")

getwd()

## Shock severity, by county ---- 

