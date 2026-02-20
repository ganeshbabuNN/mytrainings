#https://leetcode.com
#https://www.hackerrank.com/

#nested loop
# 1X1 = 1
# 1X2 = 2
# 1X3 = 3
for(i in 1:10){
  for(j in 1:10){
    print(paste(i,"X",j,"=",i*j))
  }
}

for(i in 1:10){
  print("parent Loop",i)
  for(j in 1:10){
    Sys.sleep(2)
    print("Child Loop",i)
  }
}
##while loop]
for(i in 1:10){
  print(i)
}

i<-1
while(i<=10){
  print(i)  # 1, 2   # assign to 1 X 5 and try to do the data structure 
  i+1
}

acc_bal <- 2000
tran <- 100
flag <- 1
while(acc_bal > 0){
  acc_bal <- acc_bal-tran
  flag <- flag + 1
  print(flag)
  if(flag==5){
    break
  }
  print(acc_bal)
}
##repeat loop
i<-1
repeat{
  #code
  Sys.sleep(1)
  if(i==10){
    print("break")
    break
  }
  if(i==5){
    next
    print("skip")
  }
  print(i)
  i<-i+1
}
#transfer statement
##break
##next
#other statement
## Guard clases
## apply statement
lapply()
apply
a<-matrix(1:5,nrow = 2)
apply(a,2,sum)

mtcars
apply(mtcars,1,mean) # 1 row
apply(mtcars,2,mean) # 2 col

mtcars[2,]
mtcars[2,]
mtcars[1:4,]
data<- 
apply(mtcars[,c("mpg","cyl")],2,mean)

sapply
lapply
vapply























