library(nycflights13)

#Data strutures
a <- 3
a<-3,2

#scalar
#vector

#type of data structures
#vector
#list
#matrices
#arrays
#factors
#dataframe


#vector
a <- c("A","B","C")#character vector
a
class(a)

a <- c(2,3,4,5,6)#numeric vector
a
class(a)

a <- c(2L,3L,4L)#integer vector
a
class(a)

a <- c(TRUE,FALSE,T)#logical vector
a
class(a)

#observe
a <- c(2L,3L,4L,3,"A",TRUE)
a
class(a)
#precedence
char <- logical <- numeric <- integer


#list
a<- list(1,3L,"A",TRUE,NULL,NA,c(5,4,3,4),list(3,4,5,6))
a
class(a)
b<-a[[3]]
class(b)
b<-a[[3]]
class(b)

emp <- list(id=1,
            name="ganesh",
            salary=3232,
            age=44)
emp

#matrices
#its a 2D struture
matrix()

a<- matrix(c(1,2,3,4,5,6),
           nrow = 2,
           ncol = 3,
           byrow = T)
a
b<- matrix(c(1,2,3,4,5,6),
           nrow = 2,
           ncol = 3,
           byrow = TRUE)
b
a *b
class(b)

#arrays
#multi dimensional
arrays()
a<- array(c(1,2,3,4,5,6),dim=c(2,2,3))
a
class(a)

#factors
#categorical variables

a<- factor(c("IND",'USA',"CHINA","IND","JP"))
a
class(a)

#dataframe
data.frame()

emp <- data.frame(
  emp_id =c(1,2,3),
  emp_name=c("A","BC","DE"),
  emp_age=c(23L,34L,56L)
)
emp
class(emp)
str(emp)

#tibble
library(tidyverse)
emp <- tibble(
  emp_id =c(1,2,3),
  emp_name=c("A","BC","DE"),
  emp_age=c(23L,34L,56L)
)
class(emp)

emp <- tribble(
  ~emp_id,~emp_name,~emp_age,
  1,"A",33,
  2,"B",32,
  3,"CD",44
)
class(emp)

#default value of types
#=====================
a<- 3L
typeof(a)
class(a)

#numeric
numeric(2)
#integer
integer(3)

character(3)
complex(3)


