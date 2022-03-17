
library(crosstalk) #Allows objects to "talk" to each other
library(reactable) #Creates a table that can be interactive

diet_cnty_obj <- read_csv(here("output/tables/food insecurity/diet items by county.csv"))

data_diet_cnty_obj <- SharedData$new(diet_cnty_obj)

bscols(
  widths = c(3, 9)
  , list(filter_select("county"
                       , "County"
                       , data_diet_cnty_obj
                       , ~county))
  , reactable(data_diet_cnty_obj, minRows = 50))
