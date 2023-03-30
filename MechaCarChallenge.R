library(dplyr)

# import csv
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# perform linear regression using the lm() function
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg)

# determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg))