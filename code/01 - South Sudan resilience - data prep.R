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
frq(dat$hh_sex)

# food insecurity ---- 

dat <- dat %>%
  mutate(fies_severe=ifelse(fies_raw>6, 1,0))

frq(dat$fies_severe)

svyrdat %>%
  group_by(fies_severe) %>%
  summarize(survey_mean())

svyrdat %>%
  survey_mean(fies_severe)

# Personal agency ---- 

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
         aspirations_index2_cen = scale(aspirations_index2),
         q636_bin = ifelse(q_636>3, 1,0),
         q637_bin = ifelse(q_637>3, 1,0),
         q638_bin = ifelse(q_638>3, 1,0)) %>%
  rowwise() %>%
  summarize(loc_sum = sum(c(q636_bin, q637_bin,q638_bin), na.rm=T)) %>%
  ungroup()

frq(dat$aspirations_index2)
frq(dat$q638_bin)
frq(dat$loc_sum)

## aspirations comp ---- 

reflects the result of exploratory analysis from markdown file

asp <- dat %>%
  select(asp1:asp6)

asp_pc <- principal(asp,
                    cor="tet")

asp_pc_scrs <- asp_pc$scores %>%
  unlist() %>%
  as.data.frame()

dat <- dat %>%
  mutate(aspirations_comp = asp_pc_scrs$PC1,
         aspirations_comp_resc = scales::rescale(aspirations_comp, to = c(0,100)))

## locus of control comp ---- 

loc_pc <- dat %>%
  select(q_636:q_638) %>%
  principal(cor="poly")

loc_pc

loc_pc_scrs <- loc_pc$scores %>%
  unlist() %>%
  as.data.frame()

dat <- dat %>%
  mutate(loc_comp = loc_pc_scrs$PC1,
         loc_comp_resc = scales::rescale(loc_comp, to=c(0,100)))


## agency latent ---- 

dat %>%
  select(aspirations_comp,
         loc_comp) %>%
  fa.parallel()

agency_fa <- dat %>%
  select(aspirations_comp,
         loc_comp) %>%
  fa(scores="tenBerge",
     fm="ml")

agency_fa

agency_fa_scrs <- agency_fa$scores %>%
  unlist() %>%
  as.data.frame()

dat <- dat %>%
  mutate(agency_latent = agency_fa_scrs$ML1,
         agency_latent_resc = scales::rescale(agency_latent, c(0,100)))


# Social cohesion 


# Social norms ---- 

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
         shock_death = q_484) %>%
  rowwise() %>%
  summarize(shocks=sum(c(shock_flood,
                         shock_drought,
                         shock_erosion,
                         shock_lostland,
                         shock_foodprice,
                         shock_theft, 
                         shock_cropinputs, 
                         shock_cropdisease, 
                         shock_croppests,
                         shock_croptheft, 
                         shock_livestockinputs, 
                         shock_livestockdisease, 
                         shock_livestocktheft,
                         shock_nosell,
                         shock_illness, 
                         shock_death), na.rm=T)) %>%
  ungroup() %>%
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

## shock severity factors

sev <- dat %>%
  select(flood_severity:death_severity)

fa.parallel(sev)

fa_sev_5 <- fa(sev,
               nfactors=5,
               scores="tenBerge",
               fm="ml")

fa_sev_5

ML2: crop disease, crop pests, ag inputs, crop theft

ML1: Livestock input, livestock disease, unable to sell, livestock theft

ML3: Erosion, loss of land, flood, food prices

ML5: Illness and death

ML4: Theft

Explains 63 percent of the variance. Fit statistics sufficient (Tucker Lewis .98, RMSEA .044)

fa_sev_5_scores <- fa_sev_5$scores %>%
  as.data.frame() %>%
  set_names(nm=c("shock_sev_crops", "shock_sev_livestock","shock_sev_drought", "shock_sev_illdeath", "shock_sev_theft"))


dat <- dat %>%
  mutate(shock_sev_crops=fa_sev_5_scores$shock_sev_crops,
         shock_sev_livestock = fa_sev_5_scores$shock_sev_livestock,
         shock_sev_drought=fa_sev_5_scores$shock_sev_drought,
         shock_sev_illdeath = fa_sev_5_scores$shock_sev_illdeath,
         shock_sev_theft = fa_sev_5_scores$shock_sev_theft)

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

# conflict ---- 

dat <- dat %>%
  mutate(conf_impact = ifelse(q_603_clean>2, 1,0),
         trad_res = ifelse(q_605==3, 1,0),
         trad_sats = ifelse(q_606>2, 1,0),
         land_conf_sev = q_602_1 * q_603_clean,
         water_conf_sev = q_602_2 * q_603_clean,
         pasture_conf_sev = q_602_3 * q_603_clean,
         forestry_conf_sev = q_602_4 * q_603_clean,
         cattle_conf_sev = q_602_5 * q_603_clean,
         goat_conf_sev = q_602_6 * q_603_clean,
         migration_conf_sev = q_602_7 * q_603_clean,
         boundary_conf_sev = q_602_8 * q_603_clean,
         revenge_conf_sev = q_602_9 * q_603_clean,
         dowry_conf_sev = q_602_10 * q_603_clean,
         elope_conf_sev = q_602_11 * q_603_clean,
         cattleraid_conf_sev = q_602_12 * q_603_clean,
         fishgrudge_conf_sev = q_602_13 * q_603_clean,
         gbv_conf_sev = q_602_14 * q_603_clean,
         livelihood_conf_sev = q_602_15 * q_603_clean,
         ag_conf_sev = q_602_16 * q_603_clean)

## conflict factors

frq(dat$q_602_1)

conf <- dat %>%
  select(q_602_1:q_602_16)

conf[is.na(conf)] <- 0

fa.parallel(conf,
            cor="tet")

# 6. Emergency action plans ---- 

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
         emerg_sum = emerg1 + emerg2 + emerg3 + emerg4,
         emerg_effective = ifelse(q_612>2, 1,0))

frq(dat$q_501l)
frq(dat$emerg4)
frq(dat$emerg_sum)

## save prepared data ---- 

#write_dta(dat_unw, "data/local/SSD resilience baseline prepared (9 Nov 2021).dta")

write_dta(dat, "data/local/SSD resilience baseline prepared (10 Dec 2021).dta")

lapply(dat, class)

write_csv(datNames, here("data/local/prepared varnames.csv"))


