#Accessing String elements
#=========================

x <- "Ganesh Babu G"
class(x)

#substr or substring 
substr(x,3,6)
substr(x,3)
substr(x,3:5)

#subsetting operator
letters
letters[1]
letters[3:6]
letters[c(3,5,7)]

x <- c("a","b","f")
x[2]
x[0]
x[-1] #it drops the first element and keep the rest
x[-2] #it drops the second element and keep the rest
x[-3] #it drops the third element and keep the rest
x[c(-1,-2)]
x[c(-1,-2)]

#Escape character
cat("He said,\"R is powerful.\"")
# output: "He said, "R is powerful."
#output:c:\users\documents\data.csv
cat("c:\"users\"documents\"data.csv") #invalid
cat(r"(c:\users\documents\data.csv)")

#\': single quote. You don’t need to escape single quote inside a double-quoted string, so we can also use "'" in the previous example.
#\": double quote. Similarly, double quotes can be used inside a single-quoted string, i.e. '"'.
#\n: Starts a new line.
#\t: tab character.
#\b: Backspace.
#\": Double quote.
#\r: Carriage return.
#\\: Single Backslash

#new line
cat("line 1,\nline 2")
#new tab
cat("var 1,\tvar 2,\tvar3")

cat("Error\b") #put hold
#carriage return
cat("helloworld\rGoodbye")
cat("c:\\users\\documents\\data.csv")
