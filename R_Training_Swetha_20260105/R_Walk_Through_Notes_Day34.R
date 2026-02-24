#lazy argument or evaluations
#i,e arguments are evaluated only when used.

a <- function(a,b){
  print(a+3)
}
a(2)

#anonymous function
# no name for function

df <- data.frame(
  name = c("g","c",'f'),
  weight=c(34,45,101),
  stringsAsFactors = TRUE
)
df
bmi <- function(w){
  res= w/(1.75*2)
  return(res)
}

df$BMI <- sapply(df$weight,function(w) w/(1.75*2))
df
library(tidyverse)
environment(bmi)
environment(print)
environment(dplyr)
find("bmi")
find("print")
find(dplyr)
?find
?environment

#debugging in R
gan <- function(a,b){
  print(a+3)
  print(a+2)
  print(a+1)
  for(i in 1:10){
    print(i)
  }
}

debug(gan)
gan(2)

#Error and exceptions
res <- 10 +"gan"
print("hello")

log(10)
logt <- function(x){
  print("1-process started")
  print(log(x))
  print("2-process ended")
}

logt(3)
log("a") #error
logt(-1)

#you are  manually raising a error
logt <- function(x){
  print("1-process started")
  if(x <0 ){
    stop("its is negative number")
  }
  print(log(x))
  print("2-process ended")
}
logt(-1)

#create a own waraning.
logt <- function(x){
  print("1-process started")
  if(x <0 ){
    warning("its is negative number")
  }
  print(log(x))
  print("2-process ended")
}
logt(-1)

#messages
logt <- function(x){
  message("1-process started")
  if(x <0 ){
    warning("its is negative number")
  }
  print(log(x))
  message("2-process ended")
}
logt(1)

#how to manage a error using try()
logt <- function(x){
  message("1-process started")
  if(x < 0 ){
    warning("its is negative number")
  }
  res <- try(log(x))
  if(inherits(res,"try-error")){
    print("Error Occurred in RES")
  }
  #print(res)
  message("2-process ended")
}

logt("a")
##the above is the basic, error, warning, try(), messages

#tryCatch()

