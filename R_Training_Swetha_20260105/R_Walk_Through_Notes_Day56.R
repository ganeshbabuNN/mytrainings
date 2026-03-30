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

#regex pattern
#find the flights to aiprots where its starts "S"
flights |> 
  filter(str_detect(dest,"^S")) |> select(carrier,dest)

#find the flights flygint to the aiports with name" EWR"
flights |> 
  filter(str_detect(dest,"KE")) |> select(carrier,dest) 
#multiple conditions
flights |> 
  filter(str_detect(dest,"KE|VG|AK")) |> select(carrier,dest) 

#Pattern-->Meaning-->Example
#^-->Starts with-->str_detect(dest, "^A")-->(Starts with A)
#$-->Ends with-->str_detect(dest, "ST$")-->(Ends with ST)
#.-->Any character-->str_detect(dest, "A.C")-->(A, then anything, then C)
#[ ]-->Character set-->str_detect(dest, "^[ABC]")-->(Starts with A, B, or C)

#Finding destinations that start with 'S' and end with 'C':
flights |> 
  filter(str_detect(dest,"^S.C$")) |> select(carrier,dest) 

#if_any, if_all
#Extract only the number from the tailnum.N14228 -> 14228
flights |> select(carrier,tailnum) |> 
  mutate(tail_digit = str_extract(tailnum,"\\d+"))

#Replace "N" at the start of tail numbers with "USA-"
flights |> select(carrier,tailnum) |> 
 mutate(new_tail = str_replace(tailnum,"^N","USA-"))

#Find the tail number that have double letters N3ALAA 
flights |> select(carrier,tailnum) |> 
  filter(str_detect(tailnum,"([A-Z])\\1")) |> distinct()

#find the destinations that ends with either 'A' or 'N'
flights |> select(carrier,dest) |> 
  filter(str_detect(dest,"[AN]$"))


#filtering the with grouped data
#n_groups()
##want to know how many different airlines  are in the flights datasets
flights |> group_by(carrier) |> n_groups()
flights |> select(year,month)|> group_by(year,month) |> n_groups()
flights |> select(year,month,day)|> group_by(year,month,day) |> n_groups()

#n() count of rows
flights |> group_by(carrier,origin) |> summarise(n_of_fligh_per_car = n())
flights |> group_by(dest) |> summarise(n_dest = n())


#to get the  unique of carrier and flight
flights |> select(carrier,flight,year,month,day) |> 
  summarise(u_car = n_distinct(carrier),
            u_fligh = n_distinct(flight))


