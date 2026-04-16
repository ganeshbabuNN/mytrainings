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

glimpse(flights)
glimpse(weather)

#join+mutate
flights |> 
    left_join(planes,by='tailnum') |>
    mutate(age=year.x-year.y) |> 
    select(carrier,tailnum,age) 

#putting the coalesce() inside amutate
flights |> 
    left_join(planes,by='tailnum') |>
    mutate(age=coalesce((year.x-year.y),0)) |> 
    select(carrier,tailnum,age)

x <- c(1, 2, NA, NA, 5, NA)
y <- c(NA, NA, 3, 4, 5, NA)
coalesce(x, 0)

#why coalesce() is not possible in select()?
#to migate we can transmute 
flights |> 
    left_join(planes,by='tailnum') |> 
    transmute(carrier,tailnum,age=coalesce((year.x-year.y),0))
#its age is temp varible in the pipe(), 
#mutate is adds new varibable or changes existing ones while keeping all orginal variables.
#transmute create new variable and drops every column which is not mentioned.

#memory optmizations
#reduce the column before using.
flights |> select(carrier,tailnum,year,month,day)  |> left_join(planes,by='tailnum',relationship = "many-to-one") 

#reduce rows before join
flights |> select(carrier,tailnum,year,month,day)  |> filter(year==2013) |> left_join(planes,by='tailnum',relationship = "many-to-one") 

#joining the list /nested data
nested <- flights |> group_by(carrier) |> nest()
nested$data
nested$data[[1]]

#join + distinct
planes_unique <- planes |> distinct(tailnum,.keep_all = TRUE)

flights |> left_join(planes_unique,by=join_by(tailnum),relationship = "many-to-one")

#join+window function
#dense_rank(),min_rank(),percent_rank,row_number()
flights |> 
    left_join(airlines,by="carrier") |> 
    group_by(name) |> 
    mutate(rank=dense_rank(desc(arr_delay))) |> 
    ungroup() |> 
    select(carrier,rank,name)

#join ? what check
#common keys
#key of same type 
#handling missing values
#type of join relationship
#are key are unique?
#row count expectations?

#join sematics

?left_join

full_join(
  x,
  y,
  by = NULL,
  copy = FALSE,
  suffix = c(".x", ".y"), 
  ...,
  keep = NULL,
  na_matches = c("na", "never"),
  multiple = "all",
  relationship = NULL
)
#copy
dummy <- tibble(
carrier =character(10)
)

left_join(flights,dummy,copy=TRUE)
left_join(dummy,flights,copy=TRUE)

#keep parameter
#keep display hidden key variables
inner_join(flights,airports,by=c("dest"="faa"),keep=TRUE) |> glimpse()

#na_matches
#controls how NA values behaves during the joins.
colSums(is.na(flights))
colSums(is.na(flights))
flights |> 
    inner_join(planes,by="tailnum",keep=TRUE) |>glimpse() |> 
    select(carrier,tailnum.x,tailnum.y) |> 
    filter(!is.na(tailnum.x))

student <- tibble(id = c(1, 2, NA), name = c("Alice", "Bob", "Unknown"))
hobbies  <- tibble(id = c(1,NA), hobby = c("Coding","Sting"))
student |> left_join(hobbies,by="id") #which is default
student |> left_join(hobbies,by="id",na_matches="na") #NA matches which is default
student |> left_join(hobbies,by="id",na_matches="never") #NA never matches