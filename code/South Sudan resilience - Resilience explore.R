
head(who)


?tab_xtab

tab_xtab(dat$region,
         dat$state,
         show.col.prc = T,
         file="output/tables/region state.html")

getwd()

frq(dat$q_211)


library(reactablefmtr)
library(palmerpenguins)

df <- penguins %>%
  filter(!is.na(sex)) %>%
  group_by(species,sex) %>%
  summarize(flipper_length=list(flipper_length_mm))

df
str(df)

reactable(
  df,
  columns = list(
    species = colDef(maxWidth = 85),
    sex = colDef(maxWidth = 85),
    flipper_length = colDef(
      cell = react_sparkline(df)
    )
  )
)


frq(dat$date)
frq(dat$treat_phase)

fies <- dat %>%
  filter(!is.na(fies_raw)) %>%
  group_by(region, date) %>%
  summarize(fies=list(fies_raw))

str(fies)








