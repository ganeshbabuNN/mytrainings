library(nycflights13)

#default of vector
vector("list",1)

#
factor(character(1))

#
as.Date(character(1))

#typeof vs class vs mode vs str
#programming + language C
#compiler(checking the grammer) + intreperter(execute the code)
Class(25)

#typeof tells you the lower level storage type i,e R engine C language
a<-3
b<-4L
c<-"ga"
d <- factor(c("a","b"))
e <- as.Date("2026-01-13")
typeof(a)
typeof(b)
typeof(c)
typeof(d)
typeof(e)

#classs give object level informations
a<-3
b<-4L
c<-"ga"
d <- factor(c("a","b"))
e <- as.Date("2026-01-13")
class(a)
class(b)
class(c)
class(d)
class(e)

#mode() - legacy older , higher -level type system.
a<-3
b<-4L
c<-"ga"
d <- factor(c("a","b"))
e <- as.Date("2026-01-13")
mode(a)
mode(b)
mode(c)
mode(d)
mode(e)

#str- strucrture of an object
a<-3
b<-4L
c<-"ga"
d <- factor(c("a","b"))
e <- as.Date("2026-01-13")
str(a)
str(b)
str(c)
str(d)
str(e)
str(flights)

typeof(a) #low -level type
class(a) # high level type object way
mode(a) # legacy high level system
str(a) # structure of an mode #glimpse()

#to the test type of date
#primitive type
is.numeric(23.2)
is.double(23)
is.character("addd")
is.integer(43L)
is.integer(43)
is.complex(3+2i)
is.logical(TRUE)
is.logical(F)
is.logical(T)
is.logical(1) #FALSE

#special value
is.null(NULL)
is.na(NA)
is.nan(NaN)
is.infinite(Inf)
is.infinite(-Inf)

#data structure
is.vector(c(3,3,4))
is.list(list(3,3,3))
is.matrix(matrix(c(3,3,3,3)))
is.factor(factor(c(3,3)))
is.array(array(c(3,3,3)))
is.data.frame(flights)

#missing semantics

#NA - not avaibable
x <- NA
x
typeof(x)
class(x)

#coericion hierarchy
#logical --> integer --> numeric --> character

a <- NA_integer_
a
class(x)
a <- NA_real_ #decimal
a
class(x)
a <- NA_character_
a
class(x)
x<- NA_complex_
a
class(x)


c(3L,2L,NA_integer_)

#NULL 
x<- NULL
x
x <- c(2,3,NA,NULL,4)
x
length(NULL)
