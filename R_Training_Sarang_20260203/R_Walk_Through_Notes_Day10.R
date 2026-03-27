library(nycflights13)

#testing missingness
is.na(NA)
is.null(NULL)

#summary
#python --  None
#SAS . , ""
#SQL NULL
#julia  missing
#java Null

#type conversion in R
#implicit Type
#Explict Type

#implicit Type
##logical → integer → numeric → character
#logical to inter
x<- c(TRUE,FALSE,5L)
x
class(x)

#integer to numeri
x<-c(1L+2)
x
class(x)

# numeric to character
x<-c(10,3.4,TRUE,"hello")
x
class(x)

#example
"5"+1 #not valid

#explicit type
x<-as.numeric("10")
x
class(x)

x<-as.integer("10")
x
class(x)

x<-as.character(656)
x
class(x)

x <- as.numeric(NULL)
x
class(x)

x <- as.numeric(NA)
x
class(x)
