#assignment value to variable
x <- 3
x
x = 4
x

x <- c(3,3,4,"gan") #leftward operator
x

c(3,2,4) -> b #rightward operator
b <- c(3,2,4)

#multiple assignment
x=y=z=5
x
y
z
#compile time error and runtime time error
#x,y,z=5,3,4

b_a<-4
b.a<-4
b4a<-4
#b%a<-4
#ba%<-4
ba_<-4
.ba<-4
#.2ba<-4
#_v_name <-3

#naming convention
myVariable <- 3


#global and local variable

b= 10
display <- function() {
  a=10
  #print("hello shweetha",a) #check it 
  print(a)
  print(b)
}

print(a) #local variable and cannot access globallly.

display()
