# South Sudan resilience
# data prep

# prep ---- 

#raw <- read_dta("data/local/mesp_household_baseline_hh_survey_combined_weighted.dta") %>%
#  filter(!is.na(final_wt1))

#mesp_household_baseline_hh_survey_combined_weighted



#write_dta(raw, "data/local/SSD resilience baseline prepared (16 Dec 2021).dta")

#dat <- read_dta(here("data/local/SSD resilience baseline prepared (16 Dec 2021).dta"))


# background ---- 

names(hh)
frq(hh$age)
frq(hh$)

hh <- hh %>%
  #rename(age = q_304, sex=q_302) %>%
  mutate(age_dec=case_when(age<10 ~ 1,
                           age>9 & age<20 ~ 2,
                           age>19 & age<30 ~ 3,
                           age> 29 & age<40 ~ 4,
                           age>39 & age<50 ~ 5,
                           age>49 & age<60 ~ 6,
                           age>59 & age<70 ~ 7,
                           age>69 & age<80 ~ 8,
                           age>79 & age<90 ~ 9,
                           age>89 ~ 10,
                           TRUE ~ NA_real_),
         age_cat = case_when(age<10 ~ 1,
                             age>9 & age<30 ~ 2,
                             age>29 & age<55 ~ 3,
                             age>54 ~ 4),
         literate=ifelse(q_305==1, 1,0),
         no_ed=ifelse(q_308==0, 1,0),
         prim_ed = ifelse(q_308==1, 1,0),
         sec_ed = ifelse(q_308>1, 1,0),
         measles_vacc = ifelse(q_315==1, 1,0)) %>%
  set_labels(age_dec, labels=age_dec_key[,2])
  

frq(hh$age_dec)
frq(hh$literate)
frq(hh$q_308)
frq(hh$no_educ)
frq(hh$q_306)
frq(hh$measles_vacc)

dat <- dat %>%
  mutate(locality = as_character(q_206),
         urban=ifelse(q_206==2, 1,0),
         hh_sex = as_character(hh_head_sex),
         hh_ed_ord = case_when(hh_edu==0 ~ 0,
                               hh_edu==1 ~ 1,
                               hh_edu>1 ~ 2),
         no_educ = ifelse(hh_ed_ord==0, 1,0),
         prim_educ = ifelse(hh_ed_ord==1, 1,0),
         sec_educ = ifelse(hh_ed_ord==2, 1,0),
         visited_clinic=ifelse(q_704==1, 1,0),
         hlth_rating = ifelse(q_706<3, 1,0)) %>%
  set_labels(hh_ed_ord, labels=c("None","Primary","Secondary or higher"))

frq(dat$hh_ed_ord)
frq(dat$prim_educ)
frq(dat$visited_clinic)
frq(dat$hlth_rating)


# 4.22 - 4.35 Food insecurity ---- 

dat <- dat %>%
  mutate(fies_severe=ifelse(fies_raw>6, 1,0))

# household hunger scale ---- 

frq(dat$hhs)
frq(dat$hhs_cat)
frq(dat$hhs_ord)
frq(dat$hhs_3)

frq(dat$q_434)
frq(dat$q_435)

dat <- dat %>%
  mutate(hhs_severe=ifelse(hhs_cat==3, 1,0))

frq(dat$hhs_severe)

# 6.29 - 6.38 Personal agency ---- 

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
  mutate(loc_sum = sum(c(q636_bin, q637_bin,q638_bin), na.rm=T)) %>%
  ungroup()

## household hunger scale ---- 

dat <- dat %>%
  mutate(hhs_1 = case_when(q_431<3 ~ 1,
                           q_431==3 ~ 2,
                           is.na(q_431) ~ 0),
         hhs_2 = case_when(q_433<3 ~ 1,
                           q_433==3 ~ 2,
                           is.na(q_433) ~ 0),
         hhs_3 = case_when(q_435<3 ~ 1,
                           q_435==3 ~ 2,
                           is.na(q_435) ~ 0),
         hhs = hhs_1 + hhs_2 + hhs_3,
         hhs_cat = case_when(hhs<2 ~ 1,
                             hhs==2 | hhs==3 ~ 2,
                             hhs>3 ~ 3)
  ) %>%
  set_labels(hhs_1:hhs_3, labels=hhs_labs) %>%
  set_labels(hhs_cat, labels=c("No hunger","Moderate hunger","Severe hunger")) %>%
  mutate(hhs_ord = ordered(hhs_cat,
                           levels=1:3,
                           labels=hhs_cat_labs))

## aspirations comp ---- 

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


# 4.90 - 4.98 Social cohesion ----

socap <- dat %>%
  select(q_490, rc_q_491, q_494, rc_q_495,
         q_492, rc_q_493, q_496, rc_q_497)

### bonding social capital ---- 

#### PCA ----

fa.parallel(socap[,1:4],
            cor="tet")

prin_bond <- principal(socap[,1:4],
                       cor="tet")
prin_bond

prin_bond_scrs <- prin_bond$scores %>%
  unlist() %>%
  as.data.frame()

dat <- dat %>%
  mutate(bonding_comp = prin_bond_scrs$PC1,
         bonding_comp_resc = unlist(rescale(bonding_comp, c(0,100))))

#### Factor analysis ---- 

fa_bond <- fa(socap[,1:4],
              cor="tet",
              #scores="tenBerge",
              fm="ml")
fa_bond

fa_bond_scrs <- fa_bond$scores %>%
  unlist() %>%
  as.data.frame()

str(fa_bond_scrs)

dat <- dat %>%
  mutate(bonding_fac = fa_bond_scrs$ML1,
         bonding_fac_resc = unlist(scales::rescale(bonding_fac, c(0,100))),
         bonding_fac_resc = as.numeric(bonding_fac_resc))


### bridging social capital ---- 

#### PCA 

fa.parallel(socap[,5:8],
            cor="tet")

prin_bridge_scrs <- prin_bridge$scores %>%
  unlist() %>%
  as.data.frame()

dat <- dat %>%
  mutate(bridging_comp = prin_bridge_scrs$PC1,
         bridging_comp_resc = unlist(rescale(bridging_comp, c(0,100)))) %>%
  mutate(bridging_comp_resc = as.numeric(bridging_comp_resc))


#### factor analysis

fa_bridge <- fa(socap[,5:8],
                cor="tet",
                #scores="tenBerge",
                fm="ml")
fa_bridge


fa_bridge_scrs <- fa_bridge$scores %>%
  unlist() %>%
  as.data.frame()


dat <- dat %>%
  mutate(bridging_fac = fa_bridge_scrs$ML1,
         bridging_fac_resc = as.vector(scales::rescale(bridging_fac, c(0,100)))) %>%
  mutate(bridging_fac_resc = as.numeric(bridging_fac_resc))

### Cohesion index

prin_bond_brdg <- dat %>%
  select(bonding_comp, bridging_comp) %>%
  principal()

prin_bond_brdg

prin_bond_brdg_scrs <- prin_bond_brdg$scores %>%
  unlist() %>%
  as.data.frame()

dat <- dat %>%
  mutate(cohesion_comp_latent = prin_bond_brdg_scrs$PC1,
         cohesion_comp_latent_resc = scales::rescale(cohesion_comp_latent, c(0,100)))

prin_socap_scrs <- prin_socap$scores %>%
  unlist() %>%
  as.data.frame()

dat <- dat %>%
  mutate(cohesion_sum = rowSums(socap),
         cohesion_comp = prin_socap_scrs$PC1,
         cohesion_comp_resc = scales::rescale(cohesion_comp, to=c(0,100)))


cohesion_fac <- dat %>%
  select(bonding_fac,
         bridging_fac) %>%
  fa(scores="tenBerge",
     fm="ML")

cohesion_fac

cohesion_fac_scrs <- cohesion_fac$scores %>%
  unlist() %>%
  as.data.frame()

dat <- dat %>%
  mutate(cohesion_latent = cohesion_fac_scrs$ML1,
         cohesion_latent_resc = scales::rescale(cohesion_latent, c(0,100)))

## 4.01 - 4.02 Sources of income ---- 

inc <- dat %>%
  select(q_401_a_bin,
         q_401_b_bin,
         q_401_c_bin,
         q_401_d_bin,
         q_401_e_bin,
         q_401_f_bin,
         q_401_g_bin,
         q_401_h_bin,
         q_401_i_bin,
         q_401_j_bin,
         q_401_k_bin,
         q_401_l_bin,
         q_401_m_bin,
         q_401_n_bin,
         q_401_o_bin,
         q_401_p_bin,
         q_401_q_bin,
         q_401_r_bin,
         q_401_s_bin,
         q_401_t_bin)

fa.parallel(inc,
            cor="tet")


fa_inc_7 <- fa(inc,
               nfactors=7,
               scores="tenBerge",
               fm="ml",
               cor="tet")
fa_inc_7


fa_inc_7_ldngs <- as.matrix(fa_inc_7$loadings) %>%
  unclass() %>%
  as.data.frame() %>%
  rownames_to_column("varname") %>%
  select(1:8) %>%
  left_join(inc_key) %>%
  select(9,11, 2:8) 

fa_inc_7_ldngs


fa_inc_7_scores <- data.frame(fa_inc_7$scores)

dat <- dat %>%
  mutate(inc_fac_livestocksales=fa_inc_7_scores$ML4,
         inc_fac_pettytrade=fa_inc_7_scores$ML5,
         inc_fac_agwage=fa_inc_7_scores$ML1,
         inc_fac_wage=fa_inc_7_scores$ML3,
         inc_fac_proprent=fa_inc_7_scores$ML6,
         inc_fac_farmer=fa_inc_7_scores$ML2,
         inc_fac_safetynet=fa_inc_7_scores$ML7)


## inc factors, by ranking ----

inc_rank <- dat %>%
  select(q_402_a,
         q_402_b,
         q_402_c,
         q_402_d,
         q_402_e,
         q_402_f,
         q_402_g,
         q_402_h,
         q_402_i,
         q_402_j,
         q_402_k,
         q_402_l,
         q_402_m,
         q_402_n,
         q_402_o,
         q_402_p,
         q_402_q,
         q_402_r,
         q_402_s,
         q_402_t)


inc_rank[is.na(inc_rank)] <- 0

inc_rank2 <- dat %>%
  mutate(farm_rank = ifelse(is.na(q_402_a), 0,
                            ifelse(q_402_a!=0, 4-q_402_a, 0)),
         cattle_rank = ifelse(is.na(q_402_b), 0,
                              ifelse(q_402_b!=0, 4-q_402_b, 0)),
         goat_rank = ifelse(is.na(q_402_c), 0,
                            ifelse(q_402_c!=0, 4-q_402_c, 0)),
         sheep_rank = ifelse(is.na(q_402_d), 0,
                             ifelse(q_402_d!=0, 4-q_402_d, 0)),
         fish_rank = ifelse(is.na(q_402_e), 0,
                            ifelse(q_402_e!=0, 4-q_402_e, 0)),
         agwage_in_rank = ifelse(is.na(q_402_f), 0,
                                 ifelse(q_402_f!=0, 4-q_402_f, 0)),
         agwage_out_rank = ifelse(is.na(q_402_g), 0,
                                  ifelse(q_402_g!=0, 4-q_402_g, 0)),
         wage_in_rank = ifelse(is.na(q_402_h), 0,
                               ifelse(q_402_h!=0, 4-q_402_h, 0)),
         wage_out_rank = ifelse(is.na(q_402_i), 0,
                                ifelse(q_402_i!=0, 4-q_402_i, 0)),
         salary_rank = ifelse(is.na(q_402_j), 0,
                              ifelse(q_402_j!=0, 4-q_402_j, 0)),
         bush_rank = ifelse(is.na(q_402_k), 0,
                            ifelse(q_402_k!=0, 4-q_402_k, 0)),
         honey_rank = ifelse(is.na(q_402_l), 0,
                             ifelse(q_402_l!=0, 4-q_402_l, 0)),
         petty_other_rank = ifelse(is.na(q_402_m), 0,
                                   ifelse(q_402_m!=0, 4-q_402_m, 0)),
         petty_own_rank = ifelse(is.na(q_402_n), 0,
                                 ifelse(q_402_n!=0, 4-q_402_n, 0)),
         other_ag_rank = ifelse(is.na(q_402_o), 0,
                                ifelse(q_402_o!=0, 4-q_402_o, 0)),
         other_nonag_rank = ifelse(is.na(q_402_p), 0,
                                   ifelse(q_402_p!=0, 4-q_402_p, 0)),
         rent_rank = ifelse(is.na(q_402_q), 0,
                            ifelse(q_402_q!=0, 4-q_402_q, 0)),
         remit_rank = ifelse(is.na(q_402_r), 0,
                             ifelse(q_402_r!=0, 4-q_402_r, 0)),
         gift_rank = ifelse(is.na(q_402_s), 0,
                            ifelse(q_402_s!=0, 4-q_402_s, 0)),
         safety_rank = ifelse(is.na(q_402_t), 0,
                              ifelse(q_402_t!=0, 4-q_402_t, 0)),
  ) %>%
  select(farm_rank:safety_rank)


fa.parallel(inc_rank2,
            cor="poly")



fa_incrank2_8 <- fa(inc_rank2,
                    cor="poly",
                    nfactors=8,
                    scores="tenBerge",
                    fm="ml")

fa_incrank2_8


fa_incrank2_8_scrs <- fa_incrank2_8$scores %>%
  unlist() %>%
  as.data.frame()


dat <- dat %>%
  mutate(incrank_fac_livestock = fa_incrank2_8_scrs$ML6,
         incrank_fac_selfemployed = fa_incrank2_8_scrs$ML7,
         incrank_fac_rentremitsal = fa_incrank2_8_scrs$ML5,
         incrank_fac_agwage = fa_incrank2_8_scrs$ML4,
         incrank_fac_wageout = fa_incrank2_8_scrs$ML1,
         incrank_fac_farm = fa_incrank2_8_scrs$ML3,
         incrank_fac_honeygiftfish = fa_incrank2_8_scrs$ML8,
         incrank_fac_pettytradeown = fa_incrank2_8_scrs$ML2)


# Early warning systems

ews <- dat %>%
  select(warn_hazards:warn_foodprices)

ltm_ews <- ltm(ews ~ z1)
ltm_ews

fa_ews_4 <- fa(ews,
               nfactors=4,
               scores="tenBerge",
               fm="ml",
               cor="tet")
fa_ews_4


fa_ews_4_ldngs <- as.matrix(fa_ews_4$loadings) %>%
  unclass() %>%
  as.data.frame() %>%
  rownames_to_column("varname") %>%
  select(1:5) 

fa_ews_4_ldngs



fa_ews_4_scores <- data.frame(fa_ews_4$scores)

dat <- dat %>%
  mutate(ews_fac_prices = fa_ews_4_scores$ML3,
         ews_fac_weather = fa_ews_4_scores$ML4,
         ews_fac_farming = fa_ews_4_scores$ML1,
         ews_fac_conflict = fa_ews_4_scores$ML2)

## Latent variable ---- 


ews_facs <- dat %>%
  select(ews_fac_prices:ews_fac_conflict)

fa.parallel(ews_facs)


fa_ews_facs_scrs <- fa_ews_facs$scores %>%
  unlist() %>%
  as.data.frame()

dat <- dat %>%
  mutate(ews_latent = fa_ews_facs_scrs$ML1,
         ews_latent_resc = scales::rescale(ews_latent, c(0,100)))

# Emergency action plans ---- 

emerg <- dat %>%
  select(emerg1:emerg4)


ltm_emerg <- ltm(emerg ~ z1)
ltm_emerg


fa.parallel(emerg,
            cor="tet")



fa_emerg <- fa(emerg,
               scores="tenBerge",
               fm="ML")
fa_emerg



fa_emerg_scrs <- fa_emerg$scores %>%
  unlist() %>%
  as.data.frame()

dat <- dat %>%
  mutate(emerg_fac = fa_emerg_scrs$ML1,
         emerg_fac_resc = scales::rescale(emerg_fac, c(0,100)))

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



## Cattle raiding ---- 




## Gender-based violence ---- 

frq(dat$q_820)


## Girls' education ---- 


## Bride price ---- 


## Trafficking in persons ---- 








# 5.01 - shocks ---- 

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

# 5.01 - 5.03 Community group participation ----

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


grps <- dat %>%
  select(grp_water:grp_animalherding)

l1 <- ltm(grps ~ z1)

l1


fa.parallel(grps,
            cor="tet")

# 5 factors, 3 components

fa_grps_5 <- fa(grps,
                nfactors=5,
                scores="tenBerge",
                fm="ml",
                cor="tet")


fa_grps_5


fa_grps_5_scrs <- fa_grps_5$scores %>%
  as.data.frame()

dat <- dat %>%
  mutate(grp_fac_cattle = fa_grps_5_scrs$ML3,
         grp_fac_women = fa_grps_5_scrs$ML4,
         grp_fac_finance = fa_grps_5_scrs$ML2,
         grp_fac_sports = fa_grps_5_scrs$ML1,
         grp_fac_nature = fa_grps_5_scrs$ML5)

grp_facs <- dat %>%
  select(grp_fac_cattle:grp_fac_nature)

fa.parallel(grp_facs)

fa_grp_fac <-fa(grp_facs,
                scores="tenBerge",
                fm="ml")

fa_grp_fac


fa_grp_fac_scrs <- fa_grp_fac$scores %>%
  unlist() %>%
  as.data.frame()

dat <- dat %>%
  mutate(grp_latent = fa_grp_fac_scrs$ML1,
         grp_latent_resc = scales::rescale(grp_latent, c(0,100)))

## 6.10 - 6.12 Early warning systems ---- 

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

ews <- dat %>%
  select(warn_hazards:warn_foodprices)

fa.parallel(ews,
            cor="tet")

fa_ews_4 <- fa(ews,
               nfactors=4,
               scores="tenBerge",
               fm="ml",
               cor="tet")
fa_ews_4

fa_ews_4_ldngs <- as.matrix(fa_ews_4$loadings) %>%
  unclass() %>%
  as.data.frame() %>%
  rownames_to_column("varname") %>%
  select(1:5) 

fa_ews_4_ldngs

fa_ews_4_scores <- data.frame(fa_ews_4$scores)

dat <- dat %>%
  mutate(ews_fac_prices = fa_ews_4_scores$ML3,
         ews_fac_weather = fa_ews_4_scores$ML4,
         ews_fac_farming = fa_ews_4_scores$ML1,
         ews_fac_conflict = fa_ews_4_scores$ML2)


ews_facs <- dat %>%
  select(ews_fac_prices:ews_fac_conflict)

fa.parallel(ews_facs)


2 factors, 1 component

fa_ews_facs <- fa(ews_facs,
                  scores="tenBerge",
                  fm="ml")

fa_ews_facs

fa_ews_facs_scrs <- fa_ews_facs$scores %>%
  unlist() %>%
  as.data.frame()

dat <- dat %>%
  mutate(ews_latent = fa_ews_facs_scrs$ML1,
         ews_latent_resc = scales::rescale(ews_latent, c(0,100)))



## 6.03 - 6.06 Conflict ---- 

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

### conflict factors ----

conf <- dat %>%
  select(q_602_1:q_602_16)

conf[is.na(conf)] <- 0

fa.parallel(conf,
            cor="tet")

fa_conf_4 <- fa(conf,
                cor="tet",
                nfactors=4,
                scores="tenBerge",
                fm="ML")

fa_conf_4

fa_conf_4_ldngs <- as.matrix(fa_conf_4$loadings) %>%
  unclass() %>%
  as.data.frame() %>%
  rownames_to_column("varname") %>%
  select(1:5) %>%
  mutate(conf_lab=conf_labs) %>%
  select(1,6,everything()) 

fa_conf_4_ldngs

pc_conf <- principal(conf,
                     cor="tet")

pc_conf



### severity ---- 

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


## 6.10 - 6.12 Emergency action plans ---- 

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

# Ability to recover binary

dat <- dat %>%
  mutate(ability_recover_bin = ifelse(ability_recover>3, 1,0))

frq(dat$ability_recover_bin)

## additional prep March 2022 (response to comments) ---- 

dat <- dat %>%
  mutate(date=as.POSIXct(strptime(date, format="%m-%d-%Y")),
         phase = case_when(county=="Akobo" |
                             county=="Budi" |
                             county=="Duk" |
                             county=="Leer"|
                             county=="Pibor"|
                             county=="Uror" ~ "Phase 1",
                           TRUE ~ "Phase 2")) 



#table(dat$county, dat$phase)



# Save prepared data ---- 

#write_dta(dat_unw, "data/local/SSD resilience baseline prepared (9 Nov 2021).dta")

write_dta(dat, "data/local/SSD resilience baseline prepared (16 Dec 2021).dta")

lapply(dat, class)

write_csv(datNames, here("data/local/prepared varnames.csv"))

write_dta(hh, "data/local/SSD resilience baseline household roster.dta")


