# South Sudan resilience
# data prep

raw <- read_dta("data/local/mesp_household_baseline_hh_survey_scored_combined_13Oct_9Nov2021.dta")

write_dta(raw, "data/local/SSD resilience baseline prepared (9 Nov 2021).dta")



