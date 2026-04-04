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
View(flights)

#filter with Frequency

#how many flights did each ariline operator ? per carrier the count of flights
#classical approach
flights |> 
  select(carrier,origin,dest,month,day,year) |> 
  group_by(carrier) |> 
  summarise(n=n())

#modern appraoch
#instead of writing above and write the below using count() functions
flights |> 
  count(carrier,sort = TRUE) 

#add_count() - adds a count of a column to the orginal datasets
#for each flight, how many flights does the airlines operate overall?
flights |> 
  add_count(carrier) |> 
  glimpse() |> 
  select(carrier,flight,n)


#frequent carriers: keep the arilines that appear at least twiceflights |> 
flights |> 
  add_count(carrier) |> 
  glimpse() |> 
  select(carrier,flight,n) |> 
    filter(n>=20000)

#filter frequently used aircraft(tail number) : keep airlcraft that flew atleast 50 times
flights |> 
  add_count(tailnum) |> 
  select(carrier,flight,n) |> 
    filter(n>=50) |> distinct(carrier,n)

#filter the popular flights: keep routes that occured at least 1000 times.
#origin,dest
flights |> 
  add_count(origin,dest) |> 
  filter(n >=100) |> 
  select(origin,dest,n)


flights |> 
  count(origin,dest)


#what is the first recorded flight from each origin airport?
flights |> 
  select(origin,carrier,flight,time_hour) |> 
  group_by(origin) |> 
  head(1)

flights |> 
  select(origin,carrier,flight,time_hour) |> 
  group_by(origin) |> 
  arrange(origin,carrier,flight,time_hour) |> 
  slice_head(n=1)

flights |> 
  select(origin,carrier,flight,time_hour) |> 
  group_by(origin) |> 
  arrange(origin,carrier,flight,time_hour) |> 
  head(1)

flights |> 
  group_by(origin) |> 
  filter(row_number()==1) |> 
  select(origin,carrier,flight,time_hour) 

#filter by first /last within group
#what is the last recorded flight from each origin airport?
flights |> 
  group_by(origin) |> 
  slice_tail(n=1) |> 
  select(origin,carrier,flight,time_hour)

#this approach is invalid
flights |> 
  group_by(origin) |> 
  arrange(origin,(carrier),desc(flight),desc(time_hour)) |> 
  filter(row_number()==1) |> 
  select(origin,carrier,flight,time_hour)

flights |> 
  group_by(origin) |> 
  filter(row_number()==n()) |> 
  select(origin,carrier,flight,time_hour)


flights |> 
  group_by(origin) |> 
  mutate(row_n=row_number()) |> 
  select(origin,carrier,flight,time_hour,row_n) |> 
  filter(origin=='EWR') |> 
  arrange(origin,(carrier),desc(flight),(time_hour)) |> 
  tail()

#fliter by using lead/lag 
#demo of lead/lag 
flights |> 
  select(carrier,dep_delay) |> 
  mutate(lad_depdelay=lag(dep_delay),
        lead_depdelay=lead(dep_delay)
        )

#which flights have differenct departure delay compared to the previous flight
flights |> 
  select(carrier,dep_delay) |> 
  mutate(lad_depdelay=lag(dep_delay),
        lead_depdelay=lead(dep_delay)
        ) |> 
  filter(dep_delay !=lag(dep_delay))


  

