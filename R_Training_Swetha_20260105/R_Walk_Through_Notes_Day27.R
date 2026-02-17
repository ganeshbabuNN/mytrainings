library(tidyverse)

#spliting
x <- "hitesh,swetha,jyothi,sarang"
a <- strsplit(x,",")
typeof(a)
vec_obj <- a[[1]]
typeof(vec_obj)
as.vector(a,mode = "character")

str_split(x,pattern = ",")

str_split_1(x,pattern = ",") # to convert to vector

#comparing
"abc"=="ABC"
"ABC"=="ABC"
identical("abc","ABC")
identical("ABC","ABC")

#sorting
x <- c("hitesh","swetha","jyothi","sarang","ganesh","",NULL,NA)
sort(x)
str_sort(x)
x
is.na(x) # TBD

#CONTROL FLOW
#============
#selection statement
## if statement
#if(<Boolean expresion){
  ##logic
#}

if(TRUE){
  print("XXXXXXX")
}

num <- as.integer(readline("Enter The number: "))
if(num%%2==0){
  print("THis is the even number")
}

a=2
b=5
c=10

if(a>b){
  print("a is larget")
}

if(b>c){
  print("b is larget")
}

if(c>a){
  print("c is larget")
}

if((a>b) & (b>c)){
  print("a is largest")
}


#without if statement
var <- c(a=a,b=b,c=c)
var
paste(names(var)[which.max(var)]," is greater then all")

## if else statement
#if(<Boolean expresion){
# #logic
#}else {
  # logic
#}

age <- 45
if(age > 18){
  cat("your are adult")
}else{
  cat("your are a teen")
}

#even or odd
num <- as.integer(readline("Enter The number: "))
if(num%%2==0){
  print("THis is the even number")
}else{
  print("this number is ood")
}

## if..else..if statement
# if(TRUE){
#  #logic
# } else if {
#   #logic
# } else if{
#   #logic
# }else {
#  #logic
# }

num <- 80 # is equal to 10,50,100,80
if(num==10){
  print("this is equal to 10")
}else if(num==50){
  print("this is equal to 50")
} else if(num==100){
  print("this is equal to 100")
} else if(num==80){
  print("this is equal to 100")
}else {
  print("this number is either not equal to 10,50,100")
}


## switch statement
#iteration satement
##for loop
##while loop
##repeat loop
#transfer statement
##break
##next
#other statement
## Guard clases
## apply statement






















