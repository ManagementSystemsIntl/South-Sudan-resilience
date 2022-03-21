# South Sudan resilience
# Shocks explore



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

write_csv(here(shock_key, "output/tables/shocks/shock key.csv"))

getwd()

## Shock severity, by county ---- 

frq(dat$fies_raw)

describe(dat$fies_raw)

fies_mn <- dat %>%
  mean(fies_raw, na.rm=T)

fies_mn <- mean(dat$fies_raw, na.rm=T)

fies_mn

?ggplot

ggplot(dat, aes(fies_raw)) + 
  geom_vline(xintercept=fies_mn, size=2, color="darkgoldenrod3", alpha=.6) +
  geom_bar(fill=medium_blue, width=.5) +
  scale_x_continuous(breaks=0:8) +
  labs(x="",
       y="",
       caption="Mean value 7.7") +
  scale_y_continuous(labels=comma)

+ 
  theme(axis.text.y=element_blank())

ggsave("output/viz/food security/fies unweighted bar.png",
       device="png",
       type="cairo",
       height=4,
       width=7)
