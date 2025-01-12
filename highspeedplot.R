# Post link; 
#https://www.reddit.com/r/dataisugly/comments/1hvfsnj/worlds_longest_highspeed_railway_lines/
# Overall I think the only truly bad thing about this visual is the top bar. 
# I can see why its done too; the other bars probably look terrible if it was 
# to scale. I'll try playing around with making the lower bars smaller anyway,
# country text can probably be decreased and flags can probably be removed with 
# little issue

## Another, related problem: I did not realize the part with the country was
## included in the bar; initially I thought it was separate. Will be making 
## that more clear as well

library(tidyverse)

country <- c("China", "Spain", "Japan", "France", "Germany", "Finland", "Turkey",
            "Italy", "S. Korea", "Sweden", "Indonesia")
lenkm <- c(40474, 3661, 3081, 2735, 1571, 1120, 1052, 921, 873, 860, 142)
trainds <- data.frame(country, lenkm)

trainplot <- ggplot(trainds, aes(x = reorder(country, lenkm), y = lenkm)) +
  geom_bar(stat = "identity", position = "dodge", width = 0.8) +
  coord_flip() 
trainplot

## First draft. I don't think the proportions are a crime against humanity, BUT
## it would probably look better if I did something about China. 
## I might do a version removing it and include text along the lines of 
## "China has over 10x Spain!"

country_1 <- c("Spain", "Japan", "France", "Germany", "Finland", "Turkey",
               "Italy", "S. Korea", "Sweden", "Indonesia")
lenkm_1 <- c(3661, 3081, 2735, 1571, 1120, 1052, 921, 873, 860, 142)
trainds_1 <- data.frame(country_1, lenkm_1)

trainplot_1 <- ggplot(trainds_1, aes(x = reorder(country_1, lenkm_1), y = lenkm_1)) +
  geom_bar(stat = "identity", position = "dodge", width = 0.8) +
  coord_flip() 
trainplot_1

## Literally just removing China. The other bars definitely look better. I think 
## the first is fine if you want to highlight China, whereas this works better 
## as a holistic view at all the other countries. I think I might make a second 
## chart within this one, with the first bar chart inside of it. This should 
## meet a happy medium between showing all the countries appropriately while 
## also showing China and just how much larger it is. 



