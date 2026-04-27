library(tidyverse)
library(nycflights13)

flights
view(flights)
flights <- flights #not valid
#load the data
data("flights")
data("airlines")a
data("airlines")
data("airports")
data("weather")
data("planes")
View(flights)

#what is data shapping?
# change row to column
#change column to row
#conver the row/column to vector?

#widing --> longing = columns becomes row  pivot_longer()
#longing--> widing = rows become columns  pivot_wider()

#pivot_longer()