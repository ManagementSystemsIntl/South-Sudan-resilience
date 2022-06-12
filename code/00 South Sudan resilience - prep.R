# South Sudan resilience 
# data prep

# packages ---- 

packages <- c("arm", "BMA", "brms", "corrplot", "dummies","DescTools", "estimatr","extrafont", "extrafontdb", "janitor",
              "reshape2","tidyr","broom", "caret", "haven", "HH","Hmisc","lubridate","knitr", "margins", "magrittr", "plotrix",
              "scales","survey", "srvyr", "sysfonts", "foreign","car", "ICC", "openxlsx", "ggrepel", "readr",
              "readxl", "sjmisc", "sjPlot", "sjstats", "sjlabelled", "skimr","labelled", "texreg", "janitor","psych","dplyr",
              "tidyverse", "viridis", "here", "ggridges", "ggthemes", "DT", "jtools", "huxtable", "stringi", "gghighlight",
              "plm", "brms", "rstan", "rstanarm","tidybayes","texreg","gt","gtsummary","huxtable","stargazer", "gsynth",
              "panelView", "assertr", "pointblank", "validate", "sandwich", "workflowr", "here", "missForest", "ltm", "crosstalk", "reactable", "flextable", "officer")

lapply(packages, library, character.only=T)

# formatting ---- 

# font_import()
# loadfonts(device="win")
# windwsFonts()

font_add_google("Open Sans", "sans-serif")

options(digits=3, scipen=8)
#options(digits=8, scipen=9)

set_flextable_defaults(font.size=10,
                       font.family="Gill Sans Mt")

bigbrdr <- fp_border(width=2)
smlbrdr <- fp_border(width=1, color="#666666")

# set default
base <- theme_bw() + theme(panel.grid.minor.x=element_blank(),
                           panel.grid.minor.y=element_blank(),
                           plot.title=element_text(face="bold",size=18, hjust=.5, family = "Gill Sans Mt"),
                           plot.subtitle = element_text(size=16, family="Gill Sans Mt"),
                           plot.caption=element_text(size=12, family="Gill Sans Mt"),
                           axis.title=element_text(size=16, family="Gill Sans Mt"),
                           axis.text=element_text(size=14, family="Gill Sans Mt"),
                           legend.text=element_text(size=14, family="Gill Sans Mt"),
                           strip.text=element_text(size=14, family="Gill Sans Mt"),
                           panel.border=element_blank(),
                           axis.ticks = element_blank())

theme_set(base)

faceted <- theme_bw() +
  theme(panel.grid.minor.x=element_blank(),
        panel.grid.minor.y=element_blank(),
        plot.title=element_text(face="bold",size=18, hjust=.5, family = "Gill Sans Mt"),
        plot.subtitle = element_text(size=16, family="Gill Sans Mt"),
        plot.caption=element_text(size=12, family="Gill Sans Mt"),
        axis.title=element_text(size=16, family="Gill Sans Mt"),
        axis.text=element_text(size=14, family="Gill Sans Mt"),
        legend.text=element_text(size=14, family="Gill Sans Mt"),
        strip.text=element_text(size=14, family="Gill Sans Mt"))


# colors

# color_names <- c("USAID_blue","USAID_red","rich_black","medium_blue","light_blue", "web_blue","dark_red","dark_gray","medium_gray","light_gray")
# 
# color_id <- c("#002F6C", "#BA0C2F", "#212721", "#0067B9","#A7C6ED", "#205493","#651D32", "#6C6463", "#8C8985", "#CFCDC9")
# 
# USAID_palette <- data.frame(color=color_names,
#                             id=color_id)
# 
# USAID_palette

usaid_blue <- "#002F6C"
usaid_red <- "#BA0C2F"
rich_black <- "#212721"
medium_blue <- "#0067B9"
light_blue <- "#A7C6ED"
web_blue <- "#205493"
dark_red <- "#651D32"
dark_grey <- "#6C6463"
medium_grey <- "#8C8985"
light_grey <- "#CFCDC9"

# data ----

#dat <- read_dta(here("data/local/mesp_household_baseline_hh_survey_weighted.dta"))

#dat_wt <- read_dta(here("data/local/SSD resilience baseline prepared.dta"))

#dat <- read_dta(here("data/local/mesp_household_baseline_hh_survey_combined_weighted.dta")) %>%
#  filter(!is.na(final_wt1))

getwd()

dat <- read_dta(here("data/local/SSD resilience baseline prepared (16 Dec 2021).dta"))

#dat_unw <- read_dta(here("data/local/SSD resilience baseline prepared (9 Nov 2021).dta"))

datNames <- data.frame(names(dat))

svydat <- svydesign(data = dat,
                     ids = ~ea,
                     weights= ~final_wt1,
                     strata = ~county)

svyrdat <- dat %>%
   as_survey_design(ids = ea,
                    strata=county,
                    weights=final_wt1)

#hh <- read_dta(here("data/local/mesp_household_baseline_hh_survey_schedule_combined_weighted.dta")) %>% #rename(age = q_304, sex=q_302)

hh <- read_dta(here("data/local/SSD resilience baseline household roster.dta"))

hh_srvyr <- hh %>% 
  as_survey_design(ids = ea,
                   strata=county,
                   weights=final_wt1)

# labels and keys ---- 
 
sex_key <- data.frame(sex=1:2,
                      sex_lab=c("Male","Female"))

sex_key 


inc_labs <- c("Farm/crop production",
               "Cattle production/sales",
               "Goat production/sales",
               "Sheep production/sales",
               "Fishing and sales",
               "Ag wage labor in village",
               "Ag wage labor outside village",
               "Wage labor in village",
               "Wage labor outside village",
               "Salaried work",
               "Wild bush sales",
               "Honey production/sales",
               "Petty trade other products",
               "Petty trade own products",
               "Other self-employment ag",
               "Other self-employment non-ag",
               "Rental of land/property",
               "Remittances",
               "Gifts/inheritance",
               "Food / cash safety net")
 
 inc_labs2 <- c("a. Farm/crop production",
               "b. Cattle production/sales",
               "c. Goat production/sales",
               "d. Sheep production/sales",
               "e. Fishing and sales",
               "f. Ag wage labor in village",
               "g. Ag wage labor outside village",
               "h. Wage labor in village",
               "i. Wage labor outside village",
               "j. Salaried work",
               "k. Wild bush sales",
               "l. Honey production/sales",
               "m. Petty trade other products",
               "n. Petty trade own products",
               "o. Other self-employment ag",
               "p. Other self-employment non-ag",
               "q. Rental of land/property",
               "r. Remittances",
               "s. Gifts/inheritance",
               "t. Food / cash safety net")

inc_key <- read_csv(here("output/tables/keys/inc key.csv"))
  
# inc_key <- data.frame(inc_code=1:20,
#                        varname=names(inc),
#                        inc_lab=inc_labs,
#                        inc_lab2=inc_labs2)
#  
# write_csv(inc_key, here("output/tables/inc key.csv"))
#  
#  

 shock_key <- read_csv(here("output/tables/shocks/shock key.csv"))
 
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
 
 county_labs <- c("Akobo",
                  "Budi",
                  "Duk",
                  "Leer",
                  "Mayendit",
                  "Paynijar",
                  "Pibor",
                  "Uror",
                  "Wau")

 county_labs2 <- c("Akobo (Nile)",
                  "Budi (Equa)",
                  "Duk (Nile)",
                  "Leer (Nile)",
                  "Mayendit (Nile)",
                  "Paynijar (Nile)",
                  "Pibor (Nile)",
                  "Uror (Nile)",
                  "Wau (Ghazel)")
 
 reg_county_labs <- c("Greater Upper Nile - Akobo",
                       "Equatoria - Budi",
                       "Greater Upper Nile - Duk",
                       "Greater Upper Nile - Leer",
                       "Greater Upper Nile - Mayendit",
                       "Greater Upper Nile - Paynijar",
                       "Greater Upper Nile - Pibor",
                       "Greater Upper Nile - Uror",
                       "Bahr El Ghazel - Wau")

 
 cnty_key <- data.frame(cnty_code = 1:9,
                        county_lab=county_labs,
                        reg_cnty_lab=reg_county_labs)

 cnty_key 
 
 county_key <- read_csv(here("output/tables/keys/county_key.csv"))
 
 reg_state_cnty_key <- dat %>%
   group_by(region, state, county) %>%
   summarize(n=n()) %>%
   select(-n)
 
geo_key <- read_csv(here("output/tables/geo key.csv"))
 
 
 diet_labs <- c("Cereals",
                "Roots/tubers",
                "Vit A vegetables",
                "Leafy greens",
                "Other vegetables",
                "Vit A fruits",
                "Other fruits",
                "Organ meat",
                "Domesticated meat",
                "Bush meat",
                "Eggs",
                "Seafood",
                "Legumes",
                "Milk products",
                "Oil and fats",
                "Sweets",
                "Spices/condiments")

 diet_key <- data.frame(diet_code=1:17,
                        diet_lab=diet_labs) 
 
 fies_key <- read_csv(here("output/tables/keys/fies key.csv"))
 
  conf_labs <- c("Land",
                "Water",
                "Pasture",
                "Forestry",
                "Cattle",
                "Goat",
                "Migration route",
                "Boundary",
                "Revenge",
                "Dowry",
                "Elopement",
                "Cattle raid",
                "Fishing grudge",
                "Gender based violence",
                "Livelihood",
                "Agriculture")

# conf_key <- data.frame(varname=conf_types_mn$conflict,
#                         conf_key=1:16,
#                         conf_lab=conf_labs)
#  
# write_csv(conf_key, "output/tables/conf_key.csv")

conf_key <- read_csv(here("output/tables/keys/conf_key.csv"))
 
conf_key 

res_labs <- c("Dialogue",
              "Alternative dispute resolution",
              "Traditional elders",
              "Faith-based organization",
              "Judiciary",
              "Police/Army",
              "UN",
              "Other")

res_key <- data.frame(res_num=1:8,
                      res_lab=res_labs)

res_key  

socap_labs <- c("Able to lean on relatives\nin community (Bonding)",
                  "Able to help relatives\nin community (Bonding)",
                  "Able to lean on non-relatives\nin community (Bonding)",
                  "Able to help non-relatives\nin community (Bonding)",
                  "Able to lean on relatives\noutside community (Bridging)",
                  "Able to help relatives\noutside community (Bridging)",
                  "Able to lean on non-relatives\n outside community (Bridging)",
                  "Able to help non-relatives\n outside community (Bridging)")

socap_labs

grp_items <- c("q501a","q501b","q501c","q501d","q501e","q501f","q501g","q501h","q501i","q501j","q501k","q501l","q501m","q501n","q501o","q501p")


grp_labs <- c("Water users",
              "Grazing land users",
              "Community natural resources",
              "Credit/microfinance",
              "Savings",
              "Mutual help",
              "Religious",
              "Mothers",
              "Women",
              "Youth",
              "Sports",
              "Disaster planning",
              "Cattle raiding",
              "Cattle herding",
              "Cattle protection",
              "Small animal herding")

grp_key <- data.frame(grp_code=1:16,
                      grp_name = grp_labs)

grp_key

ews_labs <- c("Natural hazards",
              "Weather patterns",
              "Upcoming rainfall",
              "Water prices/availability",
              "Animal health",
              "Crop health",
              "Livestock prices",
              "Animal product prices",
              "Grazing conditions",
              "Conflict",
              "Food prices")

ews_key <- data.frame(ews_code = 1:11,
                      ews_lab = ews_labs)

ews_key

emerg_labs <- c("Emergency action plan in place",
  "Emergency plan addressed shock that household faced",
  "Emergency plan successfully mitigated effect of shock",
  "Disaster planning group in community")

rate_labs <- c("Never",
               "Rarely",
               "Sometimes",
               "Often")
rate_labs

hhs_labs <- c("Never",
              "Sometimes",
              "Often")

q314_key <- data.frame(q_314=1:9,
                       activity_lab=c("Crop farming",
                                      "Defense",
                                      "Education",
                                      "Animal husbandry",
                                      "Trade",
                                      "Public administration",
                                      "Health",
                                      "Construction",
                                      "Public servant"))

age_dec_key <- data.frame(age_dec=1:10,
                          age_lab=c("0-10",
                                    "11-19",
                                    "20-29",
                                    "30-39",
                                    "40-49",
                                    "50-59",
                                    "60-69",
                                    "70-79",
                                    "80-89",
                                    "90+"))

age_dec_key

ed_ord_key <- data.frame(hh_ed_ord=0:2,
                         ed_lab=c("None","Primary","Secondary or higher"))

ed_ord_key

# functions ----

fac_tab <- function(design, var) {
  
  design %>%
    group_by({{var}}) %>%
    summarize(Percent=survey_mean(na.rm=T, deff="replace"),
              Number=survey_total()) %>%
    mutate(#ind_type="Overall",
      #disag="disag",
      margin = Percent_se*1.96,
      Lower=Percent - margin,
      Upper=Percent + margin,
      ci=paste(round(Lower*100,1), "%", " - ", round(Upper*100,1), "%", sep=""))
}

#fac_tab(svyrdat, q2)

# univariate frequency, binary form

ov_tab <- function(design, var, item, label) {
  
  design %>%
    summarise(Percent=survey_mean({{var}}, na.rm=T, deff="replace"),
              Number=survey_total({{var}}, na.rm=T)) %>%
    mutate(Item=item,
           Label=label,
           Disaggregation="Overall",
           disag_val=NA,
           `Disaggregation type`=label,
           margin = Percent_se*1.96,
           Lower=Percent - margin,
           Upper=Percent + margin,
           ci=paste(round(Lower*100,1), "%", " - ", round(Upper*100,1), "%", sep="")) %>%
    select(Item, Label, Disaggregation, disag_val, `Disaggregation type`, Number, Percent, std.err=Percent_se, 
           deff=Percent_deff, margin:ci)
}


disag_tab <- function(design, var, groupvar, key, item, label, disaggregation) {
  
  #key <- key %>%
  #  rename(`Disaggregation type`=2)
  
  design %>%
    group_by({{groupvar}}) %>%
    summarise(Percent=survey_mean({{var}}, na.rm=T, deff="replace"),
              Number=survey_total({{var}}, na.rm=T)) %>%
    mutate(#`Disaggregation type` = key$dis,
      Item=item,
      Label=label,
      Disaggregation=disaggregation,
      margin = Percent_se*1.96,
      Lower=Percent - margin,
      Upper=Percent + margin,
      ci=paste(round(Lower*100,1), "%", " - ", round(Upper*100,1), "%", sep="")) %>%
    #left_join(key) %>%
    select(Item, Label, Disaggregation, disag_val=1, `Disaggregation type`, Number, Percent, std.err=Percent_se, 
           deff=Percent_deff, margin:ci) 
  #left_join(key)
}

# 
# ov_tab <- function(design, var) {
#   
#   design %>%
#     #group_by({{groupvar}}) %>%
#     summarise(prop=survey_mean({{var}}, na.rm=T, deff="replace"),
#               Sample=survey_total({{var}}, na.rm=T)) %>%
#     mutate(ind_type="Overall",
#            disag="disag",
#            margin = prop_se*1.96,
#            lower=prop - margin,
#            upper=prop + margin,
#            ci=paste(round(lower,3), round(upper,3), sep="-"))
# }
# 
# ov_tab_cat <- function(design, disaggregate, varname, label) {
#   temp <- design %>%
#     group_by({{disaggregate}}) %>%
#     summarize(Value=survey_mean()) %>%
#     mutate(var_name={{varname}},
#            label={{label}},
#            lower=Value-1.96*Value_se,
#            upper=Value+1.96*Value_se)
#   temp
# }
# 
# # disag_tab <- function(design, var, groupvar, ind_type, key) {
# # 
# #   key <- key %>%
# #     rename(disag=2)
# # 
# #   design %>%
# #     group_by({{groupvar}}) %>%
# #     summarise(prop=survey_mean({{var}}, na.rm=T, deff="replace"),
# #               Sample=survey_total({{var}}, na.rm=T)) %>%
# #     mutate(ind_type=ind_type,
# #            margin = prop_se*1.96,
# #            lower=prop - margin,
# #            upper=prop + margin,
# #            ci=paste(round(lower,3), round(upper,3), sep="-")) %>%
# #     left_join(key) %>%
# #     relocate(disag, .after=ind_type)
# # }
# 
# #disag_tab(svyrdat, q_403, county, "County", county_key)
# 
# 

svy_disag <- function(design, disaggregate, item, varname, label) {
  temp <- design %>%
    group_by({{disaggregate}}) %>%
    summarize(Value=survey_mean({{item}}, na.rm=T)) %>%
    mutate(#item={{item}},
      var_name={{varname}},
      label={{label}},
      margin=1.96*Value_se,
      lower=Value-1.96*Value_se,
      upper=Value+1.96*Value_se,
      ci=paste(round(lower*100,1), "%", " - ", round(upper*100,1),"%", sep=""),
      ci2=paste(round(lower,1), round(upper,1), sep=" - "))
  temp
}

#svyrdat %>%
#  summarize(q=mean(q_705_1, na.rm=T))



#svy_disag(svyrdat, county, q_403, "cereals","Cereals")



tidy_out <- function(data, term_key=term_key) {
  tidy(data) %>%
    mutate(lower = estimate - 1.96*std.error,
           upper = estimate + 1.96*std.error,
           color=case_when(lower > 0 ~ "#002F6C",
                           upper < 0 ~ "#BA0C2F",
                           TRUE ~ "#8C8985")) %>%
    left_join(term_key) %>%
    filter(term_lab != "Intercept")
}


regplot <- function(data, xmin, xmax, limits) {
  p <- ggplot(data, aes(x=estimate, y=fct_reorder(term_lab, estimate)), color = color, fill = color) +
    geom_vline(xintercept=0, color="darkgrey", size=1.2) +
    geom_errorbarh(aes(xmin=lower, xmax=upper), color=data$color, height=0, size=1.2, alpha = 0.7) +
    geom_label(aes(label=paste0(round(estimate*100,1), "%" )),color = data$color, size=4.5) +
    scale_x_continuous(breaks=seq(xmin, xmax, .05),
                       limits=limits,
                       labels = scales::percent_format(accuracy=1)) +
    labs(x = "", y = "")
  
  return(p)
}

revcode <- function(x) {
  out <- (max(x) + 1) - x
  out
}

print_factors <- function(x) {
  print(paste("The factors of",x,"are:"))
  for(i in 1:x) {
    if((x %% i) == 0) {
      print(i)
    }
  }
}

print_factors(105)

#revcode(1:5)

