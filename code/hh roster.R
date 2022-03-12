# South Sudan resilience
# hh schedule

hh <- read_dta("data/local/mesp_household_baseline_hh_survey_schedule_combined_weighted.dta") %>%
  rename(age = q_304, 
         sex=q_302)

head(hh)

# hh id record_id

toy <- dat %>%
  arrange(record_id) %>%
  filter()

frq(hh$q_309)
frq(hh$q_304)
frq(hh$q_302)

hh <- hh  %>%
  mutate(ever_married = ifelse(q_309>1, 1,0),
         early_marriage = ifelse(ever_married==1 & age < 18, 1,0))


frq(hh$early_marriage)


frq(hh$ever_married)
frq(hh$sex)

tes <- hh %>%
  filter(ever_married==1)
  


frq(tes$q_309)
frq(tes$age)

ageMar <- tes %>%
  group_by(record_id, sex) %>%
  summarize(ageMar = mean(age, na.rm=T),
            num_married=n())

ageMar

dat %>%
  filter(county=="Jur River") %>%
  frq(q_488)




frq(hh$q_314)


names(hh)




tab_1 <-
  exibble %>%
  dplyr::select(num, currency) %>%
  gt() %>%
  fmt_number(
    columns = c(num, currency),
    decimals = 1
  ) %>%
  tab_style(
    style = list(
      cell_fill(color = "lightcyan"),
      cell_text(weight = "bold")
    ),
    locations = cells_body(
      columns = num,
      rows = num >= 5000
    )
  ) %>%
  tab_style(
    style = list(
      cell_fill(color = "#F9E3D6"),
      cell_text(style = "italic")
    ),
    locations = cells_body(
      columns = currency,
      rows = currency < 100
    )
  )

tab_1

# Use `sp500` to create a gt table;
# color entire rows of cells based
# on values in a particular column
tab_2 <-
  sp500 %>%
  dplyr::filter(
    date >= "2015-12-01" &
      date <= "2015-12-15"
  ) %>%
  dplyr::select(-c(adj_close, volume)) %>%
  gt() %>%
  tab_style(
    style = cell_fill(color = "lightgreen"),
    locations = cells_body(
      rows = close > open)
  ) %>%
  tab_style(
    style = list(
      cell_fill(color = "red"),
      cell_text(color = "white")
    ),
    locations = cells_body(
      rows = open > close)
  )

# Use `exibble` to create a gt table;
# replace missing values with the
# `fmt_missing()` function and then
# add styling to the `char` column
# with `cell_fill()` and with a
# CSS style declaration
tab_3 <-
  exibble %>%
  dplyr::select(char, fctr) %>%
  gt() %>%
  fmt_missing(everything()) %>%
  tab_style(
    style = list(
      cell_fill(color = "lightcyan"),
      "font-variant: small-caps;"
    ),
    locations = cells_body(columns = char)
  )






