# South Sudan resilience
# data prep

# prep ---- 

raw <- read_dta("data/local/mesp_household_baseline_hh_survey_combined_weighted.dta") %>%
  filter(!is.na(final_wt1))

write_dta(raw, "data/local/SSD resilience baseline prepared.dta")

frq(dat$county)
frq(dat$state)
frq(dat$region)
frq(raw$q_206)

# dat_wt <- dat_wt %>%
#   mutate(region=case_when(state=="Eastern Equatoria" ~ "Equatoria",
#                           state=="Western Bahr-El-Ghazel" ~ "Bahr el Ghazal",
#                           TRUE ~ "Greater Upper Nile"))
# 

frq(dat$region)

# background ---- 

dat <- dat %>%
  mutate(locality = as_character(q_206),
         urban=ifelse(q_206==2, 1,0),
         hh_sex = as_character(hh_head_sex))

frq(dat$locality)
frq(dat$urban)

# food insecurity ---- 

dat <- dat %>%
  mutate(fies_severe=ifelse(fies_raw>6, 1,0))

frq(dat$fies_severe)

svyrdat %>%
  group_by(fies_severe) %>%
  summarize(survey_mean())

svyrdat %>%
  survey_mean(fies_severe)

# aspirations ---- 

dat <- dat %>%
  mutate(asp1 = ifelse(q_629==1, 1,0),
         asp2 = ifelse(q_630==1, 1,0),
         asp3 = case_when(q_634 < 4 ~ 1,
                          q_634 > 3 ~0,
                          TRUE ~ NA_real_),
         asp4 = case_when(q_635 < 4 ~ 1,
                          q_635 > 3 ~ 0,
                          TRUE ~ NA_real_),
         asp5 = ifelse(q_632==1, 1,0),
         asp6 = ifelse(q_633==6, NA,
                       ifelse(q_633==4 | q_633==5, 1, 0)),
         aspirations_index2 = asp1 + asp2 + asp3 + asp4 + asp5 + asp6,
         aspirations_index2_cen = scale(aspirations_index2))

frq(dat$aspirations_index2)

# social norms ---- 

frq(dat$q_802)
frq(dat$q_802_bin)

frq(dat$q_803)
frq(dat$q_803_bin)

#dat$q_824[dat$q_824==5] <- 4

dat <- dat %>% 
  mutate(against_cattleraid = case_when(q_802_bin == 0 ~ 1,
                                        q_802_bin == 1 ~ 0,
                                        TRUE ~ NA_real_),
         against_earlymarriage = case_when(q_803_bin == 0 ~ 1,
                                        q_803_bin == 1 ~ 0,
                                        TRUE ~ NA_real_),
         q824_rec = (diff(range(q_824, na.rm=T)) + 2) - q_824,
         q825_rec = (diff(range(q_825, na.rm=T)) + 2) - q_825,
         q827_rec = (diff(range(q_827, na.rm=T)) + 2) - q_827)


                                           q_803_bin == 1 ~ 0,
                                           TRUE ~ NA_real_),
         against_earlymarriage = case_when(q_803_bin == 0 ~ 1,
                                           q_803_bin == 1 ~ 0,
                                           TRUE ~ NA_real_),
         against_earlymarriage = case_when(q_803_bin == 0 ~ 1,
                                           q_803_bin == 1 ~ 0,
                                           TRUE ~ NA_real_))

frq(dat$against_cattleraid)
frq(dat$against_earlymarriage)
frq(dat$q824_rec)

## Cattle raiding ---- 




## Gender-based violence ---- 

frq(dat$q_820)


## Girls' education ---- 


## Bride price ---- 


## Trafficking in persons ---- 








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
           shock_death,
         ) %>%
  rename(littlerain_severity = little_rain_severity,
         lossland_severity = loss_land_severity,
         foodpriceinc_severity = food_price_inc_severity,
         aginput_severity = ag_input_severity,
         cropdisease_severity = crop_disease_severity,
         croptheft_severity=crop_theft_severity,
         livestockinput_severity = livestock_input_severity,
         livestockdisease_severity = livestock_disease_severity,
         livestocktheft_severity = livestock_theft_severity,
         nosell_severity = no_sell_crop_severity)


## shocks weighted dataset ---- 

# 
# dat_wt <- dat_wt %>%
#   mutate(shock_flood = ifelse(is.na(q_436), 0,q_436),
#          #flood_ec = q_437,
#          #flood_cons = q_438,
#          shock_drought = ifelse(is.na(q_439), 0, q_439),
#          #drought_ec = q_440,
#          #drought_cons = q_441,
#          shock_erosion = ifelse(is.na(q_442), 0, q_442),
#          shock_lostland = ifelse(is.na(q_445), 0, q_445),
#          shock_foodprice = ifelse(is.na(q_448), 0, q_448),
#          shock_theft = ifelse(is.na(q_451), 0, q_451),
#          shock_cropinputs = ifelse(is.na(q_455), 0, q_455),
#          shock_cropdisease = ifelse(is.na(q_458), 0, q_458),
#          shock_croppests = ifelse(is.na(q_461), 0, q_461),
#          shock_croptheft = ifelse(is.na(q_464), 0, q_464),
#          shock_livestockinputs = ifelse(is.na(q_468), 0, q_468),
#          shock_livestockdisease = ifelse(is.na(q_471), 0, q_471),
#          shock_livestocktheft = ifelse(is.na(q_474), 0, q_474),
#          #shock_nosell = ifelse(is.na(q_477), 0, q_477),
#          #shock_illness = ifelse(is.na(q_480), 0, q_480),
#          #shock_death = ifelse(is.na(q_484), 0, q_484),
#          shock_nosell = q_477,
#          shock_illness = q_480,
#          shock_death = q_484,
#          shocks = shock_flood + 
#            shock_drought + 
#            shock_erosion + 
#            shock_lostland + 
#            shock_foodprice + 
#            shock_theft + 
#            shock_cropinputs + 
#            shock_cropdisease + 
#            shock_croppests + 
#            shock_croptheft + 
#            shock_livestockinputs + 
#            shock_livestockdisease + 
#            shock_livestocktheft + 
#            shock_nosell + 
#            shock_illness + 
#            shock_death)

## donor activity ---- 

dat <- dat %>%
  mutate(donor_act = q_504)

frq(dat$donor_act)

# 5. Community group participation

frq(dat$q_501a)

dat <- dat %>%
  mutate(grp_water = ifelse(q_501a==1, 1,0),
         grp_land = ifelse(q_501b==1,1,0),
         grp_resource = ifelse(q_501c==1, 1,0),
         grp_credit = ifelse(q_501d==1, 1,0),
         grp_savings = ifelse(q_501e==1, 1,0),
         grp_help = ifelse(q_501f==1, 1,0),
         grp_relig = ifelse(q_501g==1, 1,0),
         grp_mother = ifelse(q_501h==1, 1,0),
         grp_women = ifelse(q_501i==1, 1,0),
         grp_youth = ifelse(q_501j==1, 1,0),
         grp_sports = ifelse(q_501k==1, 1,0),
         grp_disaster = ifelse(q_501l==1, 1,0),
         grp_raiding = ifelse(q_501m==1, 1,0),
         grp_herding = ifelse(q_501n==1, 1,0),
         grp_cattleprotect = ifelse(q_501o==1, 1,0),
         grp_animalherding = ifelse(q_501p==1, 1,0)) %>%
  rowwise() %>%
  mutate(grp_sum = sum(c_across(grp_water:grp_animalherding))) %>%
  ungroup()

str(dat)

frq(dat$grp_water)
frq(dat$grp_herding)
frq(dat$grp_sum)


## 6. Conflict and Resilience --- 

frq(dat$q_607_b)

dat <- dat %>%
  mutate(warn_hazards = ifelse(q_607_a==1, 1,0),
         warn_weather = ifelse(q_607_b==1,1,0),
         warn_rainfall = ifelse(q_607_c==1,1,0),
         warn_water = ifelse(q_607_d==1,1,0),
         warn_livestock = ifelse(q_607_e==1,1,0),
         warn_crops = ifelse(q_607_f==1,1,0),
         warn_animalprices = ifelse(q_607_g==1,1,0),
         warn_prices = ifelse(q_607_h==1,1,0),
         warn_grazing = ifelse(q_607_i==1,1,0),
         warn_conflict = ifelse(q_607_j==1,1,0),
         warn_foodprices = ifelse(q_607_k==1,1,0),
         warn_sum = warn_hazards + warn_weather + warn_rainfall + warn_water + warn_livestock + warn_crops + warn_animalprices + warn_prices + 
           warn_grazing + warn_conflict + warn_foodprices,
         emerg_plan = q_610,
         conflict=q_601)

frq(dat$warn_weather)
frq(dat$warn_sum)


## 6. Emergency action plans ---- 

dat <- dat %>%
  mutate(emerg1 = ifelse(is.na(q_610), 0, q_610),
         emerg2 = ifelse(is.na(q_611), 0, q_611),
         emerg3 = case_when(q_612>2 ~ 1,
                            is.na(q_612) ~ 0,
                            q_612 < 3 ~ 0),
         emerg4 = case_when(q_501l == 1 ~ 1,
                            q_501l > 1 ~ 0,
                            is.na(q_501l) ~ 0,
                            TRUE ~ 0),
         emerg_sum = emerg1 + emerg2 + emerg3 + emerg4)

frq(dat$q_501l)
frq(dat$emerg4)
frq(dat$emerg_sum)

## save prepared data ---- 

#write_dta(dat_unw, "data/local/SSD resilience baseline prepared (9 Nov 2021).dta")

write_dta(dat, "data/local/SSD resilience baseline prepared.dta")




