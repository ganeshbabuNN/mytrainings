#Type converstaion
#implicit conversations

#type hiearchy
#logical -->integer --> numeric -->character

x<-NA
typeof(x)
class(x)

x<-c(TRUE,10,3.5,6,"A")
x
x<-c(TRUE,10,3.5,6)
x
x<-c(TRUE,10,3.5,6,4L)
x

#logical to numeric
x<-TRUE+4
x

#integer to numeric
x<-1L+3
x
typeof(x)

as.integer("2")+5

#5+"2"L

#logical to integer
x <- c(TRUE,FALSE,5L)
x
typeof(x)

#integer --> numeric
x <- (1L+2)
x
typeof(x)

#numeric --> character
x <-c(10.5,"hello")
x
typeof(x)

##explicit conversation
#character to numeric
x<-"10.5"
x
typeof(x)
x <- as.numeric(x)
x
typeof(x)

y <- "Apple"
as.numeric(y) #NAs introduced by coercion 

#numeric to integer
z <- 10.9
z
typeof(z)
z<-as.integer(z)
z
typeof(z)

#integer to logical
z<-1L
z
typeof(z)
z<-as.logical(z)
z
typeof(z)


z<-0L
z
typeof(z)
z<-as.logical(z)
z
typeof(z)

#experiement negative number 
z <- 3
typeof(z)
z<-as.logical(z)
z

z <- -32
typeof(z)
z<-as.logical(z)
z

# logical understand two non-zero and zero, when you have non-zero its its 1 and zero is 0 i,e TRUE and FALSE

#exp on NULL, NA
z <- NULL
z
typeof(z)
z<-as.logical(z)
z 
#NULL present the NULL object, its nothing nothingness or an empty object, when you try to convert NULL to another type, you are not converting to a value, your a converting empty container. so you get least type of logical(0)
#nULL Has not length, if number is 3 it has length 1, whereas NULL its zero
z <- NA
z
typeof(z)
z<-as.logical(z)
z #wwhen you convert NA to logical, the output remains NA is already logical value by default in R.

#Exp on NA,NULL
z<-as.character(NULL)
z
typeof(z)
z<-as.character(NA)
z
typeof(z)
class(z)

z<-as.integer(NULL)
z
typeof(z)
z<-as.integer(NA)
z
typeof(z)

z<-as.numeric(NULL)
z
typeof(z)
z<-as.numeric(NA)
z
typeof(z)

