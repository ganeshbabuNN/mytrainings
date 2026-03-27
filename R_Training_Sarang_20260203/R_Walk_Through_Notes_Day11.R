library(nycflights13)
library(tidyverse)

5 =="5"

#operators
#its a symobal where you do the calculations
#mathematical calculations

#Arithmetic operators
# + , - , *, / , ^ or **, +/-unary 

5+3
5-3
5*3
6/3
6 %/% 3 #integer divions
2^3
2**3
#unary operator
x <- c(2,2,-3,4)
x
-x #unary sub operator
+x #unary addition operator

#Assignment Operators
# <- , = , -> , <<-

x<-10
x

x=10
x

20->x
x


x <- function(){
  x =2
  print(x)
  x<<- 40 #global assignment
  print(x)
}
x()
x

#Relational operators
# ==, !=, > , <, >=,<=
x=2
y=4
x==y
all.equal(x,y) #numerica operations

#Why all.equal()
(0.1+0.2)==0.3
#the system calculates internal the base 10  int their binary system base2. 0.30000000000000000000000044
all.equal((0.1+0.2),0.3)
near((0.1+0.2),0.3)

#Logical Operators
#&, |, !
x <- c(5,10,15)
x>6 & x<14 # AND
#T, F = F
#F,T = F
#T,T= T
#F,F=F
x>6 | x<14 # OR # F,T=T, T,T=T , T,F=T
#T, F = T
#F,T = T
#T,T= T
#F,F=F

#not
!(x>6)

#Special Operators
1
2
3
4
5
6
7
8
9
10


1:10

#Special Infix Operators
# |> , %in%, 

#%/% integer divison it will re only quotient
10 %/% 3

#%% modulo operator
10 %% 3

#Subsetting Operators
#in R its starts with 1. other lanugage 0
a <- c(1,5,6,7,8,9,4,2)
a
a[2]
a[4:6]
a[c(5,7)]

x <- list(3,4,5,6,7,a)
x
x[[6]]
x[[6]][6]

flights
flights[4]
flights$dep_time

#Tidyverse Logical Helpers
is.na()
between()

#Bitwise Operators 
bitwAnd(5,3) #it works on binary level

#operator precedence 


