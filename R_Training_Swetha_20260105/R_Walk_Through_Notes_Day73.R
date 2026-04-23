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

#group_split()-split into list of dataframes
flights |> 
  group_by(carrier) |> 
  group_split()

#group_walk()
flights |> 
  group_by(carrier) |> 
  group_walk(~print(nrow(.x)))

#group_trim()- remove empty groups
flights |> 
  group_by(carrier) |> 
  group_trim()

#window functions
flights |> 
  group_by(month) |> 
  mutate(
    lag_delay=lag(arr_delay),
    lead_delay=lead(arr_delay),
    .keep = "none"
  )
#row_number()
#dense_rank()
#cumsum
#cumean()

#Group-wise custom functions
my_func<- function(tb){
  summarise(tb,avg=mean(arr_delay,na.rm=TRUE))
}

flights |> 
  group_by(carrier) |> 
  group_modify(~my_func(.x))

#multi-level aggregations.
#find the avg_delay=(avg of arr_delay) per (year,month and day) then again find the avg_delay per month.
flights |> 
  group_by(year,month,day) |> 
  summarise(daily_avg=mean(arr_delay,na.rm=TRUE)) |> 
  group_by(month) |> 
  summarise(month_avg=mean(daily_avg,na.rm=TRUE))

#dynamic grouping.. you can variable dynamically.
group_var <- "day"

flights |> 
  group_by(.data[[group_var]]) |> 
  summarise(avg_delay=mean(arr_delay,na.rm=TRUE))

#grouped case logic
#arr_delay > mean(arr_dely ) = "Above avg" or Below Avg
flights |> 
  group_by(month) |> 
  mutate(
    category = case_when(
      arr_delay > mean(arr_delay,na.rm = TRUE) ~ "Above Avg",
      TRUE ~ "Below Avg",     
    ), .keep="none"
  ) 

#group_wise distinct values
flights |> 
  group_by(carrier) |> 
  summarise(u_dest = n_distinct(dest))

#group_by+pivot.
flights |> 
  group_by(carrier,month) |> 
  summarise(avg=mean(arr_delay,na.rm = TRUE)) |> 
  pivot_wider(names_from = month,values_from = avg)

install.packages("rCoreGage")
library(rCoreGage)

# Step 1 — Install (once)
install.packages("rCoreGage")

# Step 2 — Create a new project (once per trial)
rCoreGage::create_project(
  name = "TRAIL_011",
  path = "C:/edit_checks"
)

# Step 3 — Open TRIAL_ABC.Rproj in RStudio

# Step 4 — Fill in rules/config/rule_registry.xlsx
#           (Trial sheet + Study sheet — see Section 6)

# Step 5 — Write check scripts in rules/trial/ and rules/study/
#           (copy Check_Template.R and implement your logic)

# Step 6 — Drop domain data files into inputs/
#           AE.csv, LB.csv, CM.csv ... (CSV or .sas7bdat)

# Step 7 — Run
source("run_coregage.R")

# Reports appear in outputs/reports/
