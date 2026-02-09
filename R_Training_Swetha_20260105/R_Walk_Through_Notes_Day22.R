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
str_extract("ganesh is sleeping",".l")
str_detect("ganesh is sleeping","^sl")
str_detect("ganesh is sleeping","ng$")
str_detect("AE.sas4dat",".sas4dat$")
str_extract("apple pep","[piel]") #first occurence of the word
str_extract_all("apple pep","[piel]")#extract all the occurence of the word

#quantifiers
#Quantifiers (How many)
#These symbols follow a character to tell R how many times it should appear.
#? : 0 or 1 time (Optional)
#* : 0 or more times
#+ : 1 or more times
#{n} : Exactly n times
#{n,} : n or more times

str_extract("Models mode","Models?")
str_extract_all("Models mode Model","Model?")
str_extract_all("Models model","Mode?")
str_extract("baaaa! baaaaa","ba*") #its matches "b" followed by any mount of "a"
str_extract_all("baaaa! baaaaa","ba*") #its matches "b" followed by any mount of "a"
str_extract("baaaa! baaaaa","aa*") #its matches "a" followed by any mount of "a"
str_extract_all("baaaa! baaaaa","b*")  ## TBD need to understand on last blank
nchar("baaaa! baaaaa")
str_extract("Room 402","\\d+")
str_extract_all("Room 402 Room 503","\\d+")
str_extract("FY2024 16 02","\\d{4}")
str_extract_all("FY2024 16 0226","\\d{4}")
str_extract("Hello world","\\w{5,}")
str_extract("Hello world abcdef","\\w{6,}")
str_extract("Hello world","\\w{7,}")
str_extract("Hello world","\\w{3,}")
str_extract("ID:USA","[A-Z]{2,3}") 
#[A-Z].. it matches from A - Z
#[2,3], qunantifer .. min 2 time or max 3 times
#scan I ... its uppercase.. then scan  D... ... it return ID
str_extract_all("ID:USAID:","[A-Z]{2,3}") #
# ID ,
#ignore :
#US.. it takes
#AI.. it takes
#ID


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


str_extract_all("RAW:AGENT Ajit","[A-Z]{2,3}")
#RAW
#AGE
#NT


#character class
#Character Classes (The Shortcuts)
#In R, these are the most common shortcuts for data cleaning:
#\\d : Digit (0-9)
#\\D : Non-digit
#\\w : Word character (letters, numbers, and underscores)
#\\W : Non-word character (symbols, spaces, etc.)
#\\s : Whitespace (spaces, tabs, newlines)
#\\S : Non-whitespace


str_extract("part 99, part 20","\\d")
str_extract_all("part 99, part 20","\\d")
str_extract_all("part 99, part 20","\\D+")
str_extract_all("part 99, part 20!","\\w")
str_extract_all("part 99, part 20!","\\w+")
str_extract_all("part 99, part 20!","\\W")
str_extract_all("part 99, part 20!","\\s")
str_extract_all("part 99, part 20!","\\S+")

data <- c("2023-10-10","25OCT2025","2023/26/02","2026-06-03")
str_extract(data,"^\\d{4}-\\d{2}-\\d{2}$")

lab_raw <- "150 MG"
str_extract(lab_raw,"[A-Z]+$")



# Raw Data
raw_clinical <- data.frame(
  USUBJID = c("SITE01-001", "SITE01-002", "SITE02-005"),
  RAW_LAB = c("  GLUCOSE (mg/dL) ", "HEMOGLOBIN (g/dL)", "glucose (MG/DL)"),
  RAW_MH  = c("DIABETES TYPE II", "hypertension", "Asthma - mild")
)
raw_clinical

#1. Standardization (str_to_upper, str_squish)
#Goal: Create LBTEST and LBUNIT. SDTM requires these to be standardized (usually uppercase) and free of leading/trailing spaces.
raw_clinical %>%
  mutate(
    LBTEST = str_to_upper(str_squish(str_extract(RAW_LAB, "^[A-Za-z]+"))),
    LBUNIT = str_extract(RAW_LAB, "(?<=\\().+?(?=\\))") # Extract text between ()
  ) # Clean and standardize the Lab Test name
str_to_upper()#: Ensures "glucose" becomes "GLUCOSE".
str_squish()#: Removes that accidental double-space in the first row.

# GLUCOSE (mg/dL)  - (?<=\\().+?(?=\\))
# it ingores space
# its start.
library(tidyverse)
a<- "  ganesh  Babu "
paste(a)
paste0(a)
str_squish(a)

str_squish("Kidney   injury   acute")
str_remove_all("Kidney   injury   acute","\\s")
