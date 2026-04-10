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

#joins
#inner_join()
#left_join()
#right_join()
#full_join()

#additional
nest_join()
semi_join()
anti_join()
cross_join()
join_by()

#Table A: Heroes
heroes <- tribble(
  ~name,    ~pub_id,
  "ChotaBeem",  1,
  "BalaGanesh", 3
)

# Table B: Pubs
pubs <- tribble(
  ~pub_id, ~pub_name,
  1,       "ChotaBeem",
  2,       "JaiHanuman"
)

heroes
pubs

#nest_join()
#keeps the left table as-is but add the list of matches as a min-table inside a new column
x<-nest_join(pubs,heroes,by="pub_id")
x
x$heroes[[2]]
x$heroes[[1]]

#filter join()
#semi_join()
left_join(heroes,pubs,by="pub_id") #adding a new column from the right table
semi_join(heroes,pubs,by="pub_id") #only matches rows without adding any extra rows or column

#anti_join()
#keep the rows in th eleft only if they don't match in the right
anti_join(heroes,pubs,by="pub_id")

#cross_join()
cross_join(heroes,pubs)

#join_by()
inner_join(heroes,pubs,by=join_by(pub_id))
?join_by

sales <- tibble(
  id = c(1L, 1L, 1L, 2L, 2L),
  sale_date = as.Date(c("2018-12-31", "2019-01-02", "2019-01-05", "2019-01-04", "2019-01-01"))
)
sales

promos <- tibble(
  id = c(1L, 1L, 2L),
  promo_date = as.Date(c("2019-01-01", "2019-01-05", "2019-01-02"))
)
promos

# Match `id` to `id`, and `sale_date` to `promo_date`
by <- join_by(id, sale_date >= promo_date)
left_join(sales, promos, by)

#same var name as key
flights |> left_join(airlines,by="carrier") 

#diff varibale as a key
flights |> left_join(airports,by=c("dest"="faa")) |> select(dest,month,year,day,name)
filter(airports,faa=="ATL")

#multiple keys, here i want to join with multiple keys which are same in both table.
flights |> glimpse() #origin, time_hour
weather |> glimpse() #origin, time_hour
flights |> left_join(weather,by=c("origin","time_hour"))