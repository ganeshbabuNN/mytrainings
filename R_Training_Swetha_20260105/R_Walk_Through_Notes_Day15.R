
#https://leetcode.com/problem-list/design/
#https://www.kaggle.com/competitions
#https://github.com/ganeshbabuNN/MyNotes/tree/master/Logical_Programming
#https://desktop.github.com/download/
#create a account in github

  
#Operator Associativity in R
#Relational
5<10<20
(5<10) <20
1<20
TRUE

#Right-to-Left Associativity (Special Operators)
#<-,->,= --- assignment (Right-to-Left )

2^3^2
2^(3^2)
2^9
512


library(lobstr)
(2^3)^2
 a<-b<-c<-10
 a<-b<-(c<-10)
 a<-(b<-10)
 a<-10
 #
c<-10
print(obj_addr(c)) 
b<-c 
print(obj_addr(b)) 
a<-b
print(obj_addr(b)) 
print(a)

#mixed assignment
10 -> x -> y
y<-(x <- 10)
y<-10
y

#^,** --exponentiation (Right-to-Left )
!!TRUE
!(!TRUE)
!FALSE
TRUE

#unary
-+5
-(+5)
-5


#sequence
3:5:2
3:(5:2)

#let combine
8 + 2^4^3
8 + 2^(4^3)
8 + 2^64
8 + (2^64)

#comparsoion
50>10 == 3
TRUE ==3
1==3
FALSE

3^4*3 
#same prcedence 00> associaty directions

#() -- Parentheses
#^,** --exponentiation (Right-to-Left )
#+,-(unary) -sign (Right-to-Left )
#*,/,%%,%/%--- multiple,divide,modulus
#+,- --- additions, subtraction
#: --- sequence
#<,<=,>,==,!= ------Relational 
#! --- logical NOT
#& --- logical AND (vectorized)
#| --- logical OR 
#&& --- logical AND(short-ciruit)
#<-,->,= --- assignment (Right-to-Left )
#~ ---- formula (Right-to-Left)
##Higher priority operators are evaluated first.
#combined expression
result <- 5 + 2^3 * 4 > 20 & !FALSE
result <- 5 + 8 * 4 > 20 & !FALSE
result <- 5 + 32>20 & !FALSE
result <- 37>20 & !FALSE
result <- 37>20 & !FALSE
result <- TRUE & !FALSE
result <- TRUE & TRUE
result <- TRUE
result


#PEMDAS+ rule
#() -- Parentheses (P)
#^,** --exponentiation (Right-to-Left )(E)
#+,-(unary) -sign (Right-to-Left )
#*,/,%%,%/%--- multiple,divide,modulus
#+,- --- additions, subtraction (M)
#: --- sequence  (S)
#<,<=,>,==,!= ------Relational 
#! --- logical NOT
#& --- logical AND (vectorized)
#| --- logical OR 
#&& --- logical AND(short-ciruit)
#<-,->,= --- assignment (Right-to-Left )
#~ ---- formula (Right-to-Left)
# https://www.geeksforgeeks.org/maths/pemdas-rule/


df <- data.frame(
  age = c(18, 22, 30, 15),
  salary = c(20000, 30000, 50000, 15000)
)
df$age >= 18 & df$salary > 25000






