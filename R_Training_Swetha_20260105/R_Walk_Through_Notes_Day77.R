library(tidyverse)
library(nycflights13)

flights
view(flights)
data("flights")
data("airlines")a
data("airlines")
data("airports")
data("weather")
data("planes")
View(flights)

#Extract Patterns
flights |> 
  mutate(code="AA123") |> 
      extract(
        code,
        into=c("carrier","number"),
        regex="([A-Z]+)([0-9])"
      ) |> select(carrier,number)
    # select(carrier,code)

#Complete missing combinations
df <- tibble(
  name=c("A","AI","Beth"),
  day=c(1,3,2),
  apples=c(2,5,3)
)

df
df |> 
  complete(name,day=1:3)

#fill missing values
df <- tibble(
  name=c("A","AI",NA,"B",NA,"C","D",NA,NA)
)
df |> 
  arrange(name) |> 
  fill(name,.direction = "down")

#if we do not arrange
df |> 
  fill(name,.direction = "down")

#replace missing values
colSums(is.na(flights))
flights |> 
  mutate(dep_delay=replace_na(dep_delay,0)) |> 
  select(dep_delay)

#Nesting and unesting
nested <- flights |> 
              group_by(carrier) |> nest()
nested <- flights |>nest(.by="carrier")
nested

nest(flights,.by="carrier")

nested |> unnest(cols=data)

#columns --> rows = pivot_longer()
#rows --> column = pivot_wider()
#split column = separate()
#combine column = unite()
#regex = extract()
#fill gaps = complete()
#fill NA = fill()
#replace NA = replace_na()
#nest/unest data = nest() and unest()

#MODIFYING DATA

#core concept : MUTATE

#creating a new columns
flights |> 
  mutate(
    gain=arr_delay-dep_delay,
    speed=distance/air_time * 60,
    .keep="none"
  )

#modifying the existing columns

flights |> 
  mutate( 
    dep_delay=dep_delay/60
  )

#conditional modification
#if_else()
flights |> 
  mutate(status=if_else(arr_delay >0,"Delayed","On time"),.keep="none")
#case_when()
flights |> 
  mutate(
    status=case_when(
      arr_delay <=0~"On-Time",
      arr_delay <=60~"Minor Delay",
      arr_delay <=180~"Moderate Delay",
      TRUE~"Severe delay"),
      .keep="none"
    )


