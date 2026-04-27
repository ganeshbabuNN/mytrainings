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


flights |> 
  filter(dest %in% ( # query 1
    airports |> 
      filter( # query 2
            faa %in% (
              flights  |> # query 3
                filter(arr_delay > 60) |> 
                  pull(dest)
          )) |> 
            pull(faa)
        ))

#subqueries with exists logic
flights |> 
  semi_join(weather, by=c("origin","time_hour")) # SQL EXISTS

#windows-stye subqeries
flights |> 
  group_by(dest) |> 
  mutate(rank=dense_rank(desc(arr_delay)),.keep="none") |> 
  filter(rank<=3)

#subquery vs join
#filtering the data which already exists --> semi_join()
#exluding matches --> anti_join()
#adding columns --> left_join()
#value lookup -> %in%

#%in%- lookup ing
#semi_join()-- EXISTS
#anti_join()-- NOT EXISTS
#mutate()--> dervied variables

#when not to use subqueries
#avoid when.
##multiple columns --> use joins
##more performance --> use joins
##logic becomes nested --> use pipe

#hight level , subqueries are not a primary concept.

###COMPLETE SUBQUERY

#Combining the queries
#row-wise combing
#column-wise combing

#row-wise combining
#Use only when the datasets should have same column and type
jan_flights <- flights |> filter(month==1)
feb_flights <- flights |> filter(month==2)

combine <- bind_rows(jan_flights,feb_flights)
#key concpets
##automtically aligns column
#missing column --> filled in the NA

#column-Wise combining
##used when datasets have same number of rows
df1 <- flights |> select(flight,origin)
nrow(df1)
df2 <- flights |> select(dest,air_time)
nrow(df2)

combined <-bind_cols(df1,df2)
#risk
#no key matching-->purely based on positions

#Set operations
#union() - combine the unique rows
#union_all()- all the rows
#intersect() -- common rows
#setdiff() - row in A but not in B
#sysmdiff() - rows in either A or B but not both

#Rule
## same column names
## same data types

a <- tibble(
  id=c(1,2,3,4),
  name=c("ganesh","Ravi","Sita","Anu")
)

b<- tibble(
  id=c(3,4,5,6),
  name=c("Sita","Anu","Kiran","John")
)

print(a)
print(b)

#union- combine unique rows
union(a,b)

#union_all() --> keep rows
union_all(a,b)

#interact()-common rows
intersect(a,b)

#setdiff--> A minus B
setdiff(a,b) #present A but not in B
setdiff(b,a) #B minus A

#symdiff()- exlusve rows
symdiff(a,b)
union(a,b)
#removes common rows, keep only unique ones

