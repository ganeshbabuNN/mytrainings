print("hello world")

##using a function style

display <- function(){
  print("hello world")
}

display()

#getting the input

#getting character
pet_name <- readline(prompt = "ENter your favorite pet")
pet_name
#getting numeric
age<- readline(prompt = "Enter your age")
age
age<- as.integer(age)
age
typeof(age)

#Scan
x <- scan()
typeof(x)
x
x <- scan(what = integer())
x
typeof(x)
x <- scan(what = double())
x
typeof(x)

help("function")
help(left_join)

library(tidyverse)
class()
inherits()
?print

example("function")
demo(plotmath)



#Tokens
#compiler , interpreters

#if --> token
#function --> token
#swetha

#keywords
if
function()
ifelse
NA_Date_s

cat("ganesh","babau")

#32343

###########################
#sdfdsfdfdfdf
#
#
#
#
#
#
#
#
#####sssss


a<- 4 
b<-3


print("hello world")
print("hello world",quote=FALSE)
print(paste("hello","World"),quote = FALSE)


hello <- function(){
  print("hello world")
  print("hello world",quote=FALSE)
  print(paste("hello","World"),quote = FALSE)
}
#hello is literals,identifiers
#function if keyworld
#print statement
#print is also function
#FALSE logical operator

hello()

#S3  method
# Generic function
say_msg <- function(obj) UseMethod("say_msg")
# Method for class "demo_class"
say_msg.demo_class <- function(obj) {
  paste("Hello", obj$value)
}
# Create object
x <- list(value = "World")
class(x) <- "demo_class"
# Call
say_msg(x) 

#s4 Method
##Define class
setClass("Person",
         slots = list(name = "character"))
##Create object
p_s4 <- new("Person", name = "World")
##Define generic
setGeneric("hello", function(object) standardGeneric("hello"))
##Define method
setMethod("hello", "Person", function(object) {
  paste("Hello", object@name)
})
##Call
hello(p_s4)

#R6-Object owns its behavior (Java-style)
##The object itself has methods. You call them with $.
library(R6)
## Define class
Person <- R6Class("Person",
                  public = list(
                    name = NULL,
                    initialize = function(name) {
                      self$name <- name
                    },
                    hello = function() {
                      paste("Hello", self$name)
                    }
                  )
)
##Create object
p_r6 <- Person$new("World")
##Call method
p_r6$hello()












