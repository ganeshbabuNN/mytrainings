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

#filter by duplicates
flights |> distinct(carrier)
#get the unique carrier, dest
flights |> distinct(carrier,dest)
#i want all the to keep to show
flights |> distinct(carrier,dest,.keep_all = FALSE) |> select(carrier,dest,everything())
flights |> select(flight,year,month,day,carrier) 

#using dplyr
flights |> 
  group_by(flight,year,month,day,carrier) |> 
  filter(n()>1) |> 
  ungroup() |> 
  relocate(flight,year,month,day,carrier,everything())

#logical part! 
  flights |> 
  group_by(flight,year,month,day,carrier) |> 
  mutate(is_dup1 =n() >1) |> 
  group_by(flight,year,month,day,carrier) |> 
  mutate(is_dup2 =n() >1) |>   
  filter(is_dup1 | is_dup2) |> 
  select(-is_dup1,-is_dup2) #clean up helper functions.    

#using add_count() 
flights |> 
  add_count(flight,year,month,day,carrier) |> 
  filter(n>1) |> 
  select(-n)
    
#using base R #TBD
flights |> 
 filter(duplicated(select(flight,year,month,day,carrier)))

install.packages("janitor")
library(janitor)
flights |> 
  get_dupes(year, month, day, hour, carrier)

#filtering with predicate functions.
#it is a function to filter based on the data type ( numeric, date, ,factor)
weather |> 
  select(where(is.numeric))

weather |> 
  filter(if_any(where(is.numeric),~.x>100))

weather |> 
  filter(if_all(where(is.numeric),~.x>20.6))

#find all flights where the planes tailnum does not exists in the plane table.
#orphans or mismatches or evil twin method
flights |> 
  anti_join(planes,by="tailnum") |> select(flight, tailnum)

planes |> filter(tailnum %in% c("N542MQ","N3DUAA"))

#filter using relocate()
flights |> relocate(carrier,flight,dep_time,arr_time,dep_delay,arr_delay)
#using the predicate
flights |> relocate(where(is.character))

