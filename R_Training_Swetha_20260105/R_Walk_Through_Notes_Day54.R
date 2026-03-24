library(tidyverse)
library(nycflights13) 

flights
view(flights)
flights <- flights #not valid
#load the data
data("flights")
data("airlines")
data("airports")
data("weather")
data("planes")

#find the flights top 2 delayed per day
#arr_delay
flights |> 
  group_by(year,month,day ) |> 
  filter(dense_rank(desc(arr_delay)) <=2) |> 
  select(flight,day,arr_delay)

#find flights only the nightmare flights - those in the worst 1%of day
#the logic : relative position vs row count
#total count : 
#top 10 delay flights, you get 10 rows whether you have 100 flights or 1lk flights

#relative positive 
#worst of 1%  --> scale
#in data sets 1000 flights, you 100 worst? for 0.1 % 10 worst?
1000 * 0.1
1000 * 0.01
# if 1000000 flights , 100worst?
1000000 * 0.1

#whow 
# 0.70 --> 1
# 0.99 --> 1
# 0.45 --> ?
#relative positions it ignores the toal count of rows
flights |> 
  filter(percent_rank((arr_delay)) >=0.99) |> 
  select(flight,arr_delay) 

#cumulative aranking.. cummulative disturbuiont# statistical 
df <- data.frame(score=c(10,20,30,40))
df |> mutate(dis=cume_dist(score))

#define a category of flights delay severity
# <0 -> early , ==0 --> "on time", <=30 --> "little delay", 
#<=60 --> "late",>60--> very late, nothing --> cancelled/unknown
flights |> 
  select(carrier,flight,arr_delay) |> 
  mutate(serverity = case_when(
    arr_delay <0 ~ "Early",
    arr_delay ==0 ~ "On Time",
    arr_delay <30 ~ "Little Delay",
    arr_delay <=60 ~ "Late",
    arr_delay >60 ~ "Very Late",
    TRUE ~ "Cancelled/Unknown"
  ))

#assignment 
#list of all the desitination and categorize in their respective religion
flights |> distinct(dest) |> pull()






