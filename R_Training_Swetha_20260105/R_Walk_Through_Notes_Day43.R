library(tidyverse)
library(nycflights13)
colSums(is.na(flights))
str(flights)
glimpse(flights)

# ranking arilines by average delay.
#carriers where the arr_delay is delay i,e average avg_delay..mean then sort the descending avg_delay
colSums(is.na(flights))
flights |>
  group_by(carrier) |> 
  summarise(avg_delay= mean(arr_delay,na.rm=TRUE)) |> 
  arrange(desc(avg_delay))

#add first year, month, day.
flights |>
  group_by(carrier) |> 
  summarise(avg_delay= mean(arr_delay,na.rm=TRUE),
            year=first(year),
            month=first(month),
            dep_time=first(day),
            arr_time=first(day)) |>
  arrange(desc(avg_delay))

#sorting the char col
flights |> arrange(tailnum) |> select(carrier,tailnum)

#ranking functions
x<-c(10,20,20,40,60)
tibble(
  value=x,
  row_num=row_number(x),
  min_rk=min_rank(x),
  den_rk=dense_rank(x),
  per_rnk=percent_rank(x)
)
#rank flights by delay
flights |> 
  mutate(delay_rank=min_rank(desc(arr_delay))) |> 
  select(carrier,arr_delay,delay_rank) |> 
  arrange(delay_rank) |> 
  add_count(delay_rank) |>
  filter(n>5)

#which airlines had the worst average delay each month?
# groupby(carrier)
  flights |> 
    group_by(month,carrier) |> 
    summarise(avg_delay=mean(arr_delay,na.rm=TRUE)) |> 
    arrange(month,desc(avg_delay)) |> 
    slice_max(avg_delay,n=1)
  
#assignment

    
