# South Sudan resilience 
# data prep

packages <- c("arm", "BMA", "brms", "corrplot", "dummies","DescTools", "estimatr","extrafont", "extrafontdb", "janitor",
              "reshape2","tidyr","broom", "caret", "haven", "HH","Hmisc","lubridate","knitr", "margins", "magrittr", "plotrix",
              "scales","survey", "srvyr", "sysfonts", "foreign","car", "ICC", "openxlsx", "ggrepel", "readr",
              "readxl", "sjmisc", "sjPlot", "sjstats", "sjlabelled", "skimr","labelled", "texreg", "janitor","psych","dplyr",
              "tidyverse", "viridis", "here", "ggridges", "ggthemes", "DT", "jtools", "huxtable", "stringi", "gghighlight",
              "plm", "brms", "rstan", "rstanarm","tidybayes","texreg","gt","gtsummary","huxtable","stargazer", "gsynth",
              "panelView", "assertr", "pointblank", "validate", "sandwich", "workflowr", "here", "missForest", "ltm")

lapply(packages, library, character.only=T)

# font_import()
# loadfonts(device="win")
# windwsFonts()

font_add_google("Source Sans Pro", "sans-serif")

options(digits=3, scipen=8)
#options(digits=8, scipen=9)

# set default
base <- theme_bw() + theme(panel.grid.minor.x=element_blank(),
                           panel.grid.minor.y=element_blank(),
                           plot.title=element_text(face="bold",size=18, hjust=.5, family = "Source Sans Pro"),
                           plot.subtitle = element_text(size=16, family="Source Sans Pro"),
                           plot.caption=element_text(size=12, family="Source Sans Pro"),
                           axis.title=element_text(size=16, family="Source Sans Pro"),
                           axis.text=element_text(size=14, family="Source Sans Pro"),
                           legend.text=element_text(size=14, family="Source Sans Pro"),
                           strip.text=element_text(size=14, family="Source Sans Pro"),
                           panel.border=element_blank(),
                           axis.ticks = element_blank())

theme_set(base)

faceted <- theme_bw() +
  theme(panel.grid.minor.x=element_blank(),
        panel.grid.minor.y=element_blank(),
        plot.title=element_text(face="bold",size=18, hjust=.5, family = "Source Sans Pro"),
        plot.subtitle = element_text(size=16, family="Source Sans Pro"),
        plot.caption=element_text(size=12, family="Source Sans Pro"),
        axis.title=element_text(size=16, family="Source Sans Pro"),
        axis.text=element_text(size=14, family="Source Sans Pro"),
        legend.text=element_text(size=14, family="Source Sans Pro"),
        strip.text=element_text(size=14, family="Source Sans Pro"))




# functions ----

ov_tab <- function(design, var) {

  design %>%
    #group_by({{groupvar}}) %>%
    summarise(prop=survey_mean({{var}}, na.rm=T, deff="replace"),
              Sample=survey_total({{var}}, na.rm=T)) %>%
    mutate(ind_type="Overall",
           disag="disag",
           margin = prop_se*1.96,
           lower=prop - margin,
           upper=prop + margin,
           ci=paste(round(lower,3), round(upper,3), sep="-"))
}

disag_tab <- function(design, var, groupvar, ind_type, key) {

  key <- key %>%
    rename(disag=2)

  design %>%
    group_by({{groupvar}}) %>%
    summarise(prop=survey_mean({{var}}, na.rm=T, deff="replace"),
              Sample=survey_total({{var}}, na.rm=T)) %>%
    mutate(ind_type=ind_type,
           margin = prop_se*1.96,
           lower=prop - margin,
           upper=prop + margin,
           ci=paste(round(lower,3), round(upper,3), sep="-")) %>%
    left_join(key) %>%
    relocate(disag, .after=ind_type)
}


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


# data ----

#dat <- read_dta(here("data/local/mesp_household_baseline_hh_survey_weighted.dta"))

#dat_wt <- read_dta(here("data/local/SSD resilience baseline prepared.dta"))

#dat <- read_dta(here("data/local/mesp_household_baseline_hh_survey_combined_weighted.dta")) %>%
#  filter(!is.na(final_wt1))

dat <- read_dta(here("data/local/SSD resilience baseline prepared.dta"))

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

inc_key <- read_csv(here("output/tables/inc key.csv"))
  
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

conf_key <- read_csv("output/tables/conf_key.csv")
 
conf_key 
 
  
