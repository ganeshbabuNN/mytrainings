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

#filter by propositions
#find he airports more then 5% of their flights were cancelled.
#dep_time > 5 % are cancelled. sum(is.na(dep_time)) >0.05

flights %>%
  group_by(origin) %>%
  filter(round(mean(is.na(dep_time)),2) >0.02) |> select(origin,dep_time)

flights %>%
  group_by(origin) %>%
  summarize(p_missing = mean(is.na(dep_time)))

flights |> 
  summarise(across(everything(),~mean(is.na(.x))))

#flitering using windows ranking functions
x<-c(10,20,20,40,15,NA,NA)
row_number(x)
min_rank(x)
dense_rank(x)
percent_rank(x)
#formule x = rank-1/(n-1)

#first flight per carrier per day
flights |> 
  group_by(carrier,year,month,day) |> 
  arrange(dep_time) |> 
  mutate(f_carrier = row_number()) |> 
  select(carrier,year,month,day,dep_time,f_carrier) |> 
  filter(f_carrier==1)

#optimize
flights |> 
  group_by(carrier,year,month,day) |> 
  arrange(dep_time) |>
  filter(row_number()==1)

#find the single most delayed flight for each carrier
flights |> 
  group_by(carrier) |> select(carrier,arr_delay) |> 
  arrange(carrier,desc(arr_delay)) |> slice_head(n=1)

flights |> 
  group_by(carrier) |> select(carrier,arr_delay) |> 
  arrange(carrier,desc(arr_delay)) |> slice_min(desc(arr_delay),n=1)

flights |> 
  group_by(carrier) |> select(carrier,arr_delay) |> 
  arrange(carrier,(arr_delay)) |> slice_max((arr_delay),n=1)

flights |> group_by(carrier) |> 
  filter(row_number(desc(arr_delay))==1) |> select(carrier,arr_delay)

#find the flights tied for the top 3 longest delay per origin airport
flights |> 
  group_by(origin) |> 
  mutate(m_rank = min_rank(desc(arr_delay))) |> arrange(origin,desc(arr_delay),m_rank) |> 
  select(origin,arr_delay,m_rank) |> 
  filter(m_rank <=3)

flights |> 
  group_by(origin) |> 
  filter(min_rank(desc(arr_delay)) <=3) |> 
  select(origin,carrier,flight,arr_delay) |> 
  arrange(origin,desc(arr_delay))

"one" > "FIfty four"
"one" < "tWo"
