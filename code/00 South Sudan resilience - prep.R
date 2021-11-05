# South Sudan resilience 
# data prep

packages <- c("arm", "BMA", "brms", "corrplot", "dummies","DescTools", "estimatr","extrafont", "extrafontdb", "janitor",
              "reshape2","tidyr","broom", "caret", "haven", "HH","Hmisc","lubridate","knitr", "margins", "magrittr", "plotrix",
              "scales","survey", "srvyr", "sysfonts", "foreign","car", "ICC", "openxlsx", "ggrepel", "readr",
              "readxl", "sjmisc", "sjPlot", "sjstats", "sjlabelled", "skimr","labelled", "texreg", "janitor","psych","dplyr",
              "tidyverse", "viridis", "here", "ggridges", "ggthemes", "DT", "jtools", "huxtable", "stringi", "gghighlight",
              "plm", "brms", "rstan", "rstanarm","tidybayes","texreg","gt","gtsummary","huxtable","stargazer", "gsynth",
              "panelView", "assertr", "pointblank", "validate", "sandwich", "workflowr", "here", "missForest")

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

#revcode(1:5)


# data ----

#dat <- read_dta(here("data/local/mesp_household_baseline_hh_survey_weighted.dta"))

dat_wt <- read_dta(here("data/local/SSD resilience baseline prepared.dta"))

dat <- read_dta(here("data/local/SSD resilience baseline prepared (4 Nov 2021).dta"))

datNames <- data.frame(names(dat))

svydat <- svydesign(data = dat_wt,
                     ids = ~ea,
                     weights= ~final_wt1,
                     strata = ~county)

 svyrdat <- dat_wt %>%
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
 
 
