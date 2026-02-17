#https://github.com/ganeshbabuNN/MyNotes/tree/master/R_Language/2-Programming_Fundamentals
#https://github.com/ganeshbabuNN/mytrainings/tree/main/R_Training_Swetha_20260105

num <- 80 # is equal to 10,50,100,80
if(num==10){
  print("this is equal to 10")
}else if(num==50){
  print("this is equal to 50")
} else if(num==100){
  print("this is equal to 100")
} else if(num==80){
  print("this is equal to 100")
}else {
  print("this number is either not equal to 10,50,100")
}

#grade of student marks
# A --> ( > 85 and <= 100)
# B+ --> ( > 60 and <= 85)
# B --> ( > 40 and <= 60)
# C --> ( > 30 and <= 40)
# Fail --> ( <30)
a <- as.integer("10")
typeof(a)
a+10

marks= as.integer(readline("Enter the marks: "))
if(marks > 85 & marks <=100){
  print("Grade A")
}else if(marks > 60 & marks <=85){
  print("Grade B+")
}else if(marks > 40 & marks <=60){
  print("Grade B")
}else if(marks > 30 & marks <=40){
  print("Grade C")
}else{
  print("Fail")
}

#ifelse
x<- c(1,3,4,5,6,7,8,9,NA)

ifelse(x>0,"positive","Negative")

## switch statement

switch(expression, case1,case2)

x <- 3
y <- switch (x,"a","b","c","d")
y
x="x"
y <- switch (x,
             "x"="a",
             "y"="b",
              "z"="c",
              "i"="d"
             )
y

if(marks > 85 & marks <=100){
  print("Grade A")
}else if(marks > 60 & marks <=85){
  print("Grade B+")
}else if(marks > 40 & marks <=60){
  print("Grade B")
}else if(marks > 30 & marks <=40){
  print("Grade C")
}else{
  print("Fail")
}
marks= 90
y <- switch (1,
             "TRUE"="Grade A",
             "FALSE"="Grade B+",
             as.integer("1") ="GRADE C+"
)
y
y <- switch (x,
             (marks > 85 & marks <=100)="Grade A",
             (marks > 60 & marks <=85)="Grade B+",
             (marks > 40 & marks <=60)="Grade B",
             (marks > 30 & marks <=40)="Grade C"
            )
y

library(tidyverse)
marks= 40
case_when(
  (marks > 85 & marks <=100)~"Grade A",
  (marks > 60 & marks <=85)~"Grade B+",
  (marks > 40 & marks <=60)~"Grade B",
  (marks > 30 & marks <=40)~"Grade C"
)
typeof(x)

#iteration satement
##for loop
for(i in 1:10){
  print(i)
}

v<- c("a","b","c",1,"10")
v
for(i in v){
  print(i)
}


v1<- list("a","b","c",1,"10",v)
v1
typeof(v1)
for(i in v1){
  print(i)
}

n <- matrix(c("a","b","c","d","e","f"),nrow=2,ncol=3,byrow = TRUE)
n
for(i in 1:nrow(n)){
  for(j in 1:ncol(n)){
    print(paste(i,j))
  }
}

x <-"hitesh"
substr(x,1,1)
for(i in 1:nchar(x)){
  print(substr(x,i,i))
}

c=0
for(i in x){
  print(i[c])
  c=c+1
}

files <- c("ae.csv","dm.csv","ec.csv")
for(i in files){
  read.csv(i)
}

#nested loop
# 1X1 = 1
# 1X2 = 2
# 1X3 = 3
for(i in 1:10){
  for(j in 1:10){
    print(paste(i,"X",j,"=",i*j))
  }
}


##while loop
##repeat loop
#transfer statement
##break
##next
#other statement
## Guard clases
## apply statement























