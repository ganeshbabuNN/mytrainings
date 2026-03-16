#variable operators
library(lobstr)
a<- 10
print(a)
obj_addr(a) #0x232149fd798
a <- 20
print(a)
obj_addr(a) #0x23214a783e0

#copying the variable
b <- a
obj_addr(a) #0x23214a783e0
print(b)
obj_addr(b) #0x23214a783e0 0x23214a783e0 #copy on modify
b<-30
print(b)
obj_addr(b) #0x2320d9294b0

#Removing variable
rm(b)
rm(b,c,d)

a_var=3
b_var=3
c_var=4
f_var=10
rm(list=ls())

#listing all
ls()

#print
print(ls())
print(ls(pattern = "var"))
print(ls(all.names = TRUE))

#checking
exists("a")

#pass by value
z<- function(a){
  a<-a+1
  print(a)
  obj_addr(a)
}
z(3)
z(a=4)
z(a=5)

#default value
z<- function(a=100){
  a<-a+1
  print(a)
  obj_addr(a)
}
z()
z(10)

#memory
gc() #garbage collector


#constants
a=10
a=20

PI<-31.42
a <- 4L
typeof(a)
a <- 30
