# labelled practice

x <- labelled(sample(5, 10, replace = TRUE), c(Bad = 1, Good = 5))

x

# Default method uses values where available
x2 <- as_factor(x)
x2

# You can also extract just the labels
as_factor(x, levels = "labels")
# Or just the values
as_factor(x, levels = "values")
# Or combine value and label
as_factor(x, levels = "both")

# as_factor() will preserve SPSS missing values from values and ranges
y <- labelled_spss(1:10, na_values = c(2, 4), na_range = c(8, 10))
y
as_factor(y)
# use zap_missing() first to convert to NAs
zap_missing(y)
as_factor(zap_missing(y))


svyrdat %>%
  tbl_svysummary(hhs_1)

?tbl_svysummary

svyrdat %>%
  tbl_svysummary(include=hhs_1)
