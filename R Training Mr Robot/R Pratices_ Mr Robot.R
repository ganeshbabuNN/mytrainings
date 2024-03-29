#05dec2022
#comments 
#every line to be started # for the comments
#3+3

#structure for R program

##1st way - calculator way
3+3
print("hello Robot")

hello =3 #store a value in a variable using = sign or <- (less with -)
hello<-3
print(hello)

##2nd way - Function
hello = function(){
  print("Hello vaihav")
}

hello()
#hello is function name
#function() is keyword or object

#3rd way - using objects (class and methods)
employee =list(name="vaibhav",age=32,contact="93838",persontype="robot")
class(employee) <-'empinfo'

employee #calling the oops ways

employee.status <- function(){
  print("print the employee status")
}

employee

employee.status() #method 

#there two types of objects s3 and s4 objects types

#5dec2022#################################

#variables
#dynamically typed 
a <- 4
print(a)
typeof(a)
b<-2.8
typeof(b)
c<-"ganesh"
print(c)
c<-'ganesh'
typeof(c)
d<-"3"
typeof(d)
e<-1+2i
typeof(e)
#double, character and complex

class(a)
class(b)
class(c)
class(d)
class(e)
#to know the type of variable using typeof and class

#finding variables
# R objects it may be variable, function , classes, any data types
print(ls()) 

var_g ="vaibhav"
print(var_g)
print(ls(pattern = "var"))
print(ls(all.name=TRUE)) #TRUE hides the 

#how to check if that variables exists in memory
exists("a")
exists("e")
exists("ga")

#how to delete or remove variable in R workspace
rm(a)
exists("a")
print(a)
rm(b,c)
print(b)
print(c)
exists("b")
rm(list=ls())

#how to assign a value to a variable
#leftward assigment
a =3
a <- 3
print(a)
a <-c(3,2,3,3,3)
print(a)
b <- c(3,2,"ganesh",3.2,1+2i)
print(b)

#rightward assigment
c(4,3,2.9) = c #invalid
c(4,3,2.9) -> c
print(c)

#how to print multiple values in R
print(2 2)
cat(2,3)
cat(a,b)

#how to assign multiple variable to single value
a=b=c=5

a,b,c=3,2,4 #not 

#rules of variables
2a <- 3#invalid
a2 <- 3
var_name3. = 4
var_name3% = 4 #invalid
.var_name2 = 4
var.name=3
.2var_name=3#invalid
_var_name =3 #invalid

# 07Dec2022
#scope



hello <- function(){
  f=3
  print(c)
}

hello()
f

g=3
hello <- function(){
  g=2
  print(g)
}
hello()
g=4
hello()

#constants

PI_C = 3.14
print(PI)


######################### 08Dec2020 #########
#data types

#numeric, integer, logical , complex, character and raw

a<- 3 # scalar 
print(a)
b<- c(3,3,2,2) #vector
print(b)

numerical <- 323
typeof(numerical)
print(numerical)
class(numerical)

mydecimal <- 323.32
typeof(mydecimal)
class(mydecimal)

myinterger <-3223L
print(myinterger)
typeof(myinterger)
class(myinterger)

mycomplex <- 3+2i
print(mycomplex)
typeof(mycomplex)
class(mycomplex)


mychar <-"I love to be a friend with Mr Robot for ever"
mychar1 <-'I love to be a friend with Mr Robot for ever'
cat(mychar,"\n",mychar1) # \n escape character

class(mychar)
typeof(mychar)

myraw <- charToRaw("I love to be a friend with Mr Robot for ever")
class(myraw)
typeof(myraw)

myloc <- TRUE
typeof(myloc)
myloc <- true

#for number
a<-0

#for string
b <- ''

#to test if this belong the right data type
is.numeric(434)
is.numeric(434.22)
is.numeric(43L) #something wrong
is.integer(232)
is.integer(232.22)
is.integer(23L)
is.character('2')
is.character(32)

typeof(data)

###################################
###################################
#09Dec2022 ###################################
###################################
###################################
a <- 2
vec <-c(32,3,2)
myvect <- c(23,2.2,'gr',3+2i,vec,a)
myvect
class(myvect)
typeof(myvect)

myvec1 <- 3:10 # : operator
print(myvec1)

myvec2 <- 10:1 #descending
print(myvec2)

myvec4 <- 20:-5
print(myvec4)
myvec3 <-c(6:12,59)
print(myvec3)

#atomic vector
myvec6 <- c(3,3,2,3) #numeric vector
myvect7 <- c(3L,5L,6L) #integer vector
myvect8 <- c("ganesh","vaihav","rudrix") #charac vector
myvect9 <-c(FALSE,TRUE) #logical vector

#as function
a<- '3'
class(a)
b<- as.integer(a)
class(b)
as.numeric()
as.logical()
as.character()
as.complex(43)

#rep()
rep(3,4)
rep(c(4,3,2),4)
rep(c(1,2,3),each=5)
rep(3:6,5)
rep(2:5,each=3)

#seq()
seq(1,10)
seq(1,10,0.5)
seq(0,20,2)
seq(10,1,-2)
seq(1,4,length=10)

rep(seq(1,3,0.5),3)
rep(seq(1,3,0.5),each=3)

#random number
sample(100,12)
sample(10:20,10)

#unifrom random number
runif(100,1,5)

#reading and accessing the vector
myvec10 <- c(1,2,3,4,5,6,7,8,9,10)
myvec10
myvec10[1]
myvec10[0]
myvec10[9]

#index vector
mychar <-c("a"=3,"b"=4,"c"=8)
mychar["a"]
mychar["b"]

#logical index vector
mylog <-c(1,2,3,4)
mylog[c(TRUE,FALSE,TRUE,FALSE)]

###### 13DEC2022 #######################
#######################
#######################

myvec <- c(3,3,2,3)
class(myvec)
typeof(myvec)

myvec1 <- c('g','b','c','ga','ds')
class(myvec1)
typeof(myvec1)

myvec1 <- c('g','b','c','ga','ds',3,2,3,3,2+2i)
class(myvec1)
typeof(myvec1)

#using colon operator
mycolon <- 3:10
mycolon

mycolon <- -5:10
mycolon

mycolvec <- c(4:10,-4)
mycolvec

#using rep() function
rep(5,3)
rep("ab",3)
rep(c(1,3,4),3)
rep(c(3,5,2),each=5)
rep(2:5,4)
rep(2:4,each=5)
numeric(4) #get the value of zero 
numeric(10)
character(6)
logical(4)

#using seq()
seq(from=5,to=10,by=0.5)
seq(5,10,0.5)
seq(10,3,-2)
seq(10,3,length=100)
rep(seq(1,10,2),10)

#atomic vector
#numeric vector
mynv <- 4.5
mynv <-c(3,2,4,5,6)
mynv
class(mynv)
a<- as.numeric(myinv)
class(a)
#integer vector
myinv <- rep(seq(3L,5L),4)
class(myinv)
a <- as.integer(mynv)
a
c<- as.integer("54")
class(c)
class(a)
#character 

mychar <- c("43","ga","ss","rw","po")
mychar
class(mychar)
e<- as.character(myinv)
class(e)

#logical 
as.logical(4)
as.logical(3>4)
as.logical(myinv)
as.logical(3)
a=4
b=3
c=6
d=9
mylog <-c(a>b,c<b,d>c)
mylog

#random number
sample(100,12)
sample(100)
sample(5:100,10)

#empty vector
x=c()
typeof(x)

y <- NULL
typeof(y)

z <- vector()
typeof(z)

a <-c(x,1,3,y,4)
a

#readin/access element in vector

myvec <-c(3,4,6,2,4,7,"ga")
length(myvec)
myvec
myvec[1]
myvec[0]
myvec[4]

#character index === named
myvec <-c("a"=3,"b"=4,"c"=6)
myvec
myvec["a"]
myvec[1]

#index --> indices not index
myind <- c(43,4,5,6,2,3,4,5,6,7,8,9,3,2,2,4,55)
myind[1]
myind[c(3,6,8)]
myind[2:5]
myind[5:1]
myind[c(2:5,12)]
length(myind)
myind[length(myind)]
min(myind)
myind[min(myind)]
myind[-1]
myind[c(-1,-3,-5)]
myind[-2:-4]
myind[c(-2:-4)]
myind[c(2:-4)]

myind[3]
myind
myind[3]<-66
myind


##16DEC2022#########################################
####################################################
myind <- c(43,4,5,6,2,3,4,5,6,7,8,9,3,2,2,4,55)

#boolean operator , < ,>, ==. logical

myind[myind==4]
myind[myind>10]
myind[myind<10]
myind[myind<=10]
myind[myind>=10]
myind[myind!=4]

#logical operator And(&), OR(|) and not !
myind[(myind>1) & (myind<10)]
myind[(myind>1) | (myind<10)]
myind[(myind>1) & (myind!=55)]

#which functions used to find which index is belong
which(myind==55)
which(myind>10)

#%in% searches the values in the vector
myind[myind %in% 10]
myind[myind %in% 55]
myind[myind%in%c(55,100)]

#all() and any()

#all is special function that checks whether all the comonetns in the vectors meet certains conditions
myind <- c(43,46,77,54,23,54,77,55)
all(myind <0)
all(myind <30)
all(myind <80)
all(myind <50)
all((myind >1) & (myind<100))
all((myind >1) & (myind<100))

#any functions
myind <- c(43,46,77,54,23,54,77,55)
any(myind <0)
any(myind <30)
any(myind <80)
any(myind <50)
any((myind >1) & (myind<100))
any((myind >1) & (myind>100))


###############20DEC2022####################################
########################################################################
#vector operations and manipulations

a <- c(1,3,4,5,6)
b <- c(3,2,3,4,5)
c(a,b)  #combing two vector

#arthematic vectors
a+b #adding two vector
a-b
a*b
a/b
a%%b

#logical vectors
c<-c(TRUE,FALSE,TRUE,FALSE,FALSE)
a[c]
i<-c(TRUE,FALSE,TRUE,FALSE,FALSE)
a[i]

#numeric index vector
a[3]
a[-3]

#duplicate index
a[c(4,2,2,2,3)]

#range index
a[3:10]
a[2:4]

a[10]

#named index vectors
names(a)<-c("a","b","c","d","e")
a
a[c("a","b")]

#remove the named index
a
names(a)<-NULL
a

#basic statisical operations
a
sum(a)
prod(a)
cumprod(a)
mean(a)
median(a)
mode(a)
var(a)
sd(a)
summary(a)

#LIST
mynum <- c(1,2,3,4,5)
myint <- c(3.3L,5L,2L,4.3L,2.4L)
mychar <- c("a","b","c","d","e")
mylog <- c(TRUE,FALSE,FALSE,TRUE,TRUE)
mylist <- list(mynum,myint,mychar,mylog)
class(mylist)


#creating list()
mylist1 <- list(32,4L,TRUE,"aga")
class(mylist1)

#named list
employees <- list(
  names=c("vai","gan","rud","prave"),
  age=c(46,22,18,55),
  gender=c("g","g","f",'t'),
  salary =c("1c","40K","60K","90L"))

employees
typeof(employees)

#you can call the colum using $
employees$names
employees$age
employees["age"]
class(employees$age)
employees$age
employees$age[2] <-25
class(employees)

#scalar, vectors, list
#CRUD -- create , read, update and delete

###############04JAN2022####################################
########################################################################

#create
#using the list functions
#-----------------------
employees <- list(
  names=c("vai","gan","rud","prave"),
  age=c(46,22,18,55),
  gender=c("g","g","f",'t'),
  salary =c("1c","40K","60K","90L"))

employees

#without a object name but this is not advisable without object name.

employees1 <- list(
    c("vai","gan","rud","prave"),
   c(46,22,18,55),
   c("g","g","f",NULL),
   c("1c","40K","60K","90L"))

employees1

#for the above employees1 if you want to assign object names.

names(employees1) <-c("names","age","gender","salary")

employees1

typeof(employees1) #get to tknow the the typeo
class(employees1)

#print the list structure
str(employees1)

#print only object names of a list
names(employees1)
length(names(employees1))

#using the list functions using vector
#-----------------------

employ <-vector(mode="list")
employ
class(employ)

#now adding the objects in the list
employ[["names"]] <-c("vai","gan","rud","prave")
employ[["age"]] <- c(46,22,18,55)
employ[["gender"]] <- c("g","g","f",'t')

employ
str(employ)

#creating the using the vector,list and matrix
list_data <- list(
              c("g","c","e"),
              matrix(c(32,23,43,23,34,43),nrow=2),
              list("MCA","b","dfd")
)
list_data

typeof(list_data)

#reading the list
employees
employees$names[3]

employees1
employees1[[2]][3]

###############06JAN2022####################################
########################################################################

employ

employ$gender
employ[[1]]
employ["gender"]

#indexing list using brackets
employ[c(2,3)]
employ["gender"]
employ[["gender"]][3]# retrive the specifc observations
employ[["gender"]][-3]#delete
employ[["gender"]][-1:-3]#delete
employ[["gender"]][c(2:4)]
employ[["gender"]] #to retervie the observations
employ[[3]] #to retervie the observations using index number

x <- employ[["gender"]]
typeof(x)
y <- employ["gender"]
typeof(y)

#sum of age
sum(employ$age)
sum(employ[["age"]])

#sublistings
employ
x <-employ$age
y<- employ$gender

employ1 <- list("age"=x,"gender"=y)
employ1

#updating the list
employ <-vector(mode="list")
employ[["names"]] <-c("vai","gan","rud","prave")
employ[["age"]] <- c(46,22,18,55)
employ[["gender"]] <- c("g","g","f",'t')

employ
employ$names[2]<-"pratp"
employ[1] <- "employee_name"
names(employ)[1] <-"employee_name"
employ

#Assign how remove the values of that objects called "names" of this employ
#adding a new object to exiting list
employ$place <- c("B","G","D","H")
employ

#remove the object of that list
employ$place <- NULL

#delete  the list
rm(employ)

###############08JAN2022####################################
########################################################################

#convertions from list to vector
l1 <- list(5:10)
l1
typeof(l1)
l2 <- list(6:20)
l2

#convert list to vector
v1 <- unlist(l1)
typeof(v1)

#merge two list.
m1 <-list(l1,l2)
m1
paste0(l1,l2)#not able 

#matrix 

#create a matrix

row_names <- c("r1","r2","r3","r4")
col_names <- c("c1","c2","c3","c4","c5")

matrix(c(1:20),nrow=4,byrow = TRUE,dimnames = list(row_names,col_names))
matrix(c(1:20),nrow=4,byrow = FALSE,dimnames = list(row_names,col_names)) #by row is changed
matrix(c(1:20),nrow=5,byrow = TRUE,dimnames = list(row_names,col_names)) #THROWS ERROR
matrix(c(1:20),nrow=6,byrow = TRUE,dimnames = list(row_names,col_names)) #NOT ABLE ACCEPT THE EVENT
matrix(c(1:100),nrow=8,byrow = TRUE)

matrix(c(1:100),nrow=8,ncol = 5,byrow = TRUE) #ncol
matrix(c(1:100),ncol = 5,byrow = TRUE) #default rows
m1 <- matrix(c(1:100),ncol = 5,byrow = TRUE) #default rows
class(m1)
typeof(m1)

m1
#structure of the matrix
dim(m1)
nrow(m1)
ncol(m1)
str(m1)

matrix(rep(5,10),nrow = 2)
matrix(seq(1,4,length=20),nrow = 2)

matrix(seq(1,4,length=20)) #no rows and no columsn sepcificed

###############09JAN2022####################################
########################################################################

m1<-matrix(c(1:8),nrow = 2)
m1

#indixing matric
m1[2,3]
m1[1,2]
m1[1,4]
m1[c(1,2),c(2,3)]
a<- m1[1,2]
b<-m1[2,3]
print(a,b)
c(m1[1,2],m1[2,3])
cat(a,b)
c(m1[2,1],m1[2,3],m1[2,4])
m1[1:2,2:4]
m1[1,-3]

m1[1:2,-2]

#filtering
m1[m1>3]
m1[m1>5]
m1[m1>1 & m1 <4]
m1[m1>1 | m1 <4]
m1[m1==4]
m1[m1!=4]
which(m1==3)


#updating an editings the matrix
m1[2,2] <- 10
m1

m1[1,2:4]<-100

c(m1[1,4],m1[1,2])<-c(5,4) 
m1
m1[,2]

#adding and deleting
m1

m1<- rbind(m1,c(4,3,2,5))
m1
m1<-cbind(m1,c(7,6,5))
#delete
m1[-1,] 
m1[,-1]
m1[c(-1,-3),]

#matrix operations
m1<-m1[,c(-3:-5)]
m1

m2<-matrix(c(7:10),nrow=2)
m2<-rbind(m2,c(2,3))

m1
m2
m1+m2
m1-m2
m1*m2
m1/m2


###############11JAN2022####################################
########################################################################

#factor
x <- c(4,3,4,3,3,3,3,4,4,5,6,7,7,7,77,8)
x
typeof(x)
factor(x)

y<-c("a","a","b","e","e","g")
v <-factor(y)
class(v)
#factor checking
is.factor(v)

#convert the numeric vector a factor
v1<-as.factor(x)
class(v1)

v
length(v)

#reading and accessing
x
x[3]
x[c(3,2)]
x[-3]
x[c(TRUE,FALSE)]

#updating /modifcation the factor
a <- c(1,2,3,4,5,6,1,2,3,4,5,6)
f <-ordered(a,labels=c("low","middle","high"))
f
class(f)

#factor in dataframe
height <- c(125,132,156,133,144,165,111)  
weight <- c(33,66,44,40,23,56,43)  
rudr <-c("1","1","1","1","3","3","4")
gender <- c("male","male","female","female","male","female","male")

student_info<-data.frame(height,weight,gender,rudr,stringsAsFactors =TRUE)
student_info
class(student_info)
is.factor(student_info$gender)
str(student_info)

#by functions
n <- c(23,24,56,54,56,66)
serv <- factor(c("N","N","M","M","H","H"))
by(n,serv,mean)
s <- by(n,serv,sum)

ls<- as.list(s)

#split the factor levels
split(n,serv)

###############13JAN2022####################################
#############################################################

#data frame concepts
#creating using vector
id <- c(1,2,3,4)
name <- c("rud","vai","ver","gan")
age <- c(24,18,45,23)
student <-data.frame(id,name,age)
student

typeof(student)
class(student)

#summary of the df
str(student) 
dim(student)
nrow(student)
ncol(student)

#you can create using the data.frame( directorly)
student1<-data.frame(
          id <- c(1,2,3,4),
          name <- c("rud","vai","ver","gan"),
          age <- c(24,18,45,23),
          dob <-c("2021-01-02","2024-02-03","2023-02-03","2021-02-03"),
          stringsAsFactors = FALSE
        )
names(student1)<-c("id","name","age","dob") #using the name

#using the without names
student2<-data.frame(
  id =c(1,2,3,4),
  name= c("rud","vai","ver","gan"),
  age=c(24,18,45,23),
  dob=c("2021-01-02","2024-02-03","2023-02-03","2021-02-03"),
  stringsAsFactors = FALSE
)

#using the load file
getwd()
setwd("/Users/ganeshbabug/Documents/github/datasets/Other")
tips <- read.csv("tips.csv")

#creating using matrix
m1 <- matrix(c(1,2,3,4,5,6,7,8,9,10),ncol = 2)
m1

df1=as.data.frame(m1)
is.vector(df1$V1)
typeof(df1$V1)

df1
names(df1)<-c("L1","L2")


#from  list
t1 <- list(c('a','b','c'),c(3,4,5))
data.frame(t1[[1]],t1[[2]])
data.frame(t(sapply(t1,c)))
data.frame(t(t(sapply(t1,c))))y

#from array
a1 <- array(c(1,2,3,4,5,6))
as.data.frame(a1)

a2 <- array(c(1,2,3,4,5,6),dim=c(2,4))
a2
as.data.frame(a2)
as.data.frame(t(a2))

#reading/indexing tommorr

###############16JAN2022####################################
#############################################################

flim <- read.csv("/Users/ganeshbabug/Documents/github/datasets/Other/film.csv",sep = ";")
dim(flim)
str(flim)
nrow(flim)
ncol(flim)

head(flim)
tail(flim)

#classical way of reading
flim
flim[1,]
flim[3,]

###############17JAN2022####################################
#############################################################

flim[4:10,]
flim[c(6,8),]
flim[c(6,8),]
flim[,1]
flim[,c(1,2)]
flim[,c(2:4)]
flim[,c("Length",7:10)]#not acceptable
flim[,c(2,7:10)]
names(flim)
flim[,"Subject"]
flim[,c("Awards","Length")]
flim[c("Awards","Length")]
flim[4,c("Awards","Length")]
flim[3:6,c("Awards","Length")]
flim[-4,]
flim[-1:-5,-3:-5]

head(flim)
flim$Length
flim$Year
c(flim$Length,flim$Title)
typeof(flim$Length)


#random obs
i <- sample(nrow(flim),100)
flim[i,]
flim[sample(nrow(flim),100),]

#flitering or subsetting
head(flim)
str(flim)
flim$Year ==1991
flim[flim$Year ==1991,]


flim[flim$Year ==c(1991:1993),]

flim[flim$Subject=="Comedy",]
flim[flim$Subject==c("Comedy","Horror"),]
flim[(flim$Subject=="Comedy") | (flim$Subject=="Horror") ,]
flim[flim$Subject =="Comedy" | flim$Subject=="Horror",]
flim[flim$Subject =="Comedy" | flim$Subject=="Horror",c("Year","Subject")]

###############18JAN2022####################################
#############################################################

flim
names(flim)
dim(flim)
#sorting the df
flim[,c("Year","Title")]
fl <- flim[order(flim$Title),]#ascending
fl <- flim[order(1:10),c(1:3)]# wrong ascending
flim[order(flim$Title),]
fl <- flim[order(flim$Title,decreasing = FALSE),]#descending
fl <- flim[order(flim$Title),]#descending
fl <- flim[order(flim$Title,decreasing = TRUE),]#descending
fl <- flim[order(flim$Title,flim$Year,decreasing = FALSE),]#descending

#summary
summary(flim)

#updating 
head(flim)
flim[2,2] <- 115
flim[4,3] <-"Cubas"
flim[1] <-1000
flim

#adding a new row and col
f2 <- head(flim[1:2])
f2
f2<- rbind(f2,c(1900,342))
f2

f2$age <-2024 -f2$Year
f2$gender <- "Male"
f2

#update a column name
names(f2)[3] <- "aging"
f2
colnames(f2)[3] <-"age"
f2

#update the row name
f2
rownames(f2)[1] <- "g1"
rownames(f2)
f2

#remove the column
f2$gender <- NULL
f2


#delete the column
f2
f2$age <- NULL
f2<-f2[,-2]
f2

#delete the all value of column 
f2$gender<-""
f2
f2$age<-""
f2

#delete the row
f2[-2,]
f2[c(-3,-4),]

ls()
rm("f2")
f2


###############19JAN2022####################################
############################################################
head(flim)

id <- c(101,102,103,104,105)
name <- c("vaib","rudra","gan","veer","rep")
salary <- c(32000,45000,83722,34000,45666)

employ <- data.frame(id,name,salary)
employ

employ <-rbind(employ,c(107,"dag",45339))

#add hours
h <- c(233,456,212,343,232)
emp_h<- data.frame(id,h)
names(emp_h)[2]<-"hour"

emp_h<- rbind(emp_h,c(106,343))

employ
emp_h

#inner join
#that key is available both df , then it display
merge(employ,emp_h,by="id",all=FALSE) #inner join

#outer join
#all the ID which matched or not matched will be displayed
merge(employ,emp_h,by="id",all=TRUE) 

#left join
#whatever the ID from the left table is matched or matched will be displayedd
merge(x=employ,y=emp_h,by="id",all.x=TRUE) 
merge(x=employ,y=emp_h,by="id",all.x=FALSE) 

#right join
#whatever the ID from the right table is matched or matched will be displayedd
merge(employ,emp_h,by="id",all.y=TRUE) 
merge(employ,emp_h,by="id",all.y=FALSE) 

#cross join
#for every row left row merge all the records of that time right
merge(employ,emp_h,by=NULL)

###############24JAN2022####################################
############################################################
id <- c(101,102,103,104,105)
name <- c("vaib","rudra","gan","veer","rep")
salary <- c(32000,45000,83722,34000,45666)

employ <- data.frame(id,name,salary)
employ
#NA is a logical constant of length 1 which contains a missing value indicator
employ <- rbind(employ,c(106,NA,NA))
#use is.na() to test the missing values
is.na(employ$name[7])
is.na(employ$salary[7])

#null testing
a<-list(2,3,3,4)
typeof(a)
is.list(a)
a <- NULL 
is.null(a)

#operators
#arthmatic, relational, logical , assignment and miscellanous

#arhematic
2+3
2-3
2/3
2*3
2%%3
2^2 #SQUARE OPERATOR

#RELATIONAL OPERATOR
2<3
2>3
2==3
2<=3
2>=3
2!=3 #NOT EQUAL TO OPERATOR

#LOGICAL 
(2<3) & (2>3) #AND OPERATOR
(2<3) || (2>3) #OR OPERATOR
!(2<3) #NOT OPERATOR

#assignment operator
a <- 3
a = 3
a <<- 3
3 -> a
3 ->> a


###############03FEB2022####################################
############################################################

#miscellanous operations
#  : 
a<- c(1:9) #colon operator
3%in%a #%in% operator
10%in%a #%in% operator

#numbers
#number conversations
#implicit and explicit

a<- c(1:9,"a")
typeof(a)
b <-c(TRUE,2)
b
typeof(b)

cd<-c(TRUE,"a")
cd

#coercion rule logical-->integer-->numeric-->complex --> character
1 < "2"
"1" > 2
1 < "a"
"a"> 1

a=32
89 < "a"

#explicit conversations

as.numeric("4")
as.integer("2")
as.character("ga32")
as.vector(list(43,3,2))
as.matrix(list(32,22,22))
as.data.frame(list(32,23,23))

#number functions
abs(-9383) #converts negative to positive
ceiling(4.322)
floor(4.622)
log(3)
trunc(43.322)
round(4.682,2)
log10(4.34)
signif(2.33,3)
exp(32)
sin(3)
cos(3)
tan(3)

mystu<-data.frame(
  name=c("a","b","c"),
  marks=c(34,23,45)
)

mystu$marks/sum(mystu$marks)

#math functions
sqrt(4)
a <-c(4,3,2,23,4,56,6,7,7,88)
min(a)
max(a)

#df apply
mapply(max,mystu[c(1,2)])
mapply(min,mystu[c(1,2)])

print(pi)


###############06FEB2022####################################
############################################################

#raondom
runif(3,0,10)
runif(3,5.0,10.0)
sample(1:10,4)

#range
x<-c(4,2,3,3,2,-9,Inf,30,NA)
x
range(x,na.rm = TRUE)
?range

range(employ$salary)

#strings
#creating a string
mychar1 <-'hello world'
mychar <-"hello world"
mychar
typeof(mychar)

#escape characters
cat(mychar,"\n",mychar1)
length(mychar)
nchar(mychar)

#empty character
x<-""
x
nchar(x)

#create a vector of two empty string
y<- character(2)
y
nchar(y)

#ceater a empty character vector
z <-character(0)
z
nchar(z)

z[1] <-"tom"
z
nchar(z)

is.character(z) #to check the character or not

#string formatting
#cat function
#paste function
#stringf()

company<- 'GSK'
exp <- 15
name <- "ganesh babu g"

cat("Myself",name,'Working in',company,'for past',exp,'Years')
paste("Myself",name,'Working in',company,'for past',exp,'Years')

#using stringF() functions

sprintf("%f",0.73478605948)
sprintf("%.3f",0.73478605948)
sprintf("%.f",0.73478605948)
sprintf("%+f",0.73478605948)
sprintf("%-f",-0.73478605948)
sprintf("%g",0.73478605948)
sprintf("%.7g",0.73478605948)
sprintf("%d",4837373)
sprintf("%.4s","ganeshbabug")


###############08FEB2022####################################
############################################################

#acessing of string elements
x <- "Iam the robot"
x

substr(x,1,3)
substr(x,8,14)
substr(x,1,3) #not able to reverse the element
substring(x,1,4)

x #here the statements itself is a string
letters #here the individual character is string
letters[1]
letters[1:4]
letters[c(1,5,7)]

#string properties
#to prove string is a immutable object in R
a <- "ganesh"
.Internal(inspect(a))
a<-"rudresh"
a
.Internal(inspect(a))

#escape character

print("positive\\negative")
print("positive") #to represent in single quote
print("\'positive\'")
print("positive\'s")
print("\"positive\"")
cat("positive","negative")
cat("positive","\n","negative") #here it is happening
cat("positive","\t","negative") 
cat("positive ","\b","negative")
cat("positive","\r","negative")
cat("positive","\\","negative")

#regular expressions *pearl expression
grep("[ld]", c("Philadelphia", "Milwaukee", "Boston","loan"), value = TRUE)
grepl("[ld]", c("Philadelphia", "Milwaukee", "Boston"))
gsub("[ld]", "***", c("Philadelphia", "Milwaukee", "Boston"))
gsub("[ld]", "$", c("Philadelphia", "Milwaukee", "Boston"))
#https://github.com/ganeshbabuNN/MyNotes/blob/master/R%20Language/4-API/Regular%20Expression/Regular%20Expressions.txt
?grep
#split case
x <- " ganesh babu "
x
strsplit(x," ")[[1]][1] #split the string
trimws(x,which="both")
trimws(x,which="left")
trimws(x,which="right")
trimws(x)


###############17FEB2022####################################
############################################################

text <- "This should be supported on all platforms as it is a feature as of C99. The format is not uniquely defined"
grep("ganesh",text)
grep("all",text)
grep(pattern = "gan",text)
grep("ON",text,ignore.case = TRUE)
grep("on",text,value = TRUE)
grepl("all",text)

x <- c("Philadelphia", "Austin")
x
regexpr("hil", x)
regexpr("NO", x)
gregexpr("hil", x)

text1 <- c("gbag","gbag","brga",'rubn','prkh','zktu')
grep("gbag",text1)
length(grep("gbag",text1))

text
gsub("supported","support",text)

x
sub("Austin","Austrialia",x)

c <- "ganesh"
toupper(c)
tolower(c)
casefold(c,upper = TRUE)



