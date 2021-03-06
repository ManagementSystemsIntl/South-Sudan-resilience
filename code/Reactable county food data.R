
library(crosstalk) #Allows objects to "talk" to each other
library(reactable) #Creates a table that can be interactive

diet_cnty_obj <- read_csv(here("output/tables/food insecurity/diet items by county.csv")) %>%
  select(county, label, Value, lower, upper)


data_diet_cnty_obj <- SharedData$new(diet_cnty_obj)

bscols(
  widths = c(3, 9)
  , list(filter_select("county"
                       , "County"
                       , data_diet_cnty_obj
                       , ~county)
         ,filter_select("label"
                       , "Label"
                       , data_diet_cnty_obj
                       , ~label))
  , reactable(data_diet_cnty_obj, columns = list(
    county = colDef(name = "County")
    , label = colDef(name = "Food Item")
    , Value = colDef(name = "Value"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , lower = colDef(name = "Lower"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , upper = colDef(name = "Upper"
                     , format = colFormat(percent = T
                                          , digits = 1))
  )))

#2.2.1 Reactable with filters for county and income source

inc_cnty_obj <- inc_cnty %>%
  select(-2, -5, -6)

data_inc_cnty_obj <- SharedData$new(inc_cnty_obj)

bscols(
  widths = c(3, 9)
  , list(filter_select("county"
                       , "County"
                       , data_inc_cnty_obj
                       , ~county)
         ,filter_select("inc_lab"
                        , "Income source"
                        , data_inc_cnty_obj
                        , ~inc_lab))
  , reactable(data_inc_cnty_obj, columns = list(
    county = colDef(name = "County")
    , inc_lab = colDef(name = "Income source")
    , Percent = colDef(name = "Percent"
                       , format = colFormat(percent = T
                                            , digits = 1))
    , lower = colDef(name = "Lower"
                     , format = colFormat(percent = T
                                          , digits = 1))
    , upper = colDef(name = "Upper"
                     , format = colFormat(percent = T
                                          , digits = 1))
  )))
