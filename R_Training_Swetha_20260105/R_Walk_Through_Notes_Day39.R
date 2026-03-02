#exlude
flights |> select(-dep_time, -arr_time, -carrier) |> glimpse()
flight_1 <- flights |> select(-(year:day)) #excluding a range

#for indentation ctrl+I
#for formating  ctrl+shift +A
#rename the column
flights |> select(dep_year = year,
                  dep_month = month,
                  dep_day = day) |> head()


#helper functions
#start with some char
flights |> glimpse() |> select(starts_with("dep"))
#end with some char
flights |> glimpse() |> select(ends_with("delay"))
#searching for variable which contains ("time")
flights |> glimpse() |> select(contains("time"))
#regular expression
flights |> glimpse() |> select(matches("^arr"))
#flights |> glimpse() |> select(grep("^arr"))
flights |> glimpse() |> select(matches("delay|time"))
flights |> glimpse() |> select(matches("delay|TIME",ignore.case = TRUE))
flights |> glimpse() |> select(matches("delay|TIME",ignore.case = FALSE))
flights |> glimpse() |> select(matches("^.*t$"))
flights |> glimpse() |> select(last_col())
flights |> glimpse() |> select(last_col(offset = 1))
flights |> glimpse() |> select(1)

#data types
flights |> select(where(is.numeric))
flights |> select(where(is.character))
flights |> select(!where(is.numeric)) #works
flights |> select(-where(is.numeric))
flights |> glimpse() |> select(which(c(TRUE,FALSE,TRUE,FALSE,FALSE,TRUE)))
flights |> glimpse() |> select(which(c(TRUE,TRUE,TRUE,TRUE,TRUE)))

flights[2,1:5]
head(names(flights),5)

#dYNAMIC SELECTION OF THE VARIABLES
col <- c("carrier","year","month","dd")
flights[,col]
#all_of()_ every col should exits in the dataset
flights |> glimpse() |> select(all_of(col))
#any_of()_ any one of the col should exits in the dataset
flights |> glimpse() |> select(any_of(col))

#columns which starting from "dep" and end with "delay"
flights |> glimpse() |> select(starts_with("dep"),ends_with("delay"))
flights |> glimpse() |> select(-starts_with("dep"))
