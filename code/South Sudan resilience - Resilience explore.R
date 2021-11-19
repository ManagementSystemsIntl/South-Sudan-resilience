
head(who)


?tab_xtab

tab_xtab(dat$region,
         dat$state,
         show.col.prc = T,
         file="output/tables/region state.html")

getwd()

frq(dat$q_211)
