x<-NA
x
typeof(x)

#NaN
x<-0/0
x
typeof(x)

#Inf
x<-1/0
x
typeof(x)

##Date & Time Conversions
#character --> date
a<- "2025-01-16"
a
typeof(a)
a<-as.Date(a)
a
a<-as.Date(a,"%d-%m-%Y")
a
a<-as.POSIXct("2025-01-16 13:00:36")
a
a<-as.POSIXlt("2025-01-16 13:00:36")

#converside data structure
df <- data.frame(
  id=c("1","2","3"),
  age=c("23","19","30")
)
df
str(df)
#df columns to numeric
df$id<- as.numeric(df$id)
typeof(df)
df$age<- as.numeric(df$age)
df <- as.numeric(df)

#matrix conversation
m <- matrix(c(1, TRUE, 3), nrow=3,ncol = 2)
m
m[1,1]
m[2,1]
m[3,1]
typeof(m[3,1])
typeof(m)
class(m)

ls<-list(m)
typeof(ls)

#Coercion During Operations
#logical-->integer-->numeric(double)-->character

##A. Logical to Numeric (The most useful coercion)
a<-TRUE +5L
a
typeof(a)
sum(c(T,F,T))
TRUE+TRUE

##Numeric --> logical
as.logical(0)
as.logical(233)

#testing
class() #object
typeof() #storage
is.numeric() #numeric
is.character() #character
is.factor() #factor
str() #struture

f <- factor(c("10","20"))
f
as.numeric(f) #wrong
as.numeric(as.character(f)) #correct
as.logical("Yes") #logical misinterpreatation


a <- "this isn't a value"