library(tidyverse)

a <- function(a,b,c){ #parameter
  a=10
  return(sum(...))
}
a(4,3,4,4,4,4,4) #arguments

#syntax
Usage
arrange(.data, ..., .by_group = FALSE)
## S3 method for class 'data.frame'
arrange(.data, ..., .by_group = FALSE, .locale = NULL)

library(nycflights13)
#ascending
flights |> arrange(dep_delay) |> select(dep_delay)
#descending
flights |> arrange(desc(dep_delay)) |> select(dep_delay)
#sorting desc(dep_delay) and desc(distance)
flights |> arrange(desc(dep_delay),desc(distance)) |> select(dep_delay,distance)
#handling Missing values
colSums(is.na(flights))
#arrange the missing values
flights |> arrange(arr_delay) |> select(arr_delay) |> tail()
flights |> arrange(desc(arr_delay)) |> select(arr_delay) |> tail()
#if you want to bring NA at top
flights |> arrange(!is.na(arr_delay),arr_delay) |> select(arr_delay) |>head()
!is.na(flights$arr_delay)
#base R
flights[order(flights$arr_delay,na.last = FALSE),"arr_delay"]







   
        