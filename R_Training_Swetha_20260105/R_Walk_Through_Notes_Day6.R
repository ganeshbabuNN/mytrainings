#date
dt <- "2025-03-01"
dt
typeof(dt)
dt1 <- as.Date(dt)
dt1
typeof(dt1)
class(dt1)
as.Date("2025-03-11 01:30:50")

dt3 <-as.POSIXct("2025-03-11 01:30:50") #portable operating system interface(POSI) calender time(ct)
dt3
format(dt3,"%d-%M-%Y %H:%M:%S")
typeof(dt3)
class(dt3)

dt4 <-as.POSIXlt("2025-03-11 01:30:50") #portable operating system interface(POSI) local time(lt)
typeof(dt4)
class(dt4)

#NULL
x<-NULL
typeof(x) #why it is quote "NULL"
class(x)
x+1

#NA
a <- c(10,20,30,NA,40,NULL,60) #nothing is missing is different
a
NA==NULL 
NULL==""
1==1
NA=" "

#string
s1 <- "my name is baba"
s1
typeof(s1)
class(s1)

TRUE==FALSE
TRUE==TRUE
FALSE==FALSE

1==0 #LHS = RHS
1==1
0==1
FALSE==TRUE

a <- c("Ganesh","babu","Kumar","Veeresh")
a

a <- c(3,2,3,4,5) #numeric
a
typeof(a)
class(a)

a <- c(3,2,3,4,5,"a")
a
typeof(a)
class(a)

a <- c("1","4","5","1",3)
a
typeof(a)
class(a)

a <- c("1","4","5","1",3,TRUE)
a
typeof(a)
class(a)

#list
stu.data
a <- list(1,"Ganesh",TRUE,3.3,5L,0+3i,as.Date("2025-01-01"),NULL,NA,c(3,2,4,3),stu.data)
a
typeof(a)
class(a)

#martrices
a<-matrix(c(1,2,3,4,5,6),nrow = 2,ncol = 3,byrow = TRUE)
a
typeof(a)
class(a) 

b<- matrix(c(7,8,9,10,11,12),nrow = 3,ncol = 2,byrow = TRUE)
b
typeof(a)
class(a) 

a %*% b #dot product #hitesh question

