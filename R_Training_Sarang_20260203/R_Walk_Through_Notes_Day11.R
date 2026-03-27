library(nycflights13)

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
#the system calculates internall the base 10  int their binary system base2. 0.30000000000000000000000044
all.equal((0.1+0.2),0.3)

#Logical Operators
#Special Operators
#Special Infix Operators
#Subsetting Operators
#Tidyverse Logical Helpers
#Bitwise Operators 


