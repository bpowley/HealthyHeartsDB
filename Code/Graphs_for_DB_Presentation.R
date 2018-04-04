##################################################
# Graphs for Database presentation
# Bridget Balkaran
# 4/4/16
##################################################


library(tidyverse)
library( magrittr)

dataPerYear <- read_csv("Data/data collected per year.csv") 
dataPerYear %>%
  head()

dataPerYear %>%
  gather(Year, )
  ggplot(aes()) + 
  geom_smooth(aes(x = Year, y = Elementary, color = "Elementary")) +
  geom_smooth(aes(x = Year, y = Middle, color = "Middle")) + 
  geom_smooth(aes(x = Year, y= High, color = "High"))
  
  
