
#https://leetcode.com/problem-list/design/
#https://www.kaggle.com/competitions
#https://github.com/ganeshbabuNN/MyNotes/tree/master/Logical_Programming
#https://desktop.github.com/download/
#create a account in github

  
#Arithmetic operators
#Assignment Operators
#Relational operators
#Logical Operators
#Special Operators
#Special Infix Operators
#Subsetting Operators
#Tidyverse Logical Helpers
#Bitwise Operators 

#Arithmetic operators
#==================
3 + 3  # operands, symobol operator
3-3
4*4
4/3
2^3
x <- c(1,2,-3)
-x # unary minus operato
+x #unary + 

basic <- 50000
hra <- 0.2 * basic
gross_salary <- basic * hra
gross_salary

#to remove scientific notations
#format
format(gross_salary,scientific = FALSE)
#options
options(scipen =999)

#common mistakes
# %/% vs /
#paraentish 

"4" +3

#Assignment Operators
#==================
#<- , left assignment , left upward operator, standard assignment
x<-3
x
#->
393 -> a
a
#=
a=3
#<<-global assignment

a<-10
x <- function(){
  print(a)
  b=20
  print(b)
  a <<-200
  print(a)
}
x()




