#number System pending will disccuss in next class

# Character → All Formats (including HTML)
c <- "S"
dec <- utf8ToInt(c) 
cat("Decimal:", dec, "\n")
cat("Char   :", c, "\n")
bin <- paste(rev(as.integer(intToBits(dec))[1:8]), collapse="")
cat("Binary :", bin, "\n")
cat("Hex    :", format(as.hexmode(dec)), "\n")
cat("Oct    :", format(as.octmode(dec)), "\n")
cat("HTML   :", paste0("&#", dec, ";"), "\n")

#Binary → All Formats (including HTML)
b <- "01000001"
dec <- strtoi(b, base = 2)
cat("Binary :", b, "\n")
cat("Decimal:", dec, "\n")
cat("Char   :", intToUtf8(dec), "\n")
bin <- paste(rev(as.integer(intToBits(dec))[1:8]), collapse="")
cat("Binary :", bin, "\n")
cat("Hex    :", format(as.hexmode(dec)), "\n")
cat("Oct    :", format(as.octmode(dec)), "\n")
cat("HTML   :", paste0("&#", dec, ";"), "\n")

#Octal → All Formats (including HTML)
o <- "40"
dec <- strtoi(o, base = 8)
cat("Decimal:", dec, "\n")
cat("Char   :", intToUtf8(dec), "\n")
bin <- paste(rev(as.integer(intToBits(dec))[1:8]), collapse="")
cat("Binary :", bin, "\n")
cat("Oct    :", format(as.octmode(dec)), "\n")
cat("Hex    :", format(as.hexmode(dec)), "\n")
cat("HTML   :", paste0("&#", dec, ";"), "\n")

#Unicode → All Formats (including HTML)
u <- "0CA8"   # Kannada "ನ"=0CA8
dec <- strtoi(u, base = 16)
cat("Decimal:", dec, "\n")
cat("Char   :", intToUtf8(dec), "\n")
bin <- paste(rev(as.integer(intToBits(dec))[1:16]), collapse="")
cat("Binary :", bin, "\n")
cat("Hex    :", format(as.hexmode(dec)), "\n")
cat("Oct    :", format(as.octmode(dec)), "\n")
cat("HTML   :", paste0("&#", dec, ";"), "\n")

#Decimal → All Formats (including HTML)
dec <- 65 #2308= ऄ
cat("Decimal:", dec, "\n")
cat("Char   :", intToUtf8(dec), "\n")
bin <- paste(rev(as.integer(intToBits(dec))[1:8]), collapse="")
cat("Binary :", bin, "\n")
cat("Oct    :", format(as.octmode(dec)), "\n")
cat("Hex    :",format(as.hexmode(dec)), "\n")
cat("HTML   :", paste0("&#", dec, ";"), "\n")

#built in functions
#numeric function
abs(-10) #absoulte
abs(10)

sqrt(9)

log(10)
2^3 #power of the number

round(3.5456)
round(3.4456)
round(3.4456,2)

ceiling(4.1)
ceiling(4.67)
floor(4.3)
floor(4.6)
floor(3.933)

trunc(4.6)
trunc(4.233)
trunc(4.96936)

signif(123.4567,4)
signif(123.4567,5)
signif(123.4537,5)
rank(c(100,50,75)) 
order(c(100,50,76))
# 1,2,3
#find the small value: 50
#next smallest value : 76
#next : 100
#output
#2,3,1
?order

which.min(c(100,50,76)) #return index not the value
which.max(c(100,50,76)) #return index not the value
min(c(100,50,76))
max(c(100,50,76))

#NA
x <- c(100,50,76,NA)
sum(x)
sum(x,na.rm = TRUE)

mean(x,na.rm = TRUE)
median(x,na.rm=TRUE)

range(x,na.rm = TRUE) #gives you min and max

sd(x,na.rm=TRUE)
var(x,na.rm = TRUE)
quantile(x,na.rm = TRUE)
IQR(x,na.rm = TRUE)

#cummulative functions
x <- c(1,2,3,4,5)
cumsum(x)
cumprod(x)
cummin(x)
#looks 1st element 1: min 1
#looks 2st element 1 and 2. min 1
#looks 3st element 1 2 and 3. min 1
#looks 3st element 1 2 3 and 4. min 1
#looks 3st element 1 2 3 4 5. min 1
cummax(x)
#looks 1st element 1: min 1
#looks 2st element 1 and 2. min 2
#looks 3st element 1 2 and 3. min 3
#looks 3st element 1 2 3 and 4. min 4
#looks 3st element 1 2 3 4 5. min 5

#formatting 
#format()
format(c(10,34.2,32,4.2),nsmall=2)
format(12.345678,digits = 4)
format(125000000,big.mark = ",",scientific = FALSE)
Sys.time()
# %Y-->Year with century (4 digits)-->2026
# %y-->Year without century (2 digits)-->26
# %B-->Full month name-->January
# %b-->Abbreviated month name-->Jan
# %m-->Month as a number (01-12)-->	01
# %d-->Day of the month (01-31)-->	27
# %A-->Full weekday name-->Tuesday
# %a-->Abbreviated weekday name-->	Tue
format(Sys.time(),"%B %d %Y")
format(Sys.time(),"%Y-%m-%dT%H:%M:%S")

#formatc() -- same as format() brother, sister, its faster
formatC(c(1,23,445,0),width=3,format="d",flag="0")
formatC(1.2, digits = 3, format = "f") #Precise Decimal Control
formatC(1234.5678, format="f", digits=2) #formatC() – Control Formatting
formatC(c(-1.5, 2.3, 0), format = "f", digits = 1, flag = "+") #Forcing a Positive Sign
formatC(123456, format = "e", digits = 2) #Scientific Notation with Specific Precision

#modular arthmeatic
10 %% 3 #reminder
10 %/% 3 #quotient

sample(1:10)
sample(1:10,3)
sample(1:10,5,replace = T)
sample(1:10,5,replace = F)

#testing
is.numeric(10)
is.integer(10L)

any(c(1,2,4)>2)