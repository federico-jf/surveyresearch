# Survey Research, Spring 2022 
# FINAL PAPER
# Federico Ferrero

# clear your memory
rm(list=ls())

# set your working directory path
setwd("C:/Users/feder/Desktop")

# reading in data

pilot<- read.csv("https://raw.githubusercontent.com/federico-jf/surveyresearch/main/Pilot_%20final_dataset_attitudes_toward_ADS.csv", header=T, as.is=T)

#libraries
library('Amelia') # for multiple imputation
library('zoo') # for linear interpolation
library('stargazer') # for tables
library('plotrix')
library('foreign')


# detecting missingness and plot it

missd <- pilot [0,]
for(i in 1:ncol(missd)) {
  missd[1,i] <- length(which(is.na(pilot[,i])))
}
missd <- t(missd) #transpose
missmap(pilot) #generate missmap
