#solving the problems
#https://github.com/ganeshbabuNN/MyNotes/blob/master/Logical_Programming/Logical_Based_Programmings_Problems.txt

#Functions
#--------

function_name <- function(arg1,arg2,arg3..){
  statement1
  statemetn2
}


add <- function(a,b){
  result = a+b
  return(result)
}
#function_name <- represents of logic .. should rules - add()
#arguments ? what is diff parameter and arguments? --add(4,3)
#function body --> result = a+b
                  #return(result)
#return value --result
add(4,3)

a
a<- 343
b <- 423
#?what is a -> object or variable.names
#?343 ? value or literal 

?print
# which does not have arguments
hello<-function(){
  print("hello world")
}

hello()

library(tidyverse)

left_join()
?left_join
?print
environment(hello)
environment(hello1)

#two type of functions
##built-in functions
##custom functions

##built-in function
#print(),cat(),sprintf(),mean().......nchar()

2*2
#passing arguments is 5
#1,2,3,4,5 --> 1,2,9...
new.square <- function(a){  # 5
  for(i in 1:a){            # 1:5 #--> i=1.. 1^2 = 1
    print(i^2)                    #--> i=2.. 2^2 = 4
  }                               #--> i=3.. 3^2 = 9
}                                 ##--> i=4.. 4^2 = 16

new.square(5)


summing <- function(a,b,c){  
      result <- (a+b+c)                        
      paste(result)
}
sum <- summing(3,3,2)
print(sum+1)

#returning the value.
summing <- function(a,b,c){  
  result <- (a+b+c)                        
  return(result)
}

a<- summing(4,3,5.6)
a
typeof(a)
class(a)
a+12

#test a number is postive,negative or zero
check_num <- function(a){
  if(a>0){
    result <- "positive"
  }else if(a<0){
    result <-"negative"
  }else{
    result <-"zero"
  }
  return(result)
}

check_num(36)


#return multiple values

cal <- function(a,b){
  sum=a+b
  sub=a-b
  mul=a*b
  div=a/b
  return(sum,sub,mul,div)
}
cal(3,4)
#return statement always return only one object. it designed in that way
#R gets confused coz it see four diff objects instead of one object or container.
#that is the calling function will always holds in one container.
#many programming will not multi-argument returns are not permitted"

cal <- function(a,b){
  sum=a+b
  sub=a-b
  mul=a*b
  div=a/b
  myList <- list(sum,sub,mul,div)
  return(myList)
}
cal(4,3)