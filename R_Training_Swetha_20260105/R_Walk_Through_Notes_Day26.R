#string functions

library(stringr)
library(tidyverse)

x<- "ganesh"
a <- character(3)

is.character(x)
#Length & Basic Inspection

x <- c("R","python","julia")
length(x) # no of element in the vector
nchar(x) # number of words in the string

str_length(x)
str_length("ganeshsh")

#Combining & Formatting Strings
paste("ganesh","babu")
paste("AE",".sas4bat")
paste("ganesh","babu",sep="-")
paste("Ganesh babu")
paste0("Ganesh","babu")
paste0("AE",".sas4bat")

#concat and formatting
name<-"jyothi"
salary <- 280000
age <- 36
sprintf("Name: %s of age %d earing salary of: %.2f",name,age,salary)
#stringr
str_glue("name {name} of age {age} earning salary as {salary}")

#case conversion
toupper("ganesh")
tolower("GANESH")

##stringr
str_to_upper("ganesh")
str_to_lower("GANESH BABU")
str_to_title("GANESH BABU")
str_to_camel("GANESH BABU") #were the first letter of each word is capitalized, with no separation between words.
str_to_sentence("GANESH BABU")
str_to_snake("GANESH BABU")  #convert to lower case and put underscore between sentence
str_to_kebab("GANESH BABU") #convert to lower case and put dash between sentence

#trimming and padding
trimws("     ganesh   babu    ")
strrep("=",80)

##
x<-" trailingspace,   middle   , and leading space   "
str_trim(x)
str_trim(x,side = c("left"))
str_trim(x,side = c("both"))
#
str_squish(x)

#substring
substr("ganesh",3,5)
substring("DataScience",1,4)
substring("DataScience",5,11)

substring("DataScience",1,4)
substring("DataScience",5,11)
substring("DataScience",2,4)

substring("DataScience",c(1,5,2),c(4,11))
substring("DataScience",c(1,5),c(4,11)) # TBD
length(c(1,5,2))
length(c(4,11))
substring()


cart <- c("apple 5","banana 10","coco 14","cherry no-count")
str_extract(cart,"\\d")
str_extract_all(cart,"\\d+")
str_subset(cart,"\\d+")

#replace and remove text
x <- "2025-06-21"
sub("-","/",x) #replace first occurence
gsub("-","/",x) #replace all aoccurence


str_replace(x,"-","/")
str_replace_all(x,"-","/")
sex <-c("M","F")
str_replace_all(sex,c("M"="Male","F"="Female"))

price <- c("$40","$56","$30")
str_remove(price,"\\$")

# https://stringr.tidyverse.org/reference/index.html Refer the documenations.

#overview 
#create a string and inspect ? character(),is.character().
#length- length(),nchar()
#concat and formatting -- paste(),paste0(),sprintf()
#case conversion ---> toupper(),tolower(),stringr
#triming and padding --> trimws(), strrep
#substring --> substr(), substring()..?
#patter maching ---> grep()
#replace and remove text --> sub(), gsub(),str_replace()
#splitting --> strsplit()
#comparing --> identical,chartr()
#sorting -- sort()
#handling..--> is.na()