x <- c("cat", "bat", "rat", "drat", "cat123", "123cat", "c.at","g*t")
#() ==grouping
grep("(cat|bat)",x,value=TRUE)
#YES,YES,NO,NO,YES,YES,NO
#[] -> Character class --> One from many=== match one character from the set
grep("[cr]at",x,value=TRUE)
#{} --> Quantifier --> Exact counts
grep("a{2}",c("a","aaa","aaaa","baabaaaa","aa"),value=TRUE)
grep("a{2}",c("a","aaa","aaaa","baabaaaa","aa","cacacacacbaa"),value=TRUE)
grep("a{2}",c("a","aaa","aaaa","baabaaaa","aa","cacacacacbaa"),value=FALSE)
#\\-> Escape --> Makes special characters literal
## 
x<-"a" # character literal ... which like constant
#a character literal is a fixed value(a constant) that represtents a single character or a sequence of character(string)
#written in your code
grep("\\.",x,value = TRUE)
grep("\\*",x,value = TRUE)
grep(".",x,value = TRUE)
#NO
cat("ganesh \n babu")
#[^] -> Negative Set: Any character NOT inside 
grep("[^0-9]",c("123","12a","456"),value=TRUE)
#\\d- digit, \\D-nondigit,\\w- word,\\W- non word ( symbols,spaces..etc),\s - white spaces (table, )\\S-non with spaces.. peral-style shortcuts
grep("\\d",x,value = TRUE,perl = TRUE)
grep("\\D",x,value = TRUE,perl = TRUE)
grep("\\w",x,value = TRUE,perl = TRUE)
grep("\\W",c("c.at","g*t","C123","C&a","C a"),value = TRUE,perl = TRUE)
grep("\\s",c(" ","  ","A","A ","123","!"),value = TRUE,perl = TRUE) 
grep("\\S",c(" ","  ","A","A ","123","!"),value = TRUE,perl = TRUE) 
#Common predefined character classes
##Class	Meaning
##[:digit:]	Digits (0–9)
##[:alpha:]	Letters
##[:alnum:]	Letters + digits
##[:lower:]	Lowercase
##[:upper:]	Uppercase
##[:space:]	Whitespace

x <- c(
  "abc",
  "ABC",
  "AbC123",
  "123",
  "abc_123",
  "hello world",
  "\tspace",
  "email@test.com"
)


