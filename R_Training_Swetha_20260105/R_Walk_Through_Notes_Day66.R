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
View(flights)

glimpse(flights)
glimpse(weather)
flights |> distinct(origin,time_hour)
weather |> distinct(origin,time_hour)




flights |> 
  inner_join(weather,by=c("origin","time_hour"))

flights |> 
  inner_join(weather,by=c("origin","month","year","day"))  

##come there
flights |> 
  inner_join(weather,by=c("origin")) |> glimpse() |> 
  filter(time_hour.x <=time_hour.y)

#SQL ->Table, row, column  --> files(schema files)
#Python , R ->dataframe , observartion, variable , dataset
#noSQL, mongo -> collection, document, key or property , object

#self_join
flights |> 
  inner_join(flights,by="tailnum")

#debugin your joins
flights |> 
  anti_join(airlines,by="carrier")

nrow(flights)
nrow(flights %>% left_join(airlines))
nrow(flights %>% left_join(weather))
nrow(flights %>% left_join(airports))

flights |> 
  inner_join(planes,by="tailnum") |>  glimpse()

flights |> 
  left_join(weather,by=c("origin","time_hour"),suffix=c("_f","_w")) |> 
  rename_with(~paste0(.,"_w"),any_of(names(weather))) |>  
  rename_with(~paste0(.,"_f"),any_of(names(flights))) |>
  glimpse()

#join relationship
#one to one --> 
#one to many
#many to one --> 
#many to many --> 
# data explosion 

#one- to-one
##precheck
daily_weather |> select(year,month,day,origin) |> nrow()
unique_days |> select(year,month,day,origin) |> nrow()
unique_days |> select(year,month,day,origin) |> distinct()

daily_weather <-weather |> 
                   group_by(year,month,day,origin) |> 
                  summarise(temp=mean(temp,na.rm = TRUE))

unique_days<- flights |> distinct(year,month,day,origin)

unique_days|> 
  inner_join(daily_weather,by=c("year","month","day","origin"),
            relationship = "one-to-many")

#advanced join()
flights |> select(carrier) |> nrow()
airlines |> select(carrier) |> nrow()

flights |> 
  left_join(airlines,by="carrier",relationship ="many-to-one") #many to one

#one-to-Many
planes |> select(tailnum) |> nrow()
flights |> select(tailnum) |> nrow()

planes |> 
  inner_join(flights,by="tailnum",relationship ="one-to-many")

#many-to-many
flights |> select(origin) |> nrow()
weather |> select(origin) |> nrow()

flights |> 
  inner_join(weather,by="origin",relationship ="many-to-many")
#this is data explosion and should not be used anywhere

staff <- tibble(
  emp_id = c(1,2,3,4),
  name=c("A","B","C","D"),
  manager_id=c(NA,1,1,2)
)
staff

#in the above if you want see the name of the employee and the nameof the manager side-by-side , which join?
staff |> 
  inner_join(staff,
             by=c("manager_id"="emp_id"),
            suff=c("_emp","_mang"))
