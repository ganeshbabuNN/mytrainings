library(tidyverse)
stringr::str_c(c(4,23,NA),sep = "/")
str_c("Data","science",sep=" ")
str_c("Data","science",sep=",")
str_c(c("Data","science",NA))
str_c(c("Data","science",NA),collapse = "-")
paste0(c("Data","science",NA),collapse = "-")

paste("hello","world")
paste0("hello","world")
ids <- 1:3
paste0(c(1,3,NA))
paste("ID",ids)
paste0("ID",ids)
paste("ID",c(3,4,5),collapse = "-")
paste0("ID",c(3,4,5),collapse = "-")


str_c(c(2,3,NA),collapse = "-")


#are there any concept call mutable and immutable object in R?

x <- c(1,2,3,4,5)
#to get the memory of the object
tracemem(x)
#modify the vector
x
x[3] <- 10

#calloc()
#include <stdio.h>
#int main(){
#int *ptr =(int*)calloc(5,size(int));
