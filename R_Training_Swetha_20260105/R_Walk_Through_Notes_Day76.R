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
flights |> 
  select(flight,dep_delay,arr_delay) |>
  pivot_longer(
    cols = c(dep_delay,arr_delay),
    names_to ='Delay_type', #new column for cols names
    values_to="Delay"  # new cols for values
  )

 #multiple column + patterns
# %delay ends_with()
flights |> 
  select(flight,dep_delay,arr_delay) |>
  pivot_longer(
    cols = ends_with("delay"),
    names_to ='Delay_type', #new column for cols names
    values_to="Delay"  # new cols for values
  )

flights |> 
  pivot_longer(
    cols = ends_with("delay"),
    names_to ='Delay_type', #new column for cols names
    values_to="Delay"  # new cols for values
  )

#split names into multiple columns
flights |> 
  select(flight,dep_time,arr_time) |>
  pivot_longer(
    cols = c(dep_time,arr_time),
    names_to =c("event","type"),
    names_sep="_"
  )

colSums(is.na(flights))
#remove NA
flights |> 
  select(flight,dep_time,arr_time) |>
  pivot_longer(
    cols = c(dep_time,arr_time),
    names_to =c("event","type"),
    names_sep="_",values_drop_na = TRUE
  )

#long--> wide (pivot_wider())
#rows to columns
flights |> 
  select(flight,carrier,dep_delay) |> 
  pivot_wider(
    names_from = carrier,
    values_from = dep_delay
  )

#handling duplicates
flights |> 
  group_by(flight,carrier) |> 
  summarise(delay=mean(dep_delay,na.rm=TRUE))

filter(flights,flight==1) |> arrange()

flights |> 
  group_by(flight,carrier) |> 
  summarise(delay=mean(dep_delay,na.rm=TRUE),.groups="drop") |> 
  pivot_wider(
    names_from=carrier,
    values_from=delay
  )

#fill missing values
flights |> 
  group_by(flight,carrier) |> 
  summarise(delay=mean(dep_delay,na.rm=TRUE),.groups="drop") |> 
  pivot_wider(
    names_from=carrier,
    values_from=delay,
    values_fill = 0
  )

#multiple valuve cols
flights |> 
  select(flight,carrier,dep_delay,arr_delay) |> 
  pivot_wider(
    names_from = carrier,
    values_from = c(dep_delay,arr_delay)
  ) |> glimpse()

#separte columns
#split one column into multiple
flights |> 
  select(tailnum) |> 
  separate(
    tailnum,
    into=c("prefix","number"),
    sep=1
  )

#Unite column
flights |> 
  unite("route",origin,dest,sep="-",remove=FALSE) |> 
  select(flight,origin,dest,route)


