library(tidyverse)
library(nycflights13)

#find the flights where either the dep_delay or arr_delay was greater then 80 mintues
flights |>  select(carrier,dep_delay,arr_delay) |> 
  filter(rowSums(across(c(dep_delay,arr_delay),~.x>80),na.rm = TRUE)>=1)

#filtering with comparison operator
#== equal to 
flights |> 
  filter(dest=='MIA')
#!= -- not equal operator
flights |> 
  filter(origin !='EWR') |> distinct(origin)

#> 
flights |> 
  filter(dep_delay >120)

# < , <=,>=
flights |> 
  filter(dep_delay < 120)

# "in group" %in%
flights |> 
  filter(carrier %in% c("UA","AA","DL")) |> distinct(carrier)

#relational &, | and !NOT
flights |> 
  filter(month==1 & day==1) |> select(carrier,month,day)

#
flights |> 
  filter(month==1 | month==11) |> select(carrier,month,day)

#!
#flights where it is not delayed more then 2 hours
flights |> filter(!(arr_delay >120)) |> distinct(arr_delay)


#filtering the missing values
##techniques to find the missing values
is.na(flights$arr_delay)
#colSums
missing_col <- colSums(is.na(flights)) 
missing_col[missing_col>0]

#dply way
flights |> 
  summarise(across(everything(),~sum(is.na(.x)))) |> glimpse()

#data.table this fastest data retrival
library(data.table)
flight_dt <- as.data.table(flights)
flight_dt[,lapply(.SD, function(x) sum(is.na(x)))]

#naniar
library(naniar)
gg_miss_var(flights)

#flights which are cancelled 
flights |> filter(dep_time==NA) #it does not work
flights |> filter(is.na(dep_time))

#flights which are departured only
flights |> filter(!is.na(dep_time))

#flights which cancelled out effectively
flights |> filter(is.na(dep_time) & is.na(arr_time)) |> select(carrier,dep_time,arr_time)
#remove NA rows
flights |> filter(!is.na(dep_time) & !is.na(arr_time)) |> select(carrier,dep_time,arr_time)

#other effective
flights |> drop_na(dep_time,arr_time) |> select(carrier,dep_time,arr_time)

3>60
0 > 60

#flights were arrival delay > 60 minutes
flights |> drop_na(arr_delay) |> filter(arr_delay >60) |> select(carrier,dep_time,arr_time,arr_delay)
#using coalesce()
flights |> filter(coalesce(arr_delay,0) >60) |> select(carrier,dep_time,arr_time,arr_delay)

#mutliple columsn if departure delay is missing, it usses the arrival delay
flights |> filter(is.na(dep_delay) | !is.na(arr_delay)) |> 
  mutate(delay = coalesce(dep_delay,arr_delay)) |> select(carrier,dep_delay,arr_delay,delay)
