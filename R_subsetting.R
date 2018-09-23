#Data Frame:
menu <- c("chicken", "soup", "salad", "tea")
type <- factor(c("solid", "liquid", "solid", "liquid"))
cost <- c(4.99, 2.99, 3.29, 1.89)

myOrder_df <- data.frame(menu, type, cost)
myOrder_df
str(myOrder_df)
dim(myOrder_df)

#Subsetting:
#Type 1: Positional Index
v <- c(1:10)
v[2]
v[c(3:6)]
v[-c(3:6)]

myOrder_df[1]
myOrder_df[1,]
myOrder_df[1]
myOrder_df[[1]]
str(myOrder_df[1])
str(myOrder_df[[1]])

#data_frame[row, column]
myOrder_df[1:2,]

#Subset by Name:
myOrder_df$menu

#Subset by Logical Vector:
# > greater than
# < less than
# == equal to 
# >= greater than or equal to
# <= less than equal to

v <- c(5,1,3,4,5)
v[v==5]

myOrder_df[myOrder_df$type == "solid",]
myOrder_df[myOrder_df$cost > 3,]
myOrder_df$type == "solid"

#GapMindet Dataset:
myData <- read.table("Data/gapminder.txt", header = TRUE)
str(myData)
typeof(myData$V1[1])
str(myData$V1)
myData[,c(3,5)]
unique(myData$country)
myData[myData$country == "Sweden",]
myData[myData$lifeExp < 70,]
canadaDF <- myData[myData$country == "Canada",]
png("Canada.png")
plot(canadaDF$year, canadaDF$lifeExp, col="blue", type="l")
dev.off()
