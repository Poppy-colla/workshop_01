
# Read in the data 

chaff <- read.table("data_raw/chaff.txt", header = TRUE)

# Tidying the data 

library(tidyverse)

chaffs <- pivot_longer(data = chaff, cols = everything(), values_to = "Mass", names_to = "Sex")
  
# Summarizing to find difference in mass between male and female chaffinches 

chaffs %>% group_by(name) %>%
  summarise(Mean = mean(Mass))

# name     Mean
# <chr>   <dbl>
# 1 females  20.5
# 2 males    22.3

22.3 - 20.5
# [1] 1.8  # Difference = 1.8

# Plottign the analysis 

ggplot(data = chaffs, aes(x = Sex, y = Mass))+
  geom_boxplot()+
  theme_classic()















