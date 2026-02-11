#special characters

x <- c("cat", "bat", "rat", "drat", "cat123", "123cat", "c.at")
x
#.(dot) - > any single character
grep("c.t",x,value = TRUE)
library(tidyverse)
str_subset(pattern = "c.t",string = x)
#^- start of the string
grep("^c",x,value = TRUE)
#$- end of the string
grep("t$",x,value = TRUE)
#*- zero or more occurrence of the previous character which contains else in the string or followed.
grep("ca*",x,value = TRUE)
grep("ca*",c("c#a","cda","ceee","candy","Carol","rccc","ra","ganced","chaitanya"),value = TRUE)
str_subset(pattern = "ca*",string = c("c#a","cda","ceee","candy","Carol","rccc","ra","ganced","chaitanya"))
##c followed a* * zero or more of a of that string
## c, a _> YES
## c --> YES
##  YES
##ra --> no c  --> NO
## contain C -, a --> YES
## contain c --> YES
grep("a*",c("c#a","ceee","rccc","ra","ganced","chaitanya"),value = TRUE)
#+ --> one or more occurences
grep("ca+",c("c#a","cda","ceee","candy","Carol","rccc","ra","ganced","chaitanya"),value = TRUE)
str_subset(pattern = "ca+",string = c("c#a","cda","ceee","candy","Carol","rccc","ra","ganced","chaitanya"))
#? - zero or one occurrence min(0-1) ---> aaaaa
grep("ca?",x,value = TRUE)
grep("ca?",c("c#a","cda","ceee","candy","Carol","rccc","ra","gnaced","chaitanya","aadsaaabx"),value = TRUE)
#YES,YES,?,YES,NO,YES,NO,YES,? #web scrapping.



