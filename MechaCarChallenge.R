##Setting up Dependencies
library(dplyr)
library(tidyverse)

##Deliverable 1

##Reading in data as a dataframe
df<-read_csv("Challenge/MechaCar_mpg.csv")
head(df)

##Performing multiple linear regression
lm(df$mpg ~ df$vehicle_length + df$vehicle_weight + df$spoiler_angle + df$ground_clearance + df$AWD, df)

##Get p-value and r-squared
summary(lm(df$mpg ~ df$vehicle_length + df$vehicle_weight + df$spoiler_angle + df$ground_clearance + df$AWD, df))

##Deliverable 2
df2<-read_csv("Challenge/Suspension_Coil.csv")
head(df2)

total_summary<- df2 %>% summarize(Mean = mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI))
total_summary

lot_summary<-df2 %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI))
lot_summary

##Deliverable 3
t.test(df2$PSI, mu=1500)

t.test(subset(df2,Manufacturing_Lot == 'Lot1')$PSI, mu=1500)

t.test(subset(df2,Manufacturing_Lot == 'Lot2')$PSI, mu=1500)

t.test(subset(df2,Manufacturing_Lot == 'Lot3')$PSI, mu=1500)

