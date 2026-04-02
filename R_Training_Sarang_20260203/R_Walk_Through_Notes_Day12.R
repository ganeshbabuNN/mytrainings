library(nycflights13)
library(tidyverse)

#operator precedence 
5+2 * 3
(7)*3
21# this is wrong
 
5+2*3 #* always from right to left
5+(2*3)
5+6
11

#Operator --> Category
#-----------------------
#() -- Parentheses
#^,** --exponentiation (Right-to-Left )
#+,-(unary) -sign (Right-to-Left )
#*,/,%%,%/%--- multiple,divide,modulus
#: --- sequence
#+,- --- additions, subtraction
#<,<=,>,==,!= ------Relational 
#! --- logical NOT
#& --- logical AND (vectorized)
# | --- logical OR (vectorized)
#&& --- logical AND(short-ciruit)
# || --- logical AND(short-ciruit)
#<-,->,= --- assignment (Right-to-Left )
#~ ---- formula (Right-to-Left)
##Higher priority operators are evaluated first.

#operator associativity
#left to right
#right to left

#precedence --> which operator is evaluated first
#associativty = direction of evaluation when prescenden in the same

#left to right assosiativity

10-5-2
20/5/2
20/5/2*4
4/2*4
2*4
TRUE & FALSE & TRUE

5<10<20
(5<10)<20
TRUE <20
1<20


#right to left associavitiy

2^3^2
2^(3^2)
2^9


a<-b<-c<-10
a<-b<-(c<-10)
a<-b<-(10)
a<-10
a
b
c

!!TRUE
!(!TRUE)
!FALSE
TRUE

2:3:7
(1:3):5
c(1,2,3):


5+2^3*4>20 & !FALSE
5+(2^3)*4>20 & !FALSE
5+8*4>20 & !FALSE
5+(8*4)>20 & !FALSE
5+(32>20) & !FALSE
5+TRUE & !FALSE
5+TRUE & (!FALSE)
5+(TRUE & TRUE)
5+TRUE 