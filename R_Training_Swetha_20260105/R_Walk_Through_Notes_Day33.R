cal <- function(a,b){
  sum=a+b
  sub=a-b
  mul=a*b
  div=a/b
  myList <- list(sum,sub,mul,div)
  return(myList)
}
cal(4,3)

#Function overloading and overiding
#==================================
#function overiding.. where the it same function with arguments 
add <-function(a,b){
   print("hello")
   return(a+b)
 }

add <-function(b,c){
  print("hello1")
  return(b+c)
}

add(2,3)

#function overiding
#it same function different arguments
add <-function(a,b){
  print("hello")
  return(a+b)
}

add <-function(b,c,d){
  print("hello1")
  return(b+c+d)
}

add(4,3)

#Scope LEGB rule == local , enclosing function, global , bulit-in

#nested functions and scope
x <- "I am Global"
pi <- 100  # Overriding the built-in pi in the Global Scope

outer_func <- function() { #parent fun
  x <- "I am Enclosing" #1
  cat("\nparent fun \n",x)
  inner_func <- function() { #child fun
    cat("\nchild fun \n",x)
     x <<- "ganesh"
     cat("\nchild fun after update x \n",x)
    local_val <- "I am Local"
    print(x)             #2 local x
    print(pi)            #3 global
  }
  inner_func() #inner call #2
  cat("\nparent Fun 1 x\n",x)
}
#inner_func()
print(x)
outer_func()


#"i am enclosing, 100
# i am global, 100
# i am global, 100
# i am global, i am enclosing

x=20
swetha <- function(){
  x= 10
  print(x)
  x <<- 100
}
swetha()
print(x)

#asssing a function to a variable?
#=================================

display <- function(){
  return(3)
}

a <- display()
print(a)


#funtion inside another function

display <- function(name){
  message <-function(){
    print("hello")
  }
  result=paste(message(),"",name)
  return(result)
}

display("ganesh")

#Assignment : create 4 level of function parent/child relations.. test different scenarios.

#return a function
display <- function(){
  #print(3) 
  return(5)
}
library(tidyverse)
display()
str_up
find("str_to_upper")
rm("display")
a <- display()
print(a)


##pass any type
a <- function(a,b,c){
  return(a+b-c)
}

a(3,2,3)
a(b=4,c=10,a=5) #names argument

list_a<-list(b=4,c=10)
typeof(list_a)
#i want pass list_a and again another list for a to the function
#special function
#do.call(<function>,argument)
do.call(a,c(list(a=1),list_a))

#rbind-- row binding
#cbin - columing binding
rbind("ae","mh","cm","lb") 

list_df=list("ae","mh","cm","lb")
do.call(rbind,list_df)

#name arguments
a <- function(a,b,c){
  return(a+b-c)
}

a(4,3,5)
a(c=100,b=50,a=12)

#default arguments
a <- function(a=10,b,c){
  return(a+b-c)
}
a(c=100,b=50)
a(c=100,b=50,a=300) #a will overides

#return variable number of arguments
a <- function(a){
  return(a*3)
}
b=c(2,6,9,6)
a(b)
a(list(c(2,6,9,6)))
do.call(a,list(c(2,6,9,6)))

#Variable
sum(3,4,5,6)
a <- function(...){
  return(sum(...))
}

a(c(4,5,6,7,7))
a(6,6,7,87,9)


b<-list(c(2,6,9,6),3,TRUE,NA,mtcars)
b
unlist(b)
a<-list(c(2,6,9,6))
a[[1]]
as.vector(a[[1]])
unlist(c(2,6,9,6))
b
typeof(b)

find("a") #find any object in the env, package..etc
rm("a") # remove those object.

