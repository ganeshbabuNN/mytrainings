#varible

#LHS 

#store
a <- 4
#resue
print(a)
#manipulate
a <- 6
print(a)

b<-4
a+b
4+4

#file,database

#variable experssion
a<- 4
b<-4
c<-a+b *3
c
#single - scalar
a <- a
#many values general array
#vector

#variable assignment
x<-3 # R developers they made as a standard
x=10
10 -> x #right hand operat
x <<- 10 #global assignment
#always best pratice use the <- operator

#single variable assignment
a <- 10 #scalar
a <- c(3,2,3,3) #vector
#mulitple assignment
#a,b <- 3,3
x=y=z=3
print(x)
print(y)
print(z)
#x=y=z=3=3=4 #invalid
#x,y,z=3,4,5

#variable naming rules
name <- "abc"
name. <- "abc"
#name@ <- "abc" #not allowedd special.
name2 <- "abc"
#2name <- "abc" #not allowed starting with number
.name2 <- "abc"
#.2name<- "abc"#not valide
.name2 <- "abc"
#_name2 <- "abc" #not valid
#if <- "abc" #its a keyword or reserved in r
print() <- "abc"
name_order <- "abc"
#snake case 
FirstName <- "ganesh"
firstName <- "ganesh"

#type of data in variable
#number
a<- 3
a<- 3.3
typeof(a)
class(a)
#string
a <- "ganesh"
typeof(a)
class(a)
#integer
a<-3L
typeof(a)
class(a)
#logical
a<-TRUE
a<-FALSE
typeof(a)
class(a)
#complex 
a<- 1+2i #complex
typeof(a)
class(a)
#r is called dynamica typed language
#java,C#,Rust,Go are called type-safe language

#