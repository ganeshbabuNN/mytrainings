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
 
full_join(
  x,
  y,
  by = NULL,
  copy = FALSE,
  suffix = c(".x", ".y"), 
  ..., #variable argument
  keep = NULL,
  na_matches = c("na", "never"),##
  multiple = "all",##
  relationship = NULL##
)
#na_matches
student <- tibble(id = c(1, 2, NA), name = c("Alice", "Bob", "Unknown"))
hobbies  <- tibble(id = c(1,NA), hobby = c("Coding","Sting"))
student |> left_join(hobbies,by="id") #which is default
student |> left_join(hobbies,by="id",na_matches="na") #NA matches which is default
student |> left_join(hobbies,by="id",na_matches="never") #NA never matches

#multiple ?all, any,first,last, warning
?join
f <- tibble(tailnum="N123",dest="BLR")
f1 <- tibble(tailnum="N123",repair=c("Engine","Tires","Oil"))
f
f1
f |> left_join(f1,by="tailnum")
f |> left_join(f1,by="tailnum",multiple = "all") #default
f |> left_join(f1,by="tailnum",multiple = "any")#return the first match and ignore the rest
f |> left_join(f1,by="tailnum",multiple = "first") #return the first occureance
f |> left_join(f1,by="tailnum",multiple = "last")
f |> left_join(f1,by="tailnum",multiple = "warning") #its equalivent "all" but it prints warning

#filter sematics
?filter
filter(.data, ..., .by = NULL, .preserve = FALSE)
#.by came from dplyr 1.1+
flights |> filter(arr_delay<=min(arr_delay,na.rm=TRUE),.by=month) #18
flights |> group_by(month) |> filter(arr_delay<=min(arr_delay,na.rm=TRUE)) |>ungroup() #equivalent to that
#.preserve table
df <- tibble(
  group=c("A","A","B","B"),
  value=c(10,20,5,8)
)
df
df |> group_by(group) |> 
  filter(value >15,.preserve = FALSE) |> 
  summarise(n=n())

df |> group_by(group) |> 
  filter(value >15,.preserve = TRUE) |> 
  summarise(n=n())

?filter_all()
#filter - keep obs where condition is TRUE
#filter_OUT - removes obs where condition is TRUE
filter_out(.data, ..., .by = NULL, .preserve = FALSE)
#flight delayed more than 1 hour
flights |> filter(arr_delay > 60) |> select(carrier,arr_delay)
#remove the flight delayed more than 1 hour
flights |> filter_out(arr_delay > 60) |> select(carrier,arr_delay)
flights |> filter(!arr_delay > 60) |> select(carrier,arr_delay)
flights |> filter(arr_delay < 60) |> select(carrier,arr_delay)
