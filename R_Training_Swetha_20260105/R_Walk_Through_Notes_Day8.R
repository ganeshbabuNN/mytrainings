library(tibble)
NA+0
NA/2
NA*22
cat(NA+"gan")
paste(NA,"ganesh")
paste("b","ganesh")
x <- NA
typeof(x)
class(x)

#scalar , vector
x <- 0
x
x <- c(2,"a","",NULL,NA)
x
y <- c(2,3,4,5,5,NA,"",NULL)
y
z<- as.integer(y)#converting to integer of value "" will be NA
z
z <- c("a","b","c",NA,"") 
z
z<-as.character(z) #converting to character of value "" will be ""
z

#constants differnt of missing values
student_id <- NA_integer_
student_name <- NA_character_
student_age <- NA_integer_
student_height<-NA_real_

student <- tibble(student_id,student_name,student_age,student_height)
str(student)

c(3L,NA_integer_)
c(33,NA_integer_)
c("ganesh",NA_character_)

typeof(0+0i)
#example
x <- c(1,2,NA)
ifelse(x>1,"High",NA_character_)
ifelse(x>1,"High",NA)

c(NULL,NA)

is.na(NA_character_)
