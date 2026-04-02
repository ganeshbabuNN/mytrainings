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

#filter by cummulations
#how many flights it takes to reach a certain amount of delay time in a day.
#find the flights that contributed to the first 1000 minutes(dep_delay) of delay at JFK(origin)

colSums(is.na(flights))
flights |> 
  select(origin,month,day,dep_delay) |> 
  filter(origin=="JFK",!is.na(dep_delay)) |> 
  group_by(month,day) |> 
  arrange(month,day,dep_delay)  |> 
  mutate(running_delay= cumsum(dep_delay)) |> 
  filter(running_delay<=1000)

#lag and lead
flights |> 
  select(origin,month,day,dep_delay) |> 
  filter(origin=="JFK",!is.na(dep_delay)) |> 
  group_by(month,day) |> 
  arrange(month,day,dep_delay)  |> 
  mutate(lag_delay = lag(dep_delay),
         lead_delay = lead(dep_delay),
         running_delay= cumsum(dep_delay),
         delay_diff= dep_delay-lag(dep_delay)
        ) 
  
#without cumsum will do it later
flights |> 
  select(origin,month,day,dep_delay) |> 
  filter(origin=="JFK",!is.na(dep_delay)) |> 
  group_by(month,day) |> 
  arrange(month,day,dep_delay)  |> 
  mutate(running_delay= cumsum(dep_delay),
         running_delay1=dep_delay+lag(dep_delay,1) +lag(dep_delay,2)
        )  


#filter with Frequency

#how many flights did each ariline operator ? per carrier the count of flights
flights |> 
  select(carrier,origin,dest,month,day,year) |> 
  group_by(carrier) |> 
  summarise(n=n())

#instead of writing above and write the below using count() functions
flights |> 
  count(carrier,sort = TRUE)
