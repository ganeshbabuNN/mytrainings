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

#advanced by parameter join_by()
flights |> 
  left_join(airports,by=c("dest"="faa")) |> glimpse()

flights |> 
  left_join(airports,by=join_by(dest==faa)) 

flights |> 
  left_join(weather,by=join_by(origin,year,month,day))

#Inequality joins inside operations like >,< ...etc
flights |> 
  left_join(weather,by=join_by(origin,year,month,day,
                               time_hour >=time_hour))

#closed match
flights |> 
  left_join(weather,by=join_by(origin,year,month,day,
                               closest(time_hour >=time_hour)))

#joining the using aggreated tables
weather_summary<- weather |> 
                    group_by(origin) |> 
                    summarise(avg_temp = mean(temp,na.rm=TRUE))

flights |> 
  left_join(weather_summary,by='origin',relationship = "many-to-one") |> 
  select(flight,carrier,tailnum,origin,avg_temp)
#preventing duplication
##improve the performance






