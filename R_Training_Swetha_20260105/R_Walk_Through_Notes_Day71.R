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

#Mutate in group_by()
flights |> 
  group_by(month) |> 
  mutate(month_avg=mean(arr_delay,na.rm=TRUE)) |> 
  select(month,month_avg)

#filter in group_by()
flights |> 
  group_by(month) |> 
  mutate(avg_delay = mean(arr_delay,na.rm=TRUE)) |> 
  filter(arr_delay >= avg_delay)  |> 
  transmute(carrier,flight,month,arr_delay,avg_delay)

#transumate is replace by .keep="none" # superceeded/decpreated.
flights |> 
  group_by(month) |> 
  mutate(carrier,flight,month,arr_delay,month_avg=mean(arr_delay,na.rm=TRUE),.keep = "none")

#arrange in group()
flights |> 
  group_by(month) |> 
  arrange(desc(arr_delay)) |> 
  transmute(carrier,flight,month,arr_delay)

#slice in group_by()
flights |> 
  group_by(month) |> 
  slice_max(arr_delay,n=3)|> 
  transmute(carrier,flight,month,arr_delay)

#n()- by group()
flights |> 
  group_by(month) |> 
  mutate(count=n(),.keep = "none") |> distinct()

flights |> 
  group_by(month) |> 
  summarise(count=n()) |> distinct()

#across() with group_by()
flights |> 
  group_by(carrier) |> 
  summarise(across(c(arr_delay,dep_delay),~mean(.x,na.rm=TRUE)))

#predicate functions.

#ranking in group_by()
flights |> 
  group_by(carrier) |> 
  mutate(carrier,arr_delay,rank=min_rank(desc(arr_delay)),.keep = "none") |> 
  arrange(carrier,(rank))

#cur_group()
rm <-flights |> 
          group_by(origin,month) |> 
          summarise(
            group_info =list(cur_group()),
            avg_delay=mean(dep_delay,na.rm=TRUE),
            .groups = "drop"
          )
rm
class(rm)
rm$group_info[[28]]

#cur_column()- Dynamically column creations
flights |> 
  summarise(across(c(arr_delay,dep_delay),~{
    message("Currently processing the column :",cur_column())  
  mean(.x,na.rm=TRUE)}))

#cur_data()
#this will return tibble containing all the rows and columns for the current group excluding grouping variable themselves
flights |> 
  group_by(origin) |> 
  mutate(
    total_group_rows=nrow(cur_data()),.keep = "none"
  )

  

#this will return the integer of grouped with distinct grouped variable
flights |> 
  group_by(origin) |> 
  summarise(
    total_group_rows=n()
  )

#group_map() - perform an operations on each group and store the result in a list
flights |> 
  group_by(carrier) |> 
  group_map(~head(.x,2))

#group_modify() - you want transform your data but keep it as a grouped dataframe
flights |> 
  group_by(carrier) |> 
  group_modify(~head(.x,2))  


