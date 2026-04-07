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

#in flights datasets, i want to move all the character columns in front and later "delay" next. 
# and want arr_delay>120
flights |> 
  relocate(where(is.character),contains("delay")) |> 
  filter(arr_delay >120)

#&& #short-circuit AND
#& #logical AND

#for the air_time variable to front , then filter <30 and relocate air_time after orgin,dest
# airtime--> relcoate
# air_time <30
# air_time after sched_dep_time

flights |> 
  relocate(air_time) |> 
  filter(air_time <30) |> 
  relocate(origin,dest,.after =air_time) |> glimpse()

#filter by nested data
#next your flights by carrier.
nest_tibble <-flights |> 
                    group_by(carrier) |> 
                    nest()

nest_tibble$data[[15]]

#Flights delayed(arr_delay) more than 30 mins in summer from JFK
#Flights cancelled due to weather
##cancelled in the dataset NA
#weather$precip
weather
colSums(is.na(weather))
colSums(is.na(flights))
flights |> 
  filter(is.na(dep_time) & !is.na(weather$precip))

weather |> select(precip) |> pull()




