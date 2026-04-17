#String

x<-"ganesh"
class(x)
x<-'ganesh'
class(x)
#check if this string
is.character(x)
length(x) #used for vector
nchar(x)

a <- 32423423
class(a)
#convert to a string
a
b<-as.character(a)
class(b)

#empty string vs NA

x<- c("",NA,"R")
class(x)

#create an empty character
y<-character(2)
y
y[1] <- "ga"
y
y[1:3] <- "ga"
y

a <- "learn the R programming langauage"
a
a <- "learn the R's programming langauage" # add ' 
a
a <- 'learn the R "s" programming langauage'
a
#a <- 'learn the R 'programming langauage'
print(a)

#string formatting
company="Novo nordisk"
exp = '8'
name="ganesh"

#myself ganesh working in novo nordisk for past 8 years"
#myself <name> working in <company> for past <exp> years"
#print("myself",company)
print(company)
cat("myself ",name,"working in ",company," for past ",exp," years")
paste("myself ",name,"working in ",company," for past ",exp," years")

#cat
cat("hello world")
cat("hello\nworld")

cat("Process completed successfully\n")
##Writing Directly to a File
cat("Log Entry: Script started successfully1", file = "log.txt", append = TRUE)
##Building Custom "User-Facing" Messages
check_status <- function(db_name) {
  cat("Connecting to database:", db_name, "...\n")
  cat("Status: [CONNECTED]\n")
  cat("User: Admin")
}
check_status("OC")

check_status("Production_Server")
##Monitoring Long-Running Loops (Progress Logs)
for (i in 1:5) {
  # ... doing heavy data work ...
  Sys.sleep(1) 
  cat("Successfully processed iteration", i, "at", as.character(Sys.time()), "\n")
}

#paste()

paste("Hello","R")
paste("2026","04","14",sep = "-")

#vector
ch <- c("A","B","C")
paste("items",ch)

table_name <- "inventory_2023"
min_stock <- 50
query <- paste("SELECT * FROM", table_name, "WHERE stock_level <", min_stock)
query

#paste0()
#same as paste but without space separ
paste0()

file_id <- 10
paste0("report_", file_id, ".csv")
ids <- 1:3
paste0("ID_", ids)

#debugging purose ->print
#user message /logs --> cat()
#joining test --> paste()
#IDs/fil_name --> paste0()
#More professional formatting -> sprintf()

#sprintf()

paste("Score: ",9.45678)
#Score: 
sprintf("Score: %.2f ",9.45678)

sprintf("form_string",value1,value2)
#Most Important Format Specifiers
#Specifier-->Meaning-->	Example
##most frequenlty used.
#%s-->String-->name
#%d or %i-->Integer-->10
#%f-->Decimal (float)-->3.14

##formatting & precssion specifer
#%.nf(Precision)--> %.2f - 2 decimal places-->3.14
#%e-->Scientific notation-->1.23e+03
#%g --> automatically choise either %f or %e.. #six digits by default #%% --> literals

##paddig and alignment
#%5d(Width)-->pads with spaces
#%05d(padding)-->Pad with zeros
#%-10s(left align)
#%10s(right align)

time<-"10:30 AM"
users <- 332
sprintf("[%s] Active users: %d",time,users)

#String formatting
sprintf("Hello %s", "Ganesh")
#Integer formatting
sprintf("Total items: %d", 25)
#Decimal control
sprintf("%f", 0.725896956) #by default, it prints six decimals
sprintf("%.3f", 0.725896956) #to print 3 decimals only
sprintf("%.f", 0.725896956) #round the number (print no decimals)
sprintf("%+.3f", 0.725896956) #print the + sign (but the first 3 decimals only)
sprintf("Accuracy: %.2f", 98.456)
sprintf("Accuracy: %.2f%%", 98.456) #ti add percentage sign
#Multiple Values in One String
name <- "Ravi"
score <- 87.345
sprintf("Student %s scored %.1f marks", name, score)
sprintf("%e", 82.235691) #%e and %E print the number in exponential format
sprintf("%E", 82.235691)
sprintf("%g", 82.235691) #%g prints six digits by default
sprintf("%.4g", 82.235691) #print the first 4 digits
sprintf("%.4s", "Philadelphia") #%s prints the desired number of characters in a string

#padding and alignment
sprintf("%5d",82) #blank padding.. width
sprintf("%05d",82) #leading Zero padding
sprintf("%-10s","Gan") #right align
sprintf("%10s","Gan")  #left align




