#sprintf

paste("Score:",9.45687)
sprintf("Score: %.2f",9.45687)

sprintf("freee  <specificer",value,value)

sprintf("Score: %.2f and %.2f",9.45687,c(3,2,34))

#Specifier-->Meaning-->	Example
#%s-->String-->name
#%d or %i-->Integer-->10
#%f-->Decimal (float)-->3.14
#%.2f-->2 decimal places-->3.14
#%05d-->Pad with zeros-->00012
#%e-->Scientific notation-->1.23e+03
#%E-->Upper case Scientific notation-->1.23e+03

paste0("Hello ","ganesh")
sprintf("Hello %s","ganesh")
sprintf("Money $%d",2500)
#decimal 
sprintf("Score: %f",1.2)
sprintf("Score: %.3f",1.2)
sprintf("Score: %.f",1.2) #it truncates
sprintf("Score: %+.f",1.2)
sprintf("Score: %-.f",-1.2) #w
sprintf("Score: +%.f",1.2)
sprintf("Score: $%.f",1.2) #if you want to put dollar as prefix
sprintf("Score: %.2f",1.2) #if you want to put % as suffix 
sprintf("Score: %.2f%%",1.2)
#integer
sprintf("Money $%d",2500)
sprintf("Money $%i",2500)
#string
name <-"gan"
score <- 89.36
sprintf("Student %s scored %.2f marks ",name,score)

sprintf("%e",82.235697)
sprintf("%E",82.235697)
sprintf("%g",82.235697) #six digits by default
sprintf("%.4g",82.235697)
sprintf("%s","ganeshbabu")
sprintf("%.5s","ganeshbabu") 

sprintf("%5d",82) #blank padding.. width
sprintf("%05d",82) #leading Zero padding
sprintf("%-10s","Gan") #right align
sprintf("%10s","Gan")  #left align

#accessing string elements
x <- "Learn R programming"
substr(x,8)
substr(x,8,12)
.Internal(substr(x,8,12))
view(substr(x,8,12))

x <- 10L
y <- 10
.Internal(inspect(x))
.Internal(typeof(x))
typeof(x)
typeof(y)
.Internal(typeof(y))
typeof


