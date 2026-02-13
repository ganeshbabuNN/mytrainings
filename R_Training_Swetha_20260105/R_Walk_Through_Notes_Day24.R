grep("ca*",c("c#a","ca","caaaa", "xa","aab"),value = TRUE)
#c.. its search first which is not optional but following quanifiers is optional
#but followed by a* which * is zero or more ;
grep("a*",c("c#a","ca","caaaa", "xa","aab","ykke"),value = TRUE)

grep("ca?",c("c#a","ca","caaaa", "xa","aab"),value = TRUE)
#c.. its search first which is not optional but following quantifiers is optional
grep("a?",c("c#a","ca","caaaa", "xa","aab"),value = TRUE)
grep("^a?$",c("c#a","ca","caaaa", "xa","aab"),value = TRUE)
grep("a$?",c("c#a","ca","caaaa", "xa","aab"),value = TRUE)  #this works but not the best practice

# difference between ?,* and + 
#like the product ID
code <- c("AB123","AB1234","AB","AB1","AB12345","AC123","ABCD123")
#bussine rules says , 
##the valid product 
##start with "AB"
##follow by at least on digit

grep("^AB[0-9]+$",code,value = TRUE)
#cannot use *
grep("^AB[0-9]*$",code,value = TRUE)
#cannot use ?
grep("^AB[0-9]?$",code,value = TRUE)

#example
usubjid <- c(
  "ABC123-001-0001", #valid
  "ABC123-01-0001",   #invalid site =2 digts
  "ABC123-001-001",   #invalid subj is 4 digits
  "ABC123-001-",       #invalid no subj
  "ABC123-001-00012",  #invalid subj 5 digit
  "ABC123-001",
  "AB1",
  "A",
  "1",
  "A1",
  "AB"
)

#business rules
#start with letters + numbers
#dash
#exactly 3 digits(site)
#dash
#eactly 4 digits(subject)

grep("^[A-Z0-9]+-[0-9]{3}-[0-9]{4}$",usubjid,value = TRUE)
grep("^[A-Z0-9]*-[0-9]*-[0-9]*$",usubjid,value = TRUE)
grep("^[A-Z0-9]?$",usubjid,value = TRUE)
#webscrapping 


