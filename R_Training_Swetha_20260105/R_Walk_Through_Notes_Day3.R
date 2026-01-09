view(available.packages())
view(installed.packages())
library(tidyverse)



install.packages("pacman")
library(pacman)

p_load("tidyverse","boot","bit","askpass")

.libPaths()
setwd("C:/Users/ganes/Documents/Kriyababa/GitHub/clinical_projects/221531/2_Programming/2.3_Programs")

a<-"ga"
str(a)

student <- data.frame(
  student_id = c(1,2),
  student_name=c("ganesh","veeresh"),
  student_age = c(46,35)
)

str(student)
summary(student)
glimpse(student)

data()
view(aids)
aids_1<-aids

#absolute path and relative path.

write_xlsx(aids,path = "C:/Users/ganes/Documents/Kriyababa/GitHub/clinical_projects/221531/2_Programming/ga.xlsx")

data()
search()
help("options")
options()
history(max.show = Inf)
savehistory(file="gan.txt")

save.image() # TBD

x <- "a"
ls()
rm(list=setdiff(ls(),"x"))
x<- "b"

"C:\ganesh\swetha"

"C:\\ganesh\\swetha"
"C:/ganesh/swetha"







