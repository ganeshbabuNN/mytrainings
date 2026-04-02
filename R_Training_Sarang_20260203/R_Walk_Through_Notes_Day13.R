library(nycflights13)
library(tidyverse)


#never relay on associativity for clarity
#use parenthesis
##comparing, logical exp, expo, sequen

#() - Highest priority
5+2*3
5+(2*3)

(5+2)*3

#exponentiation- it takes associativity  right--> left
2+3^2
2+(3^2)
(2+3)^2

#*,/,%%,%/%--- multiple,divide,modulus
10+6/3
10+(6/3)

10+(6*3)

#: --- sequence
1:5+1
#(1,2,3,4,5)+1
#2,3,4,5,6

1:6
(1:5)+1

#<,<=,>,==,!= ------Relational 
(5+2 )> 6
7>6
TRUE

#logical operator
#! --- logical NOT
#& --- logical AND (vectorized)
##| --- logical OR 

(!TRUE)==FALSE
FALSE==FALSE

!TRUE&TRUE


!TRUE|FALSE
!FALSE & TRUE|FALSE

!FALSE& TRUE|FALSE
(!FALSE)& TRUE|FALSE
(TRUE & TRUE)|FALSE


#<-,->,= --- assignment (Right-to-Left )
x<- 5+3*2
x

#Short circuit operator
v1<- c(TRUE,FALSE,TRUE)
v2<- c(TRUE,TRUE,FALSE)
v1 & v2
(v1 & v2) && FALSE


result <- 5 + 2^3 * 4 > 20 & !FALSE
result
5 + (2^3) * 4 > 20 & !FALSE
#first 2^3 = 8 --> exponent
#second 8*4=32 --> multipliction
#third 5+32 = 37 --> adiition
#fourth 37<20 = TRUE --> relational 
#fifth !FALSE=TRUE  --> logical NOT
#six TRUE & TRUE= TRUE --> Logical AND
#seventh result <-TRUE = TRUE --> assignment operator

df <- data.frame(
  age = c(18, 22, 30, 15),
  salary = c(20000, 30000, 50000, 15000)
)
df
df$age >= 18 & df$salary > 25000
df$age >= 18 # TRUE,TRUE,TRUE,FALSE
df$salary > 25000 # FALSE,TRUE,TRUE,FALSE
#relational operator
#logical AND

#Numbers

x<- 32
class(x)
.Internal(inspect(x))
x <- 43
.Internal(inspect(x))
x<- "ganesh"
.Internal(inspect(x))

##Handling Missing Numeric Values
sum(c(1,2,3,4))
sum(c(1,2,3,4,NA))
sum(c(1,2,3,4,NA),na.rm = TRUE) #exclude NA in sum
