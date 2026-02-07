#empty string
a <- c("",NA,"8",NA_character_)
a
class(a)
a==""
is.na(a)

#create empty string
y <- character(2)
y
length(y)
nchar(y)

y <- character(0)
y
length(y)
nchar(y)

y[1] <- "hitesh"
y

z <- "R"
length(z)
nchar(z)

z <- c("R","python","julia",1,TRUE)
z
length(z)
nchar(z)
is.character(z)
is.numeric(z)


x <- "learn the R programming language"
print(x)
x <- 'learn the R programming language'
print(x)
#x <- 'learn the R 'programming language'
print(x)
x <- "learn the R 'programming language"
print(x)
x <- 'learn the R "programming language'
print(x)


#string formating
#print("hi","how are you ")
company = "Visa"
experience = 6
name= "ganesh babu"
#print
#print("Myself",name,"working in ",company,"for past",experience," years")
#used for debuggin
#for itneractive results
#not for formatting

#cat function
cat("Myself",name,"working in ",company,"for past",experience," years")
#
cat("hello world")
cat(c("A","B"))
cat(c("A","B"),sep = "-")
cat("AB",sep = "-")
cat("A","B",sep = "-")
cat("hello\nworld")
cat("hello\t\tworld")

#paste function
paste("Myself",name,"working in ",company,"for past",experience," years")

paste(c("A","B"),sep = "-") #
paste("A","B","C")
paste("A","B","C",sep="-")

name<- c("A","B","C")
paste("item",name) #suffix on each element

f_name= "ganesh"
l_name= "babu"
paste("Full name :",f_name,l_name)

name
paste(name,collapse = "-")
paste(name,sep = "-")
paste("A","B","C",sep="-")
paste("A","B","C",collapse = "-")
paste("A","B","C",collapse = ", ")
paste("A","B","C",collapse = ",")

paste()
#pasteO functions
paste0("Myself",name,"working in ",company,"for past",experience," years")
paste0("Hello","R")

file_id <- 10
paste0("report_",file_id,".csv")
#paste("report_",file_id,".csv")
#cat("report_",file_id,".csv")

ids <- 1:3
ids
paste0("ID_",ids)
paste("ID_",ids) #its add spaces
cat("ID_",ids) #its suffixing all 

#stringf()

for(i in 1:10){
  cat("Processing batch",i,"...\n")
  #.... code to process data
}

years <- 2020:2024
filenames<- paste0("data_report_",years,".csv")
filenames

user_score <- 0.876
paste0("The final score is ",user_score * 100)
sprintf("The final score is %.3f%%",user_score * 100)
sp

