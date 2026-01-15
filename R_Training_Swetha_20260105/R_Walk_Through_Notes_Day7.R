#array
#5Dimension C(visits,tests,subjects,sites,country)
##Dim1, 5 visits , 3 tests,100 subjects,10 sites, 2 counts
#1D
array_1d <-array(1:5,dim=c(5))
array_1d #TBD
typeof(array_1d)
class(array_1d)
#2D
array_2d <-array(1:6,dim=c(3,2))
array_2d
typeof(array_2d)
class(array_2d)
#3D
array_3d <-array(1:18,dim=c(3,3,2))
array_3d
array_3d[,,1]
typeof(array_3d)
typeof(array_3d[,,1])
class(array_3d)
#4D
array_4d <-array(1:16,dim=c(2,2,2,2))
array_4d
typeof(array_4d)
class(array_4d)
#5D
array_5d <-array(1:48,dim=c(2,3,2,2,2))
array_5d
typeof(array_5d)
class(array_5d)

#factor
c<-c(1,2,3,4,3,2,2,2,3,3,3)
d<-factor(c)
typeof(d)
class(d)


#dataframe
employee <- data.frame(
  emp_id = c(1,2,3),
  emp_name=c("gan","she","hi"),
  emp_age=c(40,22,18)
)
employee
typeof(employee)
class(employee)
str(employee)

employee_t <- tibble(
  emp_id = c(1,2,3),
  emp_name=c("gan","she","hi"),
  emp_age=c(40,22,18)
)
typeof(employee_t)
class(employee_t)

#Default value of Types
#======================

#numeric
numeric(2)
integer(4)
character(4)
complex(4)
raw(1)
vector("list",1)
factor(character(4))
as.Date(character(1))
as.POSIXct(character(1),tz = "IST") #TBD
