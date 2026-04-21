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

#cur_data()
#this will return tibble containing all the rows and columns for the current group excluding grouping variable themselves
flights |> 
  group_by(origin) |> 
  mutate(
    total_group_rows=nrow(cur_data()),.keep = "none"
  )

flights |> 
   filter(origin=="EWR")

#simply further
flights |> 
  group_by(month) |> 
  summarise(avg_delay=mean(arr_delay,na.rm=TRUE))
#optimize the above side .by parameter in summarize()
flights |> 
  summarise(avg_delay=mean(arr_delay,na.rm=TRUE),.by = month)

#use grouped join
#avg arr_delay per carrier get the airlines details
flights |> 
  summarise(avg_delay =mean(arr_delay,na.rm=TRUE),.by=carrier) |> 
  left_join(airlines,by="carrier")

#handling missing values in 
flights |> 
  summarise(avg_delay =mean(arr_delay,na.rm=TRUE),.by=carrier)

#coalesce()
flights |> 
  select(carrier,arr_delay,year,month,day) |> 
  group_by(carrier) |> 
  filter(!any(is.na(arr_delay)))

#get the unique group combinations
flights |> 
  distinct(month,carrier)

?distinct
flights |> 
   group_by(month,carrier) |> 
   group_keys()

#full group metadata
#normal group data returns the integer
flights |> 
  group_by(month) |> 
  summarise(n_r=n())

#group_data retuns the list
a<-flights |> 
    group_by(month) |> 
    group_data()
a
a$.rows

#group_rows() return the list of rows indices per grop
flights |> 
    group_by(month) |> 
    group_rows()




