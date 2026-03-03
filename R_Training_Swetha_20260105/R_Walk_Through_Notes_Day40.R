library(tidyverse)
library(nycflights13)

#reordering 
flights |> select(year,dep_time,arr_time) #only selection
flights |> select(year,-dep_time,arr_time)#exclude
flights |> select(year,-dep_time,arr_time,everything()) |> glimpse() #everything()
flights |> select(-year,everything()) |> glimpse() #james bond technique

flights |> select(-year,everything()) |> head() #top 5 rows
flights |> select(-year,everything()) |> head(10) #top 10
flights |> select(-year,everything()) |> tail(5) #last top 5

#relocat()
flights |> glimpse() |> relocate(origin,dest,.after =year)  #after the col
flights |> glimpse() |> relocate(distance,.before =air_time) |> glimpse() #before the col
flights |> relocate(where(is.character)) #relocate all the char col in front
flights |> relocate(carrier) |> glimpse() #push at the front
flights |> relocate(contains("delay")) #
flights |> relocate(where(is.character),.after = last_col()) |> glimpse()

#convert the variable to vector
year_f <- flights |> select(year)
typeof(as.vector(year_f))
v_year <- as.vector(year_f)
year_p <- flights |> pull(year)
year_p
flights |> pull(4)
flights |> pull(last_col())

#select after the join
#to show info of carrier full name (airplanes) and show only carrieer,full name,dep_dely,arr_dely
flights |> left_join(airlines,by="carrier") |> select(carrier,name,dep_delay,arr_delay)

#Assignments of this chapter 1_Querying_data.R 

#
flights |> distinct(carrier)
flights |> select(origin,dest) |> distinct(origin,dest)
unique(flights$carrier)
flights |> distinct(carrier)
