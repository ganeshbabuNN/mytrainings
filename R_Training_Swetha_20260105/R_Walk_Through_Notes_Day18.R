#TBD
nums <- c(1.5,12.345,100,3.2) #TBD
format(nums,nsmall = 2)
#looks all the value
#find the maximum decimal point = 3
# 2<3 .. its betrays.
format(nums,nsmall = 2,justify = "none")
format(trimws((nums)),nsmall = 2,justify = "none",na.encode = FALSE)
format(trunc(nums),nsmall = 2,justify = "none")
sprintf()

formatC(nums,digits = 2,format="f")

format(nums,nsmall = 2,justify = "none")
formatC(nums,width = 2,format = "f",flag="0")
formatC(12.3665,width = 2,format = "f",flag="0",digits = 2)
formatC(c(-1,-02,2),width = 2,format = "f",digits = 1,flag="+")
formatC(c(-1,-2,2),width = 2,format = "f",digits = 0,flag="+")

#comparing
3+4 == 7
3.5+4.5==8.0
0.1+0.2==0.3
all.equal(0.1+0.2,0.3)

sum(c(1,2,NA,45),na.rm = TRUE) #to exculde NA
sum(c(1,2,NA,45,NaN),na.rm = TRUE) #to exculde NA,NaN
sum(c(1,2,NA,45,NaN,NULL),na.rm = TRUE) #to exculde NA,NaN,NULL but it escape
sum(c(1,2,NA,45,NaN,NULL,Inf),na.rm = TRUE) #to exculde NA,NaN,NULL but it escape
a<-c(1,2,NA,45,NaN,NULL,Inf)
sum(a[is.finite(a)],na.rm = TRUE)# for exuclde the Inf

#String
#------

x <- "ganesh babu"
x <- 'ganesh babu'
class(x)
character(3)
numeric(3)
integer(3)

#a<-'ganesh's babu g'
a<-"'ganesh's babu g"
length(a)
length(c(3,3,3))
nchar(a)
a <- 32423423
length(a) # it counts the items
nchar(as.character(a)) #count of digits

