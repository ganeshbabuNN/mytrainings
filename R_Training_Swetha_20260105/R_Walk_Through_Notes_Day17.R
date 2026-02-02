
10 %%3 # return the reminder
10 %/% 3 #return the quotient

#random
runif(20)
runif(10,min = 18,max = 65) #real world ranges
floor(runif(5,min = 10,max = 20)) #integer random number
ceiling(runif(5,min = 10,max = 20))
trunc(runif(5,min = 10,max = 20))

sample(10) #sample for 10 numbers its range
sample(2:10) #using sequence operator
sample(2:10,5)
sample(c("Head","Tail"),size=10,replace = TRUE)
sample(c("A","B","C","D","E"))


#testing the numeric functions
is.numeric(10)
is.integer(1L)

z <- c(4,5,6,7)
z>4
any(z>4) #it returns if any one of the elements is true.. its TRUE
any(z<4)

all(z>4)#it return if all of the element is TRUE.. its TRUE
all(z<4)
all(z<=4)

#sequence
seq(1,10) #generate from 1 to 10
seq(1,10, by=2) #add the number given in BY parameter

5
5
5
5
55
rep(5,time=10)
rep("*",time=10)

#windows
c<- c(3,5,7,8,9,10)
diff(c)
lag(c)

