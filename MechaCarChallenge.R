library(dplyr)
# read csv to df
mechacar_mpg_df <- demo_table <- read.csv(file='mechacar_mpg.csv',check.names=F,stringsAsFactors = F)
head(mechacar_mpg_df)
# multiple linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df)
# get p value and r^2
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df))

#Suspension Coil Piece
#read csv
suspension_coil_df <- demo_table <- read.csv(file='suspension_coil.csv',check.names=F,stringsAsFactors = F)
head(suspension_coil_df)
#create summary
summary_df <- suspension_coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#Deliverable 3 / T Tests
t.test(suspension_coil_df$PSI, mu=1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
