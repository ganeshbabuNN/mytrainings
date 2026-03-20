library(tidyverse)
library(nycflights13)

#flight arr_delay is from 30 to 60 max
flights |> filter(arr_delay >=30 & arr_delay<=60) |> select(carrier,arr_delay)

#between
flights |> filter(between(arr_delay,30,60)) |> select(carrier,arr_delay)

#In-List range
#list of lights from second quater(Apr to jun) 4:6
flights |> filter(between(month,4,6)) |> select(carrier,month)

flights |> filter(month %in% 4:6) |> select(carrier,month) #range might work only whole number


#fllights to get min and max of arr_delay

#min and max of arr_delay a report
flights |> 
  summarise(
    min_delay=min(arr_delay,na.rm = TRUE),
    max_delay=max(arr_delay,na.rm=TRUE)
  )

#min and max of arr_delay by carrier wise and get a report
flights |> 
  group_by(carrier) |> 
  summarise(
    min_delay=min(arr_delay,na.rm = TRUE),
    max_delay=max(arr_delay,na.rm=TRUE)
  )

#base R way
range(flights$arr_delay,na.rm = TRUE)

#shorthand of summary
summary(flights$arr_delay)

#filter by percentile range
#filter the filter to 25 to 75% 
flights |>select(carrier,arr_delay) |> 
  filter(between(arr_delay,
                 quantile(arr_delay,0.25,na.rm=TRUE),
                 quantile(arr_delay,0.75,na.rm=TRUE)))

#dynamical column name
c <- "arr_delay"
flights |> filter(.data[[c]]> 500)
  
flights[[3]]

#filter by aggres aggregations 
#flights that belongs to carrier who avg dep delay is > 20 mins
flights |> 
  group_by(carrier) |> 
  filter(mean(dep_delay,na.rm=TRUE)>20) |> select(carrier,dep_delay) |> 
  arrange(carrier,(dep_delay))  # TBD

summary(flights$dep_delay)

#no of traffic happening the destinations 
#10000 per year filter
flights |> 
  group_by(dest) |> 
  mutate(n_dest=n()) |> select(dest,n_dest) |> 
  filter(n_dest > 10000)

#or
flights |> 
  group_by(dest) |> 
  filter(n() > 10000) 
  
