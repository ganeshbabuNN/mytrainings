library(tidyverse)
library(nycflights13)


flights
view(flights)
flights <- flights #not valid
#load the data
data("flights")
data("airports")
data("weather")
data("planes")
View(flights)
 
#remove the flight delayed more than 1 hour
flights |> filter_out(arr_delay > 60) |> select(carrier,arr_delay)
flights |> filter(!arr_delay > 60) |> select(carrier,arr_delay)#same equivalent
flights |> filter(arr_delay < 60) |> select(carrier,arr_delay) #same equivalent

#filter_all()
#if_any()  and if_all()
#keep the rows where all numeric values are positive
#>0
#traditional method
#all_var()->if_all()
flights |> 
  select(dep_delay,arr_delay,distance) |> 
  filter_all(all_vars(.>600))
#same as any_vars()-->if_any()
flights |> 
  select(dep_delay,arr_delay,distance) |> 
  filter_all(all_vars(.>5000))

max(flights$dep_delay,na.rm=TRUE)
max(flights$arr_delay,na.rm=TRUE)
max(flights$distance,na.rm=TRUE)

#modern method filter()+if_all
flights |>   
  filter(if_all(c(dep_delay,arr_delay,distance),~.>4000))

flights |>   
  filter(if_any(c(dep_delay,arr_delay,distance),~.>4000))

#filter_if() - apply condition based on column type.
#predicate is.numeric(),is.character()
flights |> 
  select(dep_delay,arr_delay,distance,carrier) |> 
  filter_if(is.numeric,all_vars(.>600))

#modern method #filter_if() => filter+if_all(where(is.numeric))
flights |> 
  select(dep_delay,arr_delay,distance,carrier) |> 
  filter(if_all(where(is.numeric),~.>600))

#filter_at()--> apply condition to select column
flights |>   
  filter_at(vars(dep_delay,arr_delay,distance),all_vars(.>600))

#modern 
flights |>   
  filter(if_all(c(dep_delay,arr_delay,distance),~.>4000))

#filter_all() --Apply all the column
#filter_if()-->apply column by conditions
#filter_at()--> apply for specific var.
#if_any() -> any_var() , if_all()--> all_var() 


#Grouping Data in R

#grouped by one column
#group_by(), summarise()
#it does not change the output but stores in the metadata
flights |> 
  group_by(month)

#summarise
flights |> 
  group_by(month) |> 
  summarise(avg_delay=mean(arr_delay,na.rm=TRUE))

#grouped by two column
flights |> 
  group_by(month,carrier) |> 
  summarise(avg_delay=mean(arr_delay,na.rm=TRUE))

flights |> 
  select(month,carrier) |> distinct()

#grouping structure
group_vars(flights |> group_by(month,carrier))#metadata
group_keys(flights |> group_by(month,carrier)) #keys

### summary - .group sematics.
base_summary <- flights |> group_by(origin,carrier,month) 
#.groups = "Drop" - this removes all the grouping entirely . this result is a standard
base_summary |> summarise(avg_delay=mean(arr_delay,na.rm=TRUE),.groups = "drop")
#.groups = "drop_last" - this drops the last level of grouping month but keep the data grouped by origin and carrier.
base_summary |> summarise(avg_delay=mean(arr_delay,na.rm=TRUE),.groups = "drop_last")
#.groups = "keep" - this retains the orginal structure
base_summary |> summarise(avg_delay=mean(arr_delay,na.rm=TRUE),.groups = "keep")
#.groups = "rowwise" - this turns every single row of the results summary into the own group
base_summary |> summarise(avg_delay=mean(arr_delay,na.rm=TRUE),.groups = "rowwise")
# x<0 , early , x<15"on time or delayed
get_rating <- function(x){
  if(x<0) return("Early")
  if(x<15) return("OnTime")
  return("Delayed")
}
get_rating(16)
get_rating(-1)
get_rating(4)
flights |> group_by(origin,carrier) |> 
     summarise(avg_delay=mean(arr_delay,na.rm=TRUE),.groups = "rowwise") |> 
    mutate(
      rating=get_rating(avg_delay) #works because of rowwise
    )
  
#rought level
df <- tibble(
  Player = c("A", "A", "B", "B"),
  Score  = c(10, 20, 5, 15)
)

# A 'picky' function that breaks if you give it a group/vector
check_level <- function(x) {
  if (x > 15) return("Pro")
  return("Starter")
}

df %>%
  group_by(Player) %>%
  summarise(Total = sum(Score), .groups = "keep") %>%
  mutate(Level = check_level(Total))

df %>%
  group_by(Player) %>%
  summarise(Total = sum(Score), .groups = "rowwise") %>%
  mutate(Level = check_level(Total))
