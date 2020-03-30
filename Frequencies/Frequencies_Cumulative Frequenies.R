#***************************************************************************
#Purpouse: Calculating Frequency, Cumulative Frequency and Relative Frequency in R
#Author: LNN
#Date: 30/3/2020
#***************************************************************************

rm(list=ls())

#Enter data

Dataset <- c(3,4,5,4,6,4,5,5,1,1,2,3,4,6,6,3,6,7,7,4)

#Table
table(Dataset)

#Relative Frequency
rft <- table(Dataset)/length(Dataset)
rft

#Cumulative Relative Frequency

#introduce intervals
int <- hist(Dataset, breaks = 1:7, plot = FALSE)
int
#breaks
br <- as.character(int$breaks)
br
#counts
x <- as.table(int$counts)

#Cumulative Frequencies
cumsum(x)

#Cumulative Relative Frequency
crf <- round(cumsum(x)/length(x),2)
crf
