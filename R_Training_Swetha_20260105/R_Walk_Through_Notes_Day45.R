library(tidyverse)
library(nycflights13)

#slice_min()
flights |> slice_min(distance) |> select(carrier,origin,dest,distance)
#top 3 min 
flights |> slice_min(distance,n=3) |> select(carrier,origin,dest,distance)

flights |> slice_max(distance) |> select(carrier,origin,dest,distance) |> distinct(distance)
flights |> slice_max(distance,n=3) |> select(carrier,origin,dest,distance) |> distinct(distance)

#sample()-slice_sample(n=...,prop=..., )
#code tunning
flights |> select(year,month,day,carrier) |> slice_sample(n=8)
#sample handle 19 variables ---> then sampling 
#4 varible ---> then sampling 
flights  |> slice_sample(n=8) |> select(year,month,day,carrier)
##sample handle 19 variables ---> then sampling  --> then 4 variables.

#code tunning 
#A-->BC-->DEF #query exec decre but if i have more data 1.5 laksh..
#resource , ram,cpu=its conusmign to execute the query
## BC function  ---> ZE function
#code optmizations
#A --> B --> C --> D-->E --> F
#A-->BC-->DEF #query exec decre

#Byte Compilation in function chapters
#1 TB flights data /// select(flights) --> how long?30-1hr 
## we use big data ... to process this big data --> special algorithm which on parallel computing spark, rspark below 5 mins
# current file system NTFS for windows, for linux  lxt..
# for big data  HDFS ( hadoop file system) #its like clustered environment

flights  |> slice_sample(prop=0.25) |> select(year,month,day,carrier)
flights  |> slice_sample(prop=0.25, by=carrier) |> select(year,month,day,carrier)
flights  |> slice_sample(by=carrier) |> select(year,month,day,carrier)

#complext conditions
#flights delayed but not cancelled
colSums(is.na(flights))
flights |> filter(!is.na(arr_delay) & arr_delay >0) |> select(carrier,arr_delay)

#extreme delay in winter
flights |> filter(month %in% c(11,12,1,2) ,arr_delay >100)
flights |> slice_max(arr_delay) |> select(arr_delay) 

#find the flights where the total operation time execceed a certain threshold
#operations time == arr_time+dep_delay+arr_delay
#across()
flights |> select(arr_time,dep_delay,arr_delay) |>
  filter(rowSums(across(c(arr_time,dep_delay,arr_delay)),na.rm = TRUE) >400)
sum(8,38,3)
rowSums(8,38,3)
?rowSums
flights |> 
  mutate(tota_delay=rowSums(across(c(dep_delay,arr_delay)),na.rm=TRUE))|> 
  select(arr_time,dep_delay,arr_delay,tota_delay) 
?across
flights |> 
  select(dep_delay,arr_delay) |> 
    mutate(tota_delay=rowSums(.,na.rm=TRUE))

#across ()
#mean for total operations based on the origing
flights |> 
  group_by(origin) |> 
  summarise(across(c(arr_time,dep_delay,arr_delay),mean,na.rm=TRUE))

flights |> 
  group_by(origin) |> 
  summarise(across(where(is.numeric),mean,na.rm=TRUE))
  
a <- matrix(1:10,nrow=3)
dim(a)
rowSums(a)
