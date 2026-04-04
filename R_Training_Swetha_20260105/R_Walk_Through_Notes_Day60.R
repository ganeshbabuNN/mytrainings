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

#fliter by using lead/lag 

#detect increase compared to previous row
#which flights have larger delay than the previous flight
flights |> 
  mutate(
    larg_delay=dep_delay > lag(dep_delay)
  ) |> 
  #filter(dep_delay > lag(dep_delay)) |> 
  select(carrier,month,year,day,time_hour,dep_delay,larg_delay) |> tail(10)

#reverse decrease compared to previous row
#which flights have smaller delay than the previous flight
flights |> 
  filter(dep_delay < lag(dep_delay)) |> 
  select(carrier,month,year,day,time_hour,dep_delay)

#compare with next row
#which flights have delay smaller than the next flight
flights |> 
  filter(dep_delay < lead(dep_delay)) |> 
  select(carrier,month,year,day,time_hour,dep_delay)

#Filtering the with external lookup tables
#list of tailnum after 2010
y2010_tailnum <- planes |> filter(year >2010) |> select(tailnum) |> distinct() |> pull()
y2010_tailnum
class(y2010_tailnum)
#get the list of flights which relavent to 2010 tailnum
flights |> filter(tailnum %in% y2010_tailnum) |> select(carrier,tailnum) |> distinct() |> arrange()

#concept to filter based on the tibble column
#"N150UW" "N151UW" "N152UW" "N153UW" "N154UW" "N155UW" "N156UW"
t_tailnum <- tibble(tailnum = c("N150UW","N151UW","N152UW","N153UW","N154UW","N155UW","N156UW"))
class(t_tailnum)
dim(t_tailnum)
#get filter only those tailnum no based on that column
flights |> semi_join(t_tailnum,by="tailnum")

#semi_join concept vs inner join
#table A
heros<- tribble(
  ~name,~pub_id,
  "batman",1,
  "hellboy",3
)
#table B
pubs <- tribble(
  ~pub_id,~pub_name,
  1,"DC",
  2,"Marvel"
)

heros
pubs
inner_join(heros,pubs,by="pub_id")

semi_join(heros,pubs,by="pub_id")
a<- nest_join(pubs,heros,by="pub_id")
View(a)
anti_join(heros,pubs,by="pub_id")

#dyanmic 
y2010_tailnum <- planes |> filter(year>2010) |> select(seats,tailnum) 
flights |> semi_join(y2010_tailnum,by="tailnum") |> select(carrier,tailnum)

