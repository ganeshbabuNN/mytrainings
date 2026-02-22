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

