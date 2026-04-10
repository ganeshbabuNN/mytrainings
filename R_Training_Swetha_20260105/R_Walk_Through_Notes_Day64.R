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
#only keep the row where the key column exits in both tables
inner_join(heroes,pubs,by="pub_id")
flights |> inner_join(airlines,by="carrier") |> glimpse() |> select(carrier,name) |> distinct()

#left_join()
#keep all rows from the table A and return the row which are matched to table B based on the key.
left_join(heroes,pubs,by="pub_id")
flights |> left_join(airlines,by="carrier") |> glimpse() |> select(carrier,name) 

#right_join()
#keep all rows from the table B and return the row which are matched to table A based on the key.
right_join(heroes,pubs,by="pub_id")
flights |> right_join(airlines,by="carrier") |> glimpse() |> select(carrier,name) 

#full_join()
full_join(heroes,pubs,by="pub_id")
#keeps everthing from both table along with matches.