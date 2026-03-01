library(tidyverse)
#what is dataframe vs tibble
my_df<-data.frame(
  name=c("A","B","C"),
  age =c(32,32,43)
)
my_df
str(my_df)
#tibble 

my_df_tib<-tibble(
  name=c("A","B","C"),
  age =c(32,32,43)
)
my_df_tib

#tribble- collest way of creating 
my_trib <- tribble(
  ~name,~age,
  "swet",32,
  "bo",32,
  "ram",44
)
my_trib

library(nycflights13)
#why we need tidyverse , dplyr modern R data langauge
flights
View(flights)
#p.s want to capurea all of of month==1 irrespective any year
flights_m <- flights[,c("year","month","day")]
flights_m[which(flights_m$month==1),]

#dplyr
flights_m1 <- select(flights,"year","month","day")
filter(flights_m1,month==1)
#enchaned dplyr pipe operator m
flights %>% select("year","month","day") %>% glimpse() %>% filter(month==1)
#nave pipe
flight_ga<- flights |> select("year","month","day") |> glimpse() |> filter(month==1)

#https://github.com/ganeshbabuNN/MyNotes/blob/master/R_Language/5-Framework/Data_Manpulations/Tidyverse_Method/archive/R_to_SAS_Tidyverse_Equivalents.pdf
#query the data
flights
class(flights)
glimpse(flights)
select(flights,dep_time,arr_time,carrier)
#modern ctrl+shift+m
flights |> select(dep_time) #one column
flights |> select(dep_time,arr_time,carrier) #more column
#position
flights |> glimpse() |> select(flight:dest) #range of column
flights |> glimpse() |> select(11:14) #range using index
flights |> glimpse() |> select(2,7,10) #getting by individual index
flights |> glimpse() |> select(3,11:14) #range using index

#exlude
flights |> select(-dep_time,-arr_time,-carrier) |> glimpse()
flight_1 <- flights |> select(-(year:day)) #excluding a range



