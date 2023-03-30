library(dplyr)

# Linear Regression to Predict MPG

# import csv
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# perform linear regression using the lm() function
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg)

# determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg))


# Supension Coil Lot Analysis

# import csv
suspension_coil_df <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# create a total_summary data frame
total_summary <- suspension_coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# create a lot_summary data frame
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')


# T-Tests on Suspension Coils

# t-test on suspension_coil
t.test(suspension_coil_df$PSI, mu=1500)

# perform t-test on each lot
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
