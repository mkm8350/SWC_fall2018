#1st Script in R
setwd("~/Desktop/SWC_fall2018")

#location of data
filename <- 'Data/gapminder.txt' 

#read data
gapminder <- read.table(filename, header = TRUE)

#select rows where the country is Albania
albaniaData <- gapminder[gapminder$country=="Albania",]

#select columns for gdpPercap from albamiaData
albaniaGDP <- albaniaData$gdpPercap

#Avg albaniaGDP
albaniaAvgGDP <- mean(albaniaGDP)

print(paste("The average GDP of Albania is", albaniaAvgGDP))



#2nd Script in R
#Computes the AvgGDP for a country using gapminder.txt data

#clear old variables
rm(list = ls())

#location of data
filename <- 'Data/gapminder.txt' 

#read data
gapminder <- read.table(filename, header = TRUE)

getAvgGDP <- function(country,gapminder) {
  selectedCountryData <- gapminder[gapminder$country == country,"gdpPercap"]
  mean(selectedCountryData)
}

gdpUSA <- getAvgGDP("United_States", gapminder)
gdpCanada <- getAvgGDP("Canada", gapminder)
gdpMexico <- getAvgGDP("Mexico", gapminder)

