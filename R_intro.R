
#Building Blocks of R

#Variable Objects
  #Operator: <-
  #List oj objs: ls()
  #Remove obj: rm()
  #Remove all objs: rm(list=ls())

#Functons
  #?/help(): to access info about certain functions(ex. ?sqrt/help("sqrt") )
  #length()
  #Data structure: str()
  #concatinate func to make vectors: c()

#Packages
  #install.packages("knitr")
  #library(knitr)
menu <- c("chicken", "soup", "salad", "tea")
type <- factor(c("solid", "liquid", "solid", "liquid"))
cost <- c(4.99, 2.99, 3.29, 1.89)
myorder <- list(menu, type, cost)
myorder
myorder_df <- data.frame(menu, type, cost)
myorder_df
rm(myorder_df, myorder, menu, cost, type)
