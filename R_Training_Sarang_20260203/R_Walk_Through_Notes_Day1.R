# basic

#print
print("hello world")

#function
display <- function(){
  print("hello world")
}
display()
#S3,S4,R6 methods

#how to get input from the users
readline()
var1 <- readline()
print(var1) # scalar
var1 <- readline("Enter your name: ")
print(var1)
a <- readline("Enter your number: ")
a<- as.integer(a)
print(a*a)


#scan()
scan()
num <- scan()
num  # this is called vector
sum(num)
print(num*2)

#inter 3,4,5,66 .... 180size
#double 432423423423432,234234234.324234234 ...
age = scan(what=integer())
age
typeof(age)
salary = scan(what=double())
salary
typeof(salary) #typeof functions

cat("hello ganesh")
print("hello ganesh")

#any help
help(cat)
help(print)
?cat
