
#https://leetcode.com/problem-list/design/
#https://www.kaggle.com/competitions
#https://github.com/ganeshbabuNN/MyNotes/tree/master/Logical_Programming
#https://desktop.github.com/download/
#create a account in github

  
#Subsetting Operators
#Tidyverse Logical Helpers
#Bitwise Operators

#Subsetting Operators
#[] = extact multiple elements
#[[]] = extract single elements for vectors
#$ = access column

#vector
a <- c(3,4,2,3,54,5,45,32,432,423,423,423,423,423,423,42,342,342,34,45,543,32454,43,454,45,454,545)
a
a[[5]]
a[5] # #single
a[c(1,4)] # multilpe value
a[c(3:5)] # Range of value = Slicing or range
a[-5] #it exludes

#list
a <- list(1,"Ganesh",TRUE,c(3,2,4,3),mtcars)
a
a[[2]]
a[[4]][2]
a[[5]][3]
a[[5]]$disp
(a[[5]]$disp)

#dataframe
class(sleep)
sleep$ID
sleep$extra
mtcars
mtcars$hp
mtcars[c(1,2)]

#Tidyverse Logical Helpers
library(tidyverse)
student_data %>% filter(between(student_age,30,35))
student_data %>% filter(is.na(student_data$student_class))
#student_data[is.na(student_data$student_class)]
#student_data[!is.na(student_data$student_gender)]

#Bitwise Operators
bitwAnd(5,3)
bitwXor(3,4)
bitwOr(6,3)

#real world
#arithmetic --> banking, finincial , loan
#logical --> eliglibity rules --> banking
#%in% --> multiple category filter--> marketting, reporting
#pip --> data piplines 
#subsetting --> reporting


#Operator Precedence and associativity(Order of Execution)
3+2*3 #15,9,9 
3+6
3+ (2*3)

#Operator Precedence
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

#arthemtic
10-4-2
(10-4)-2
6-2

#division
10/2/3
(10/2)/3
5/3

#logical operator
TRUE & FALSE & TRUE | TRUE
(TRUE & FALSE) & TRUE | TRUE
FALSE & TRUE | TRUE
(FALSE & TRUE) | TRUE
FALSE | TRUE

#Relational