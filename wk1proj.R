##
##   Project Name:  Exploratory Data Analyis Week 1 Project
##                   
##   Objective:     Reproduce Exploratory Graphs found in https://github.com/rdpeng/ExData_Plotting1
##
##   Approach:      Load the data, tidy a little and produce the exploratory graphs using base graphics.
##
##   Author:        Sam Vennell
##
##   Date:          09 Sep 2016
##

##
##Initialise
##

library(dplyr)
library(tidyr)

##
##Load Data
##

powerdata_import<-read.table("raw_data/household_power_consumption.txt",sep=";",header=TRUE)

powerdata<-filter(powerdata_import,Date %in% c("1/2/2007","2/2/2007"))

powerdata$DateTime<-strptime(paste(powerdata$Date, powerdata$Time), format="%d/%m/%Y %H:%M:%S")

save(powerdata,file="data_intermediate/powerdata.rda")
rm(powerdata_import)

##
##Produce plots
##

for (ind in 1:4) source(paste0("plotting_code/plot",as.character(ind),".R"))


