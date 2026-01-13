#constant

a <- 10
PI <-3.142

type(6L)

#logical

log <- TRUE
log_1 <- FALSE

is.logical(log)
is.logical(log_1)
typeof(log)
class(log)
cat(log,log_1)

#numeric
a <-232
is.numeric(a)
is.logical(a)
typeof(a)
class(a)
a <-3.33
typeof(a)
class(a)

#integer

b <-323L
is.integer(b)
typeof(b)
class(b)
b

#memory numeric(double) is 8 bytes, where integer stores 4 bytes
#1 byte = 8 bit. .... upto 256 
4*256

a<-3000000000L
#complex number
com<-3+2i
typeof(com)
class(com)


#raw
myraw <- charToRaw("R is a Super Programming language")
cat(myraw,"\n")
myraw
class(myraw)


#Default value of no and character
a = NA_character_
typeof(a)
b= NA_complex_
typeof(b)
c=NA_integer_
typeof(c)
d=NA_real_
typeof(d)
f=" "
typeof(f)

#precedence  double(integer--> real, complex) and character
