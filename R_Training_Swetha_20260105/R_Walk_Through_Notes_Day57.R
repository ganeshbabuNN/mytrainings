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

flights
airlines
#from the flights datasets filter for the "JetBlue Airways" airlines
flights |> 
  left_join(airlines,by="carrier") |> glimpse() |> 
  filter(name=="JetBlue Airways") |> 
  select(carrier,name) |> distinct(carrier,name)

#microbenchmark
library(microbenchmark)

results <- microbenchmark(
   base_join = left_join(flights,airlines,by="carrier")
)
print(results)

results <- microbenchmark(
    base_join = left_join(flights,airlines,by="carrier")
)
print(results)

results <- microbenchmark(
  output= flights |> 
            left_join(airlines,by="carrier") |> 
            filter(name=="JetBlue Airways") |> 
            select(carrier,name) |> distinct(carrier,name)
)
print(results)


#modern bench

results <- bench::mark(
  output= flights |> 
    left_join(airlines,by="carrier") |> 
    filter(name=="JetBlue Airways") |> 
    select(carrier,name) |> distinct(carrier,name)
)
print(results)

library(profvis)
profvis({
  output= flights |> 
    left_join(airlines,by="carrier") |> 
    filter(name=="JetBlue Airways") |> 
    select(carrier,name) |> distinct(carrier,name)
}
)

#microbenchmark : if you want to know one is faster
#bench : if you care about memory 
#profvis :if you massive script , if you are not sure which line of script is problem.

#filter top/lowest N values

#top delay flights
flights |> 
  slice_max(arr_delay,n=5) |> select(carrier,arr_delay)

flights |> select(carrier,arr_delay) |> arrange(desc(arr_delay)) |> head(5)

#lowest delayed flights
flights |> 
  slice_min(arr_delay,n=5) |> select(carrier,arr_delay)

#filtering with date-time logic
#find all the flights that depart late at night or every early in the moring
#dep_time >=2200 10pm
#dep_time < 5am
flights |> select(carrier,year, month,day,dep_time) |> 
  filter(dep_time >=2200 | dep_time <=500) |> distinct()

#get the list of the flights whic are earliest 
colSums(is.na(flights))
flights |> select(carrier,time_hour) |> 
  slice_min(time_hour)

flights |> select(carrier,time_hour) |> 
  filter(time_hour==min(time_hour))

flights |> select(carrier,time_hour) |> 
  filter(time_hour==max(time_hour))



#flights which occurred on or after i,e >= 01mar2013
flights |> select(carrier,time_hour) |> 
  filter(time_hour>=as.POSIXct("2013-03-01"))

flights |> select(carrier,time_hour) |> 
  filter(time_hour>=as.Date("2013-03-01"))

#filter filter which is date range between jan 1 and 15 2013
flights |> select(carrier,time_hour) |> 
  filter(between(time_hour,
    as.Date("2013-01-01"),
    as.Date("2013-01-15")
    ))

#classical way
flights |> select(carrier,time_hour) |> 
  filter(time_hour>=as.Date("2013-01-01") &
           time_hour<=as.Date("2013-01-15")
  )

#benchmarking
bench::mark(
  bt_mark = flights |> 
    filter(between(time_hour,
                   as.Date("2013-01-01"),
                   as.Date("2013-01-15")
    )),
  cl_mark=flights |>
    filter(time_hour>=as.Date("2013-01-01") &
             time_hour<=as.Date("2013-01-15")
    )
)


microbenchmark(
  bt_mark = flights |> select(carrier,time_hour) |> 
    filter(between(time_hour,
                   as.Date("2013-01-01"),
                   as.Date("2013-01-15")
    )),
  cl_mark=flights |> select(carrier,time_hour) |> 
    filter(time_hour>=as.Date("2013-01-01") &
             time_hour<=as.Date("2013-01-15")
    )
)
