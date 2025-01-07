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

country <- ("China", "Spain", "Japan", "France", "Germany", "Finland", Turkey,
            "Italy", "S. Korea", "Sweden", "Indonesia")
lenkm <- (40474, 3661, 3081, 2735, 1571, 1120, 1052, 921, 873, 860, 142)
trainds <- data.frame(country, lenkm)
trainplot <- 