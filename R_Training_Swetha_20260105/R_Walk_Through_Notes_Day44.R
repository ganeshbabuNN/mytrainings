library(tidyverse)
library(nycflights13)
x<-c(10,20,30,30,40,50)
tibble(
  value=x,
  row_num=row_number(x),
  min_rk=min_rank(x),
  den_rk=dense_rank(x),
  per_rnk=percent_rank(x)
)

#filters
Syntax
filter(.data, ..., .by = NULL, .preserve = FALSE)
filter_out(.data, ..., .by = NULL, .preserve = FALSE)
#one 
#filter flights which are jan
flights |> filter(month==1)

#flights which long delay >2 hours
flights |> filter(arr_delay > 120) |> select(carrier,arr_delay)

#multiple conditions
#filter flights which are jan and day =10
flights |> filter(month==1 & day==10) |> select(carrier,month,day)
flights |> filter(month==1 , day==10) |> select(carrier,month,day)

#filter flights which are month=1,5 or day =10
flights |> filter(month==1 |month==5 | day==10) |> select(carrier,month,day)

#in operator
flights |> filter(month %in% c(1,5) | day==10)|> select(carrier,month,day)

#inline computations like calculated expression 
## filghts with speed > 500mph.
## dis/air_time * 60
flights |> 
  mutate(speed=(distance/air_time)* 60) |> filter(speed > 500) |> 
  select(carrier,distance,air_time,speed) |> glimpse()

#POSITIONS
flights[c(3,5),]
flights[3:6,]
flights[3,]
flights[,4]
flights[,"carrier"]
flights[,4:6]
flights[,c(4,10)]

#slice():selects the rows based on the integer positions.
flights |> slice(6)
flights |> slice(1:4)
flights |> slice(c(1,3))
flights |> slice(1,3)
flights |> slice()
flights |> slice(,3)

#slice_head() ---> head()
flights |> slice_head(3)
flights |> slice_head(n=3)
flights |> slice_head(n=3:6)
#prop ---> percentage 30% ,20% 
nrow(flights)
ncol(flights)
str(flights)
flights |> slice_head(prop=0.20)
#by parameter will you to perform the slice within specific group rather the table
flights |> slice_head(prop = 0.25,by=carrier) |> select(carrier,arr_time)
# i want in the row of 3 and 8? i want to achiee slice_head() ? slice()
flights |> slice_tail(3)
flights |> slice_tail(n=3)

#compartively above head() and tail() is far better
flights |> head()
flights |> head(4:4)
flights |> head(c(4,2))
flights |> tail()

#slice_min()
flights |> slice_min(distance) |> select(carrier,origin,dest,distance)
#top 3 min 
flights |> slice_min(distance,n=3) |> select(carrier,origin,dest,distance)