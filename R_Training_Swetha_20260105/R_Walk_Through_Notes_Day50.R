library(tidyverse)
library(nycflights13)

#ifany() and if_all() are designed used in filter()
#if_any
#find the flights where either dep or arr delay exceed > 60
flights |> 
  filter(dep_delay >60 | arr_delay>60) |> select(dep_delay,arr_delay)

flights |> 
  filter((if_any(c(dep_delay,arr_delay),~.x>60))) |> select(dep_delay,arr_delay)

#if_all
flights |> 
  filter(if_all(c(dep_delay,arr_delay),~.x>60)) |> select(dep_delay,arr_delay)

flights %>% filter(if_any(ends_with("delay"), ~.>60))


#get the status of flights where arr_dely > 60 , true="very late",false="Acceptable", missing="cancelled/unknown"
flights |> 
  mutate(
    arr_status= if_else(
      condition = arr_delay>60,
      true = "Very Late",
      false = "Acceptable",
      missing = "Cancelled/Unknown"
    )
  ) |> select(carrier,arr_delay,arr_status)

ifelse(c(TRUE,FALSE),"High",0)
if_else(c(TRUE,FALSE),"High",0)

flights |> glimpse()

#across()
flights |>  
  select(ends_with("time"))

#flights |>   filter(across(c(dep_delay,arr_delay),~.x>60)) #not wokring
flights |> 
  filter(if_any(c(dep_delay,arr_delay),~.>60))

flights |> 
  mutate(across(ends_with("time"),as_datetime))


flights %>% filter(if_any(ends_with("delay"), ~.>60))

#logical reductions
#any it return TRUE at lease one col is TRUE
flights |> 
  filter(any(c(dep_delay,arr_delay)>60)) |> 
  select(carrier,dep_delay,arr_delay)

#All it return TRUE at every element of X TRUE
flights |> 
  filter(all(c(dep_delay,arr_delay)>60)) |> 
  select(carrier,dep_delay,arr_delay)

a<- c(50,60,70,80,90)
b<- c(91,81,91,78,65,30)
a
b
any(c(a,b) >40)
all(c(a,b) >40)


#filter() --verb
#helper function -- if_any(),if_all(), between(),near()

#select()- verb
#helper starts_width(),ends_width(),contains(), everything,all_of(),any_of()

#mutate()/summarise()
#helper - across(),pick(),c_across()(for rowwise())
distinct()
n_dis




