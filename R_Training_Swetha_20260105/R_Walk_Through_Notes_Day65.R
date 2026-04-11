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

#handling missing during data
colSums(is.na(planes))
colSums(is.na(flights))
#find the flightrs with missing plan informations
flights |> 
  left_join(planes,by="tailnum") |> 
  select(flight,tailnum,type,manufacturer) |> 
  filter(is.na(tailnum))

#check for right_join()
flights |> 
  right_join(planes,by="tailnum") |> 
  select(flight,tailnum,type,manufacturer) |> 
  filter(is.na(tailnum))

#check for inner_join()
flights |> 
  inner_join(planes,by="tailnum") |> 
  select(flight,tailnum,type,manufacturer) |> 
  filter(is.na(tailnum)) # there is not show

#
flights
weather
flights |> 
  left_join(weather,by=c("origin","time_hour"),suffix=c("_f","_w")) |> glimpse()

flights |> 
  left_join(weather,by=c("origin","time_hour"),suffix=c("_f","_w")) |> 
  rename_with(~paste0(.,"_w"),any_of(names(weather))) |>  
  rename_with(~paste0(.,"_f"),any_of(names(flights))) |>
  glimpse()

#multlipe joins
flights |> 
  left_join(airlines,by="carrier") |> 
  left_join(airports,by=c("dest"="faa")) |> 
  left_join(planes,by="tailnum")

#Mixed join

join1 <- flights |> 
  left_join(airlines,by="carrier") |> 

 join2<- join1 |> 
  inner_join(airports,by=c("dest"="faa")) 

join2 |> 
  left_join(planes,by="tailnum")

flights |> 
  left_join(airlines,by="carrier") |> 
  inner_join(airports,by=c("dest"="faa")) |> 
  semi_join(planes,by="tailnum")

flights |> 
  select(year,month,day,flight,dep_delay,carrier,dest,tailnum) |> #flight
  left_join(airlines,by="carrier") |> 
  select(year,month,day,flight,dep_delay,carrier,dest,tailnum,name) |> #flight+airlines
  inner_join(airports,by=c("dest"="faa")) |> 
  select(year,month,day,flight,dep_delay,carrier,dest,tailnum,name.x,name.y) |> #flight+ airlines +airport
  semi_join(planes,by="tailnum") 
  


