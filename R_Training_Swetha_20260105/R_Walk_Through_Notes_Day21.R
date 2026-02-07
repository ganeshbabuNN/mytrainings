
substr("ganesh babu g",4,7)
substring("ganesh babu g",4,7)
typeof(letters)
letters[4:6]
letters[c(5,7,9)]


#Escape character or escape sequence character
cat("My name is ganesh babu . WOrk experience 19+ years of experiences and looking for job")
cat('My name is ganesh babu . WOrk experience\'s 19+ years of experiences and looking for job')
cat("My name is ganesh babu . WOrk experience\"s 19+ years of experiences and looking for job")
cat("My name is ganesh babu . \"WOrk experience 19+ years of experiences\" and looking for job")
#new line
cat("My name is ganesh babu .\nWOrk experience 19+ years of experiences and \nlooking for job")
#new tab .. double space
cat("jyothikishna\tHitesh\tGanesh\tSwati\t")
#backspace
cat("        \b\b\b\b\b\b\bjyothikrishna")
#carriage return
cat("Loading....0%\r")
#\\
cat("file locations is C:\ganesh\star\vac") #this default for all windws but not in programming lang
cat("file locations is C:\\ganesh\\star\\vac") #this for prog languge for windows
cat("file locations is C:/ganesh/star/vac") # this is for linux file system


#\' - single quote.. escape the ' in the string
#\" - double quote.. escape the " in the string
#\n- start the new line from that char
#\t: tab cha
#\b : backspace
#\r: carriage return
#\\: esclple single backlash

#String regular expression
data <- "Order 1 cost $15,Order 2 costs $200, hitesh need to give jyothi $1000"
regmatches(data,gregexpr("\\$[0-9]+",data))


#1. The Building Blocks (Special Characters)
#These define where to look or which specific characters to allow.
#Character->Meaning
#.  ->  Wildcard: Any single character
#^  ->  Start: The beginning of the string
#$  ->The end of the string
#[ ] -> Any character inside the brackets
#[^ ] -> Negative Set: Any character NOT inside
#`.` -> OR: Match this OR that
library(tidyverse)
str_extract("ganesh is sleeping",".s")
str_detect("ganesh is sleeping","^sl")
str_detect("ganesh is sleeping","ng$")
str_detect("AE.sas4dat",".sas4dat$")
str_extract("apple pep","[aeious]") #first occurence of the word
str_extract_all("apple pep","[pl]")#extract all the occurence of the word

#quantifiers
#Quantifiers (How many)
#These symbols follow a character to tell R how many times it should appear.
#? : 0 or 1 time (Optional)
#* : 0 or more times
#+ : 1 or more times
#{n} : Exactly n times
#{n,} : n or more times

str_extract("Models mode","Models?")
str_extract_all("Models mode","Models?")
str_extract_all("Models model","Mode?")
str_extract("baaaa! baaaaa","ba*") 
str_extract("baaaa! baaaaa","ba*") #its matches "b" followed by any mount of "a"
str_extract("baaaa! baaaaa","aa*") #its matches "a" followed by any mount of "a"
str_extract_all("baaaa! baaaaa","b*")  ## TBD need to understand on last blank
nchar("baaaa! baaaaa")
str_extract("Room 402","\\d+")
str_extract_all("Room 402 Room 503","\\d+")
str_extract("FY2024 16 02","\\d{4}")
str_extract_all("FY2024 16 0226","\\d{4}")
str_extract("Hello world","\\w{5,}")
str_extract("Hello world","\\w{4,}")
str_extract("Hello world","\\w{7,}")
str_extract("Hello world","\\w{3,}")
str_extract("ID:USA","[A-Z]{2,3}") #TBD
str_extract_all("ID:USAID:","[A-Z]{2,3}") #
#Stop 1: "ID" The engine sees I, then D. That's 2 letters. It checks the next character, which is a :, so it can't take any more. Since 2 is within our "2 to 3" range, it bags "ID". Current Bag: ["ID"]
#Stop 2: ": " The engine skips the colon and the space because they aren't uppercase letters.
#Stop 3: "USAID" This is where it gets interesting!The engine sees U, then S, then A.
#It now has 3 letters.
#The rule says "no more than 3."
#Even though there is an I and a D right next to it, the engine must stop because it hit the limit of 3.
#It bags "USA". Current Bag: ["ID", "USA"]
#Stop 4: The leftovers "ID" The engine starts searching again immediately after the "A". It sees I, then D. That's 2 letters.
#It checks the next character, which is a :.
#Since 2 is within our "2 to 3" range, it bags "ID". Current Bag: ["ID", "USA", "ID"]
