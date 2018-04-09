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
  filter(Year %in% c(1992:2017)) %>%
  ggplot(aes(Year)) + 
  geom_smooth(aes(y = Elementary, color = "Elementary")) +
  geom_smooth(aes(y = Middle, color = "Middle")) + 
  geom_smooth(aes( y= High, color = "High")) + 
  ylab( "Number of Students Surveyed") + 
  scale_x_continuous(breaks = pretty(dataPerYear$Year, n = 10)) +
  ggtitle("Trajectory of Data Growth 1992 - 2017")
  
  
