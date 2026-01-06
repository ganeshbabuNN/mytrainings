#06Jan2026
########################################1 everything is objects #######################################
#create an object
x<-3 #numeric object
name <- "Swetha" #character object
v <- c(1,2,3) #vector object

#object live in memory 
#type,class, attribute
typeof(x)
typeof(name)
class(name)
typeof(v)

########################################2 data structures(vector,matrix,list,dataframe,factor)
# scalar and vector
#scalar a single value where vector is multiple value
is.vector(v)  #TBD

#scalar object
a <- 3
class(a)
#vector object
#is nothing data of same type are stored in the object
b <- c(3,4,5,6) #c indicates combine function 
print(b)
typeof(b)
typ
b <- c(3,4,5,6,"numeric") #c indicates combine function 
b
typeof(b)
class(b)
#matrix 
m<-matrix(1:6,nrow = 2)
m
typeof(m)
class(m)
#list
#can be stored any type
lst <- list(1,"ganesh",c(1,3,"swetha"))
lst
typeof(lst)
class(lst)
#dataframe like a table in sql, dataset in S, dataframe in R, docs in julia
student <- data.frame(
            student_id = c(1,2),
            student_name=c("ganesh","veeresh"),
            student_age = c(46,35)
          )
student
typeof(student)
class(student)

#factor(categorical data)

f <- factor(c("M","F","M"))  #distinct in SQL, unique in SAS...etc 
f   
typeof(f)
class(f)

# ####################################### what ist he type of the object or class type of the object.
#typeof() shows the low level storage type of R  # what kind of data is this at the machine level
x<-10
typeof(x)
y<-"hello"
typeof(y)
z <- TRUE
typeof(z)
typeof(list(1,"a"))

#class() whos the hight lvel meaning or memory or behaviour of an object , think like kind of object conceptually.
class(x)
d<-as.Date("2025-01-01")
class(d)
typeof(d)
class(student)
#for typeof its like how R stores the object which at low level, class() how R interpets and handles it which hight level .


####################################### functions for more logic building################
typeof()
data.frame()

add <- function(a,b) {
  a+b
}

add(3,4)
add(b=2,a=6)

#built in function
mean(b)
summary(student)

#even operator is also function
'+'(2,3)

#OOps like object oriented programming like java, C#,python,C++
#S3 objects
person <- list(name="ganesh",age=46) #creating an object
class(person) <-"person"
print.person <- function(x){ #define a method
  cat("Name :",x$name,"Age :",x$age,"\n")
}
print(person) # TBD

#S4 objects
setClass("Person",
         slots = list(name = "character", age = "numeric")) #define class
p <- new("Person", name = "John", age = 30) #create an object
setMethod("show", "Person", function(object) {
  cat("Name:", object@name, " Age:", object@age, "\n") #define method
})
show(p) #output

#R6 object
library(R6)
Person <- R6Class("Person",
                  public = list(
                    name = NULL,
                    age = NULL,
                    initialize = function(name, age) {
                      self$name <- name
                      self$age <- age
                    }, 
                    greet = function() { #constructor
                      cat("Hello,", self$name, self$age ,"\n")
                    }
                  )
)


#compiler  ... its checks the grammical of R
#interpreter ... once the compiler say ok ... this intrepter executes.
print("hello")
prinT()


#keyword
TRUE
a <- function(){
  print("hellow")
}

matrix()

#0ne<-33
a

3+3 #numeric later

#operator is a symbol +,*,-
#using operator you form a expression or notations which is literals
