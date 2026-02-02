a <- c(1,2,3,34,NA)
sum(a,na.rm = TRUE)

#decimal system
a=363
print(a ,"Decimal system")
print(bin(a) ,"binary system")
print(oct(a) ,"octal system")
print(hex(a) ,"hex system")


test<-utf8ToInt("Apples")
test
class(test)

tes1=intToUtf8(test)
tes1


#built -in functions
#==================
#mathematical 
abs(-3)
2^2
sqrt(25)

log(10)

exp(1)
factorial(4)
a<- c(3,4,5,6,7)
sum(a)
prod(a)  

#rounding 
a<-3.556
round(a)
round(a,2)

ceiling(a)
floor(a)

trunc(a)

student_marks <-c(34,56,31,46,78,87,43,87,NA)
order(student_marks) # return position index
sort(student_marks) # 
#c(34,56,31,46,78,87,43,87)
#c(2,5,1,4,6,7.5,3,7.5)
rank(student_marks)
max(student_marks)
min(student_marks)
which.max(student_marks) #position
which.min(student_marks)
student_marks[which.max(student_marks)]


mean(student_marks,na.rm = TRUE)
sum(student_marks,na.rm = TRUE)
median(student_marks,na.rm = TRUE)
sd(student_marks,na.rm = TRUE)
#stats package

range(student_marks,na.rm = TRUE)

a <- c(1,2,3,4,5,6)
cumsum(a)
cumprod(a)
cummax(a)
cummin(a)

a <- c(12.36,22.3600,3.899,4.256,5.36,6)
class(a)
format(as.numeric(a),nsmall = 1) #TBD
format(a,digits =3)
format(c(6.0, 13.1), digits = 2)
format(12.343456,digits=4)
format(12.3,nsmall=3)
format(6.0,nsmall=2)
format(6.12,digits=2)
format(1.2,nsmall=5,digit=2)

nums <- c(1.5,12.345,100) #TBD
nums
format(nums,nsmall = 2)

Sys.time()

format(Sys.time(),"%Y")
format(Sys.time(),"%y")
format(Sys.time(),"%B")
format(Sys.time(),"%b")
format(Sys.time(),"%m")
format(Sys.time(),"%d")
format(Sys.time(),"%A")
format(Sys.time(),"%a")
format(Sys.time(),"%H")
format(Sys.time(),"%M")
format(Sys.time(),"%S")
format(Sys.time(),"%Y-%m-%dT%H:%M:%S") #date time ISO8601
library(lubridate)
ymd_hms(Sys.time())
format_ISO8601(Sys.time())
a <- "03012026"
as.Date(a)
dmy(a)


