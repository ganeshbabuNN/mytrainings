#variable scope
#two scope 
##global variable
##local variable

a <- 7 #global 

show <- function(){
  print(a)
  a=10 #local variable
  print(a)
  a<<- 200 #global assignment when it is only after functioned called.
  print(a)
}

print(a)
show()
print(a)


x <- 10
star <- function(){
  browser()
  x<<- 20
  x=2
  print(x)
}

star()
print(x)

#mutable and immutable objects
#==========================
#Mutable - objects are where it can modified in pacle 
library(lobstr)
e <- new.env()
typeof(e)
obj_addr(e) #0x1b764b34a38
e$x <- 10
f <- e #assign this to other object
f
obj_addr(f) #0x1b764b34a38
f$x<-999
obj_addr(f)

#R6,data.table..
#immutable - objects who value cannot be changed in place.
x < c(10,20,30)
typeof(x)
obj_addr(x) #0x1b764af7970
y <- x
typeof(y)
obj_addr(y) #0x1b764af7970
y[1] <- 999
obj_addr(y) #0x1b763e9da70
obj_addr(x) #0x1b764af7970
#this is immutablity ... copy on modify.

#numeric, chara,logical,list,matrix,dataframe,

#variable on refernce(copy on modify)
x <- c(10,20,30)
typeof(x) #0x1b764af7970
y <- x
obj_addr(y) #0x1b7643fa898
y


# Variable lifetime
#all the variable which are created in R are available in the global environment
a
rm(a)
a

my_fun <- function(){
  z<-4
  print(z)
}

my_fun()
print(z)

library(dplyr)

#global object _ until it is removed manually
#function local obj --> until the function exits
#packages ==> until sesion ends.

#dynamiting typing in R
x <- 10
typeof(x)
x <- "ganesh"
typeof(x)
x <- TRUE
typeof(x)
x <- 1+2i
typeof(x)
x <- 1L
typeof(x)

#no declarations i needed in R.

#type hinting
x <- as.integer(10)
x
typeof(x)
as.numeric()
x <- as.numeric(10)
typeof(x)
as.character()
x <- as.character(10)
typeof(x)
x <- as.logical(10)
typeof(x)
x
x <- as.logical(30)
typeof(x)
x
x <- as.logical(0)
typeof(x)
x
x <- as.logical(019)
typeof(x)
x
