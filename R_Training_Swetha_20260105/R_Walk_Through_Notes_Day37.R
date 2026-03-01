install.packages("tidyverse")
library(tidyverse)
library(dplyr) ## data manipulation package

library(nycflights13)

#intro()
flights
airports
airlines
planes
weather
View(flights)
flights
dim(flights) # rows x column
nrow(flights) #count of rows
ncol(flights) # count of columns
class(flights) #type of object
str(flights) #base R function, technical like df
glimpse(flights)

#what is dataframe vs tibble
