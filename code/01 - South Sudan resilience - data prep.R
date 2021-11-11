# South Sudan resilience
# data prep

# prep ---- 

raw <- read_dta("data/local/mesp_household_baseline_hh_survey_scored_combined_13Oct_9Nov2021.dta")

write_dta(raw, "data/local/SSD resilience baseline prepared (9 Nov 2021).dta")


# shocks ---- 

frq(dat$q_439)
map(dat[,163:211], frq)

#frq(dat$q_436)
#frq(dat$flood_severity)

## shocks unweighted dataset
dat <- dat %>%
  mutate(shock_flood = ifelse(is.na(q_436), 0,q_436),
         #flood_ec = q_437,
         #flood_cons = q_438,
         shock_drought = ifelse(is.na(q_439), 0, q_439),
         #drought_ec = q_440,
         #drought_cons = q_441,
         shock_erosion = ifelse(is.na(q_442), 0, q_442),
         shock_lostland = ifelse(is.na(q_445), 0, q_445),
         shock_foodprice = ifelse(is.na(q_448), 0, q_448),
         shock_theft = ifelse(is.na(q_451), 0, q_451),
         shock_cropinputs = ifelse(is.na(q_455), 0, q_455),
         shock_cropdisease = ifelse(is.na(q_458), 0, q_458),
         shock_croppests = ifelse(is.na(q_461), 0, q_461),
         shock_croptheft = ifelse(is.na(q_464), 0, q_464),
         shock_livestockinputs = ifelse(is.na(q_468), 0, q_468),
         shock_livestockdisease = ifelse(is.na(q_471), 0, q_471),
         shock_livestocktheft = ifelse(is.na(q_474), 0, q_474),
         #shock_nosell = ifelse(is.na(q_477), 0, q_477),
         #shock_illness = ifelse(is.na(q_480), 0, q_480),
         #shock_death = ifelse(is.na(q_484), 0, q_484),
         shock_nosell = q_477,
         shock_illness = q_480,
         shock_death = q_484,
         shocks = shock_flood + 
           shock_drought + 
           shock_erosion + 
           shock_lostland + 
           shock_foodprice + 
           shock_theft + 
           shock_cropinputs + 
           shock_cropdisease + 
           shock_croppests + 
           shock_croptheft + 
           shock_livestockinputs + 
           shock_livestockdisease + 
           shock_livestocktheft + 
           shock_nosell + 
           shock_illness + 
           shock_death)

write_dta(dat, "data/local/SSD resilience baseline prepared (9 Nov 2021).dta")

## shocks weighted dataset ---- 


dat_wt <- dat_wt %>%
  mutate(shock_flood = ifelse(is.na(q_436), 0,q_436),
         #flood_ec = q_437,
         #flood_cons = q_438,
         shock_drought = ifelse(is.na(q_439), 0, q_439),
         #drought_ec = q_440,
         #drought_cons = q_441,
         shock_erosion = ifelse(is.na(q_442), 0, q_442),
         shock_lostland = ifelse(is.na(q_445), 0, q_445),
         shock_foodprice = ifelse(is.na(q_448), 0, q_448),
         shock_theft = ifelse(is.na(q_451), 0, q_451),
         shock_cropinputs = ifelse(is.na(q_455), 0, q_455),
         shock_cropdisease = ifelse(is.na(q_458), 0, q_458),
         shock_croppests = ifelse(is.na(q_461), 0, q_461),
         shock_croptheft = ifelse(is.na(q_464), 0, q_464),
         shock_livestockinputs = ifelse(is.na(q_468), 0, q_468),
         shock_livestockdisease = ifelse(is.na(q_471), 0, q_471),
         shock_livestocktheft = ifelse(is.na(q_474), 0, q_474),
         #shock_nosell = ifelse(is.na(q_477), 0, q_477),
         #shock_illness = ifelse(is.na(q_480), 0, q_480),
         #shock_death = ifelse(is.na(q_484), 0, q_484),
         shock_nosell = q_477,
         shock_illness = q_480,
         shock_death = q_484,
         shocks = shock_flood + 
           shock_drought + 
           shock_erosion + 
           shock_lostland + 
           shock_foodprice + 
           shock_theft + 
           shock_cropinputs + 
           shock_cropdisease + 
           shock_croppests + 
           shock_croptheft + 
           shock_livestockinputs + 
           shock_livestockdisease + 
           shock_livestocktheft + 
           shock_nosell + 
           shock_illness + 
           shock_death)

write_dta(dat_wt, "data/local/SSD resilience baseline prepared.dta")




