# Household Hunger Scale (HHS)

frq(dat$q_434)
frq(dat$q_435)

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
  mutate(hhs_cat_chr = sjlabelled::as_character(hhs_cat),
         hhs_cat_fac = as_factor(hhs_cat_chr),
         hhs_ord = ordered(hhs_cat,
                           levels=1:3,
                           labels=hhs_cat_labs))

hhs_cat_labs <- c("No hunger","Moderate hunger","Severe hunger")

frq(dat$hhs_1)
frq(dat$hhs_2)
frq(dat$hhs_3)
frq(dat$hhs)
frq(dat$hhs_cat)
frq(dat$hhs_cat_chr)
frq(dat$hhs_cat_fac)
frq(dat$hhs_ord)
?ordered
?as_factor

attr(dat$hhs_ord, "levels")

tes <- dat %>% 
  mutate(hhs_cat = as_factor(case_when(hhs<2 ~ 1,
                    hhs==2 | hhs==3 ~ 2,
                    hhs>3 ~ 3),
                    labels=c("No hunger","Moderate hunger","Severe hunger")))

tes2 <- dat %>% 
  mutate(hhs_cat = case_when(hhs<2 ~ 1,
                                     hhs==2 | hhs==3 ~ 2,
                                     hhs>3 ~ 3),
         hhs_ord = ordered(hhs_cat,
                           labels=c("No hunger", "Moderate hunger", "Severe hunger")))


frq(tes2$hhs_ord)
attr(tes2$hhs_ord, "levels")
attr(dat$hhs_cat, "labels")

frq(tes$hhs_cat)
attr(tes$hhs_cat, "levels")

?attr
attr(tes$hhs_cat, "labels")
?as_character
?as_factor

udd %>%
  tbl_summary(include=c(sex, vdo_name, iga),
              label=list(sex~"Sex",
                         vdo_name~"VDO",
                         iga="Income generation activity"),
              sort=list(everything() ~ "frequency"))

?as_factor
class(dat$hhs_1)

dat %>%
  tbl_summary(include=c(hhs, hhs_cat_chr, hhs_ord))

frq(dat$hhs_ord)

data(trial)

head(trial)
frq(trial$trt)

trial %>% tbl_summary()
