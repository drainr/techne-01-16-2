library(tidyverse)
library(tidycensus)

fl_income <- get_acs(
  geography = "tract", 
  variables = "B19013_001",
  state = "FL", 
  year = 2020,
  geometry = TRUE
)

fl_income_filtered <- fl_income |>
  filter(NAME |>
           str_detect("Sarasota"))
  
write_rds(fl_income_filtered, "fl_income_filtered.rds")
write_rds(fl_income, "fl_income.rds")
