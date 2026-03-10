library(tidyverse)
library(nycflights13)

colSums(is.na(flights))

flights |> glimpse() |> 
  mutate(total_time =sum(dep_time,arr_time)) |> 
  select(carrier,dep_time,arr_time,total_time) |> head()

flights |>   
  mutate(total_time =rowSums(across(ends_with("delay")),na.rm=T)) |> 
  select(ends_with("delay"),total_time) |> head()


#prove the factor
sales <-tibble(
  item=c("apple","banna","cherry"),
  jan=c(50,0,0),
  feb=c(60,80,0),
  mar=c(20,NA,0),
  apr=c(20,NA,0),
)
sales
sales |> 
  mutate(tot = sum(jan,feb,mar),
         tot1= jan+feb+mar,
         tot2=rowSums(across(c(jan,feb,mar)),na.rm=T))

sales |> 
mutate(tot = sum(jan,feb,mar),
       tot1= jan+feb+mar,
       tot2=rowSums(across(feb:mar),na.rm=T)
      )

sales |> 
  mutate(tot = sum(jan,feb,mar),
         tot1= jan+feb+mar,
         tot2=rowSums(across(ends_with("delay")),na.rm=T)
  )

sales |> 
mutate(tot = sum(jan,feb,mar),
       tot1= jan+feb+mar,
       tot2=rowSums(across(feb:mar),na.rm=T)
      ) 

flights |> select(sched_dep_time,everything())

flights |>   
  mutate(total_time =rowSums(across(starts_with("dep")),na.rm=T)) |> 
  select(starts_with("dep"),total_time) |> 
  filter(rowSums(across(starts_with("dep")),na.rm=T) <400)

# ~(tide) in dplyr formula operator
#is.character -- attribute
flights |> 
  mutate(across(where(is.character),~tolower(.x))) |> 
  select(where(is.character))
# ~ apply this rule or start the formule
#.x the data in this columns
#. current position 

#find the flights where either the dep_delay or arr_delay was 
#greater then 80 mintues
#dep_delay+arr_delay > 80
flights |> select(carrier,dep_delay,arr_delay) |> 
  mutate(delay_tot=rowSums(across(c(dep_delay,arr_delay)),na.rm = TRUE)) |> 
  filter(delay_tot > 80)

#conver the ~ formula operator
flights |> select(carrier,dep_delay,arr_delay) |> 
  filter(rowSums(across(c(dep_delay,arr_delay),~.x>1300),na.rm = TRUE)>=1) 


sales <-tibble(
  item=c("apple","banna","cherry"),
   price=c(20,150,15),
  price1=c(20,11,15)
)
sales

#hitesh will do more exp
sales |> 
  mutate(is_expensive=across(c(price,price1),~.x>100),
         total = rowSums(across(c(price,price1))),
         total1 = rowSums(across(c(price,price1),~.x>162)),
         total2 = rowSums(across(c(price,price1),~.x>150)), #observe this
         total3 = rowSums(across(c(price,price1),~.x>=20)),
         total4 = rowSums(across(c(price,price1),~.x*20)), #observe this value
         total5 = rowSums(across(c(price,price1),~.x>149)), 
         ) |> 
  filter(rowSums(across(c(price,price1),~.x*149))>=1)

a <- TRUE
as.integer(a)

#find the flights where either the dep_delay or arr_delay was greater then 80 mintues
flights |> select(carrier,dep_delay,arr_delay) |> 
  filter(rowSums(across(c(dep_delay,arr_delay),~.x>890),na.rm = TRUE)>1)

flights |> select(carrier,dep_delay,arr_delay) |> 
  filter(rowSums(across(c(dep_delay,arr_delay),~.x>1100),na.rm = TRUE)>1)

flights |> select(carrier,dep_delay,arr_delay) |> 
  filter(rowSums(across(c(dep_delay,arr_delay),~.x>1300),na.rm = TRUE)>=1) 
