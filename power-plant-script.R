library(readr)

#importing dataset
global_power_plant_database <- read_csv("global_power_plant_database.csv")

library(dplyr)

#filter power plants by country: Brazil
brazil_filtered <- filter(global_power_plant_database, country_long == "Brazil")
View(brazil_filtered)

# View the different types of primary fuel
print(categories <- unique(brazil_filtered$primary_fuel))
print(category_count <- table(brazil_filtered$primary_fuel))



library(tidyverse)
library(ggplot2)

ggplot(brazil_filtered, aes(x = primary_fuel, y = estimated_generation_gwh_2017, fill = primary_fuel)) +
  geom_col()
  labs(
    title = "Electricity Generation by Fuel Type in Brazil",
    x = "Fuel Type",
    y = "Generation (Gwh)"
  )
  