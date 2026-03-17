#data types

#numeric, integer,logical,complex,character, raw

#primitive data types
#numeric
price<- 343444444444444444444444444444444
typeof(price) #double
class(price)
price<- 34.33
typeof(price) #double
class(price)

a<-4.34
b<-4
a==b
all.equal(a,b)

#integer
a <- 2147483647L
typeof(a) #double
class(a)

#logical
a<-TRUE
a<-FALSE
a<-F
a<-T
class(a)
#cannot be logical
a<-0
class(a)
a<-"FALSE" #not valid

#character
a <- "ganesh"
class(a)
a <- "ganesh babu"
a <- 'ganesh babu'
a <- 'ganesh babu      '
a <- 'ganes234234234'
class(a)

a<-ganeshs #not valid

#"ganesh"+"babu"


#complex
z<- 2+3i
class(z)

#raw
myraw <- charToRaw("R programming")
class(myraw)
r_raw <- readBin("R_Walk_Through_Notes_Day50.R",'raw')
class(r_raw)

#special types
#it represent no value / no object
x<- NULL
class(x)
NULL+1
NULL+NULL

#missing values
#NA
x <- NA
class(x)
NA+1
NA+NULL+1
NA==""
NULL==""
1==1
NA==" "

a<- function(x=NULL){
  x <- x+1
  print(x)
}
a(4)
a()
x<- c(10,"ganesh",NA,"",NULL)
print(x)

#NaN -not a number
x<- 0/0
x
NaN+1
NaN+0

#Inf
x<- 1/0
print(x)

x<-NULL
length(x)
class(x)
