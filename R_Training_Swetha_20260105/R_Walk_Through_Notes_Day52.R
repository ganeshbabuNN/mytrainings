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

#filter by aggregations
#find the first flight of the day of every carrier
flights |> 
  group_by(carrier,year,month,day) |> 
  filter(dep_time== min(dep_time,na.rm=TRUE)) |> select(carrier,year,month,day,dep_time)


#filtering total distance > 1000000 by date
flights |> 
  group_by(year,month,day) |> 
  filter(sum(distance) >1000000 ) |> select(year,month,day,distance)

flights |> 
  group_by(year,month,day) |> mutate(sumd=sum(distance)) |> 
  filter(sumd >1000000 ) |> select(year,month,day,distance,sumd)

flights |> 
  group_by(year,month,day) |> 
  summarise(total_distance = sum(distance)) |>  filter( total_distance > 1000000) 

#find he airports more then 5% of their flights were cancelled.
#dep_time > 5 % are cancelled. sum(is.na(dep_time)) >0.05

flights %>%
  group_by(origin) %>%
  summarize(p_missing = mean(is.na(dep_time)))

#filter the unique rows
#unique carrier
flights |> distinct(carrier) |> glimpse()
flights |> distinct(carrier,.keep_all = FALSE)
#to get all column .keep_all=TRUE
flights |> distinct(carrier,.keep_all = TRUE) |> glimpse()
#unique origin and dest
flights |> distinct(origin,dest)
#uniqu count of the tailnum and carrier .
flights |> 
  summarise(
    n_tailnum = n_distinct(tailnum),
    n_carrier = n_distinct(carrier) 
  )

flights |> 
  group_by(flight) |> 
  mutate(n_flight= n()) |> select(flight,n_flight) # count no of rows

select(flights,dep_delay,arr_delay)
f <- tibble(
  dep_delay = c(11,20,40,50,60),
  arr_delay = c(40,50,30,20,20)
)

