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

## Subqueries
s_carrier <- airlines |> 
  filter(name %in% c("Delta Air Lines Inc.","United Air Lines Inc.")) |> pull(carrier)

#subquery will not work sometimes in R pipe coz the return type is not a character for modules in operator
flights |> 
  filter(carrier %in% (airlines |> 
  filter(name %in% c("Delta Air Lines Inc.","United Air Lines Inc."))
))

#save that query in a object s_carrier
flights |> 
  filter(carrier %in% s_carrier)

#inline Subquery
flights |> 
  filter(carrier %in% (
    airlines |> filter(name=="Delta Air Lines Inc.") |> pull(carrier)
  ))

#using conditions from another table
flights |> 
  filter(dest %in%(
    airports |> filter(alt >500) |> pull(faa)
  ))

#subquery as join()
flights |> 
  semi_join(
    airlines |> filter(name=="Delta Air Lines Inc."),by="carrier"
  ) |> glimpse()

#subquery() + mutate
flights |> 
  mutate( # first query
    delay_vs_avg =  
      arr_delay - ( # second query
        flights |> summarise(avg=mean(arr_delay,na.rm=TRUE)) |> pull(avg) # Third query
      ),.keep="used"
  ) 

#different
avg_delay1 <- flights |> summarise(avg=mean(arr_delay,na.rm=TRUE)) |> pull(avg)
flights |> 
  mutate(delay_vs_avg =  arr_delay - avg_delay1,.keep="used")

#inline query
#an inline query acts like temp table, its run this internally query only once.

#Correlated query
# A corelated subqery to a column from the outer query . the innery query relies on the current row being processed by the outer query
# Run repeateably 
flights |> 
  group_by(carrier) |> 
  mutate(
    avg_delay = mean(arr_delay,na.rm=TRUE),
    diff = arr_delay - avg_delay,
    .keep="used"
  )

#Subquery using summarise()
flights |> 
  filter(dest %in% (
    airports |> filter(tz==-8) |> pull(faa)
  )) |> 
  summarise(avg_delay = mean(arr_delay,na.rm=TRUE))

#nested subquery
flights |> 
  filter(dest %in% ( # query 1
    airports |> 
      filter( # query 2
            faa %in% (
              flights  |> # query 3
                filter(arr_delay > 60) |> 
                  pull(dest)
          )
        ) |> 
            pull(faa)
        )
      )
# first query 3 --> flights where arr_delay > 60  then return the character of dest
# query 2 --> whatever the query3 character vector return to the airport$faa --Module in 
# query 1 --> whatever output of query 2, which return list of dest from aiports datasets
# main query --> whatever output of query 1, it will the dest of flights from the character vect of query1.
