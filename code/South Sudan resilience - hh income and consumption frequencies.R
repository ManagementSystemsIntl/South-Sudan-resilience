# South Sudan resilience
# 4. Household income and consumption

frq(dat$q_401_a_bin)
describe(dat$q_401_a_bin) %>%
  print(digits=3)

# Overall ---- 

inc_out <- svyrdat %>%
  group_by() %>%
  summarize(crop_production=survey_mean(q_401_a_bin),
            cattle_production = survey_mean(q_401_b_bin),
            goat_production = survey_mean(q_401_c_bin),
            sheep_production = survey_mean(q_401_d_bin),
            fishing = survey_mean(q_401_e_bin),
            Agwage_within = survey_mean(q_401_f_bin),
            Agwage_without = survey_mean(q_401_g_bin),
            nonAgwage_within = survey_mean(q_401_h_bin),
            nonAgwage_without = survey_mean(q_401_i_bin),
            salary = survey_mean(q_401_j_bin),
            bush_products = survey_mean(q_401_k_bin),
            honey = survey_mean(q_401_l_bin),
            petty_trade_other = survey_mean(q_401_m_bin),
            petty_trade_own = survey_mean(q_401_n_bin),
            ownbiz_ag = survey_mean(q_401_o_bin), 
            ownbiz_nonag = survey_mean(q_401_p_bin),
            rent = survey_mean(q_401_q_bin),
            remit = survey_mean(q_401_r_bin),
            gifts = survey_mean(q_401_s_bin),
            safety_net = survey_mean(q_401_t_bin)) 

mn_cols <- seq_len(40) %%2

inc_mn <- inc_out[, mn_cols==T] %>%
  t() %>%
  as.data.frame() %>%
  rownames_to_column()


inc_se <- inc_out[,mn_cols==F] %>%
  t() %>%
  as.data.frame()

inc_frq <- inc_mn %>%
  bind_cols(inc_se) %>%
  set_names(nm=c("income_source","mean","se")) %>%
  mutate(margin=se*1.96,
         lower=mean-1.96*margin,
         upper=mean+1.96*margin,
         inc_lab=inc_labs) %>%
  relocate(inc_lab, .after=income_source)

write_csv(inc_frq, "output/tables/household income/q401 hh income sources.csv")

inc_gt <- inc_frq %>%
  arrange(desc(mean)) %>%
  gt() %>%
  fmt_percent(3:7,
              decimals=1)

inc_gt

gtsave(inc_gt, "output/tables/household income/q401 hh income sources.rtf")







# by county ---- 

inc_cnty_tmp <- svyrdat %>%
  group_by(county) %>%
  summarize(crop_production=survey_mean(q_401_a_bin),
            cattle_production = survey_mean(q_401_b_bin),
            goat_production = survey_mean(q_401_c_bin),
            sheep_production = survey_mean(q_401_d_bin),
            fishing = survey_mean(q_401_e_bin),
            Agwage_within = survey_mean(q_401_f_bin),
            Agwage_without = survey_mean(q_401_g_bin),
            nonAgwage_within = survey_mean(q_401_h_bin),
            nonAgwage_without = survey_mean(q_401_i_bin),
            salary = survey_mean(q_401_j_bin),
            bush_products = survey_mean(q_401_k_bin),
            honey = survey_mean(q_401_l_bin),
            petty_trade_other = survey_mean(q_401_m_bin),
            petty_trade_own = survey_mean(q_401_n_bin),
            ownbiz_ag = survey_mean(q_401_o_bin), 
            ownbiz_nonag = survey_mean(q_401_p_bin),
            rent = survey_mean(q_401_q_bin),
            remit = survey_mean(q_401_r_bin),
            gifts = survey_mean(q_401_s_bin),
            safety_net = survey_mean(q_401_t_bin)) 




cnty_cols <- seq_len(41) %%2

inc_cnty_mn <- inc_cnty_tmp[, cnty_cols==F] %>%
  mutate(county=county_key$county) %>%
  relocate(county, .before=1) %>%
  pivot_longer(cols=2:21,
               names_to="income_source",
               values_to="Percent")

inc_cnty_se <- inc_cnty[,cnty_cols==T] %>%
  pivot_longer(cols=2:21,
               names_to="income_source",
               values_to="se")

inc_cnty_lng <- inc_cnty_mn %>%
  bind_cols(inc_cnty_se[,3]) %>%
  mutate(margin=se*1.96,
         lower=Percent-margin,
         upper=Percent+margin)

inc_cnty <- inc_cnty_mn %>%
  bind_cols(inc_se) 


inc_cnty_gt <- inc_cnty %>% 
  gt()




# community group participation ---- 

grps_sum <- read_csv(here("output/tables/resilience/groups weighted.csv"))

grps_sum_gt <- grps_sum %>%
  gt()

grps_sum_gt








mn_cols <- seq_len(41) %%2

inc_mn <- inc_cnty[, mn_cols==T] %>%
  t() %>%
  as.data.frame() %>%
  rownames_to_column()


inc_se <- inc_cnty[,mn_cols==F] %>%
  t() %>%
  as.data.frame()

inc_cnty_frq <- inc_cnty %>%
  bind_cols(inc_se) 

%>%
  set_names(nm=c("income_source","mean","se")) %>%
  mutate(margin=se*1.96,
         lower=mean-1.96*margin,
         upper=mean+1.96*margin,
         inc_lab=inc_labs) %>%
  relocate(inc_lab, .after=income_source)

inc_cnty_gt <- inc_cnty_frq %>%
  
  
