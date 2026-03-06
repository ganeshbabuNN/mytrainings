library(tidyverse)
library(nycflights13)
colSums(is.na(flights))
str(flights)
glimpse(flights)

#you sort the dervied column variable in desc
#delay_per_mile = arr_delay/distance
flights |> 
  mutate(delay_per_mile= arr_delay/distance) |> 
  select(year,month,day,carrier,delay_per_mile) |> 
  arrange(desc(delay_per_mile))

#you want to sort the variable after filtering
#top delayed flights from JFK origin
flights |> 
  filter(origin=='JFK') |> 
  select(year,month,day,carrier,origin,dest,arr_delay) |> 
  arrange(desc(arr_delay))

#sorting within the groups
#i want to sort the desc.arr_delay based on each carrier
flights |> 
  group_by(carrier) |> 
  select(carrier,arr_delay) |> 
  arrange(desc(arr_delay))  #this is not right way

#this is correct way ##.by_group = TRUE
f_d<- flights |> 
  group_by(carrier) |> 
  select(carrier,arr_delay) |> 
  arrange(desc(arr_delay),.by_group = TRUE) |> 
  left_join(airlines,by = "carrier") |> 
  select(air_plane= name,
         carrier)

#another way without .by_group parameter
flights |> 
  group_by(carrier,arr_delay) |> 
  select(carrier,arr_delay) |> 
  arrange(carrier,desc(arr_delay))
  
  airlines
?arrange
  
#top 3 delay per carrier
#classic way.. TBD
  flights |> 
    group_by(carrier) |> 
    select(carrier,arr_delay) |> 
    arrange(desc(arr_delay),.by_group = TRUE) |> 
    filter(row_number()==3)
      
#modern way 
flights |> 
  group_by(carrier) |> 
  slice_max(arr_delay,n=3) |> 
  select(carrier,arr_delay)  

#max --> descending
#min --> ascending

#top 3 least delay per carrier
flights |> 
  group_by(carrier) |> 
  slice_min(arr_delay,n=3) |> 
  select(carrier,arr_delay)

#sarang functions , 2nd highest of carrier per arr_delay
flights |> 
  group_by(carrier) |> 
  slice_max(arr_delay,n=2) |> 
  slice_tail(n=1) |> 
  select(carrier,arr_delay)
  
  
