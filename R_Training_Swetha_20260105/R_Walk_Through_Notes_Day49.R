library(tidyverse)
library(nycflights13)

#analyse by Sarang will getback on next day
flights |> filter(coalesce(arr_delay,1)==1) |>
  select(carrier,dep_time,arr_time,arr_delay)

#filtering with
flights |> filter(dep_delay > 60)

#keep a flight if the mean of both dep and arr delay  > 50
flights |> select(carrier,dep_delay,arr_delay) |>
  mutate(
    m_dep=mean(dep_delay,na.rm=TRUE),
    m_arr=mean(arr_delay,na.rm=TRUE),
    m_dep_arr=mean(c(dep_delay,arr_delay),na.rm=TRUE), #this taking column level
    m_dep_arr1=(dep_delay+arr_delay)/2 #i am addition level and mean
  ) |>
  filter(m_dep_arr1 >50)

flights |> select(carrier,dep_delay,arr_delay) |>
   rowwise()  |>
  mutate(
    m_dep_arr =mean(c(dep_delay,arr_delay),na.rm=TRUE)
  ) |>
  filter(m_dep_arr >50) |>
  ungroup()

flights |>
  group_by(month) |>
  mutate(
    n_month=n()
  ) |>
 ungroup() |>
  mutate(
    per_of_year=(n_month/n())
  ) |>
  select(month,n_month,per_of_year) |>
  distinct(month,n_month,per_of_year) |>
  arrange(month,n_month,per_of_year)
