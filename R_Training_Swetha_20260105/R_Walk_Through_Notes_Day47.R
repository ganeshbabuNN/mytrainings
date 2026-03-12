library(tidyverse)
library(nycflights13)
sales <-tibble(
  item=c("apple","banna","cherry"),
  price=c(20,150,15),
  price1=c(20,11,15)
)
sales

#hites

#hitesh will do more exp
sales |> 
  mutate(is_expensive=across(c(price,price1),~.x>100),
         total = rowSums(across(c(price,price1))),
         total1 = rowSums(across(c(price,price1),~.x>162)),
         total2 = rowSums(across(c(price,price1),~.x>150)), #observe this
         total3 = rowSums(across(c(price,price1),~.x>=20)),
         total4 = rowSums(across(c(price,price1),~.x*20)), #observe this value
         total5 = rowSums(across(c(price,price1),~.x>149)),
         total15 = rowSums(across(c(price,price1),~.x>14)) > 1
         ) |> 
  filter(rowSums(across(c(price,price1),~.x>=20))>1)
  #filter(total3 >1)

a <- TRUE
as.integer(a)
a <- FALSE
as.integer(a)
FALSE+FALSE
FALSE+TRUE
TRUE+TRUE

#jyothi issues for learning to team.
dm<-read_csv("C:\\Users\\ganes\\Downloads\\dm.csv")
glimpse(dm) 

dm |> filter(!is.na(SEX)) |> 
  filter(ARM %in% c("Treatment 3", "Treatment 2") &    (AGE >= 18)) |>
  select(STUDYID, USUBJID, ARM, AGE, SEX, RACE) |>
  arrange(ARM, USUBJID)  |> slice_head(n = 10) 

adult_dm <- dm |>
  filter(AGE >= 18, ARM != "Screen Failure")

dm |>filter(AGE >= 18, ARM != "Screen Failure") |> select(SUBJID,AGE,ARM)

#find the flights where either the dep_delay or arr_delay was greater then 80 mintues
flights |>  select(carrier,dep_delay,arr_delay) |> 
  filter(rowSums(across(c(dep_delay,arr_delay),~.x>80),na.rm = TRUE)>=1)
