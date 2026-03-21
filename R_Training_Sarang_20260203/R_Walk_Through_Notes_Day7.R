#data types
#numeric/double
#integer
#logical/boolean
#character
#complex
#raw

#special types
#NULL,NA,NaN,Inf/-inf

#advance 
#dates
#in sas -01/01/1960
#in R -01/01/1970

dt <- "2026-01-01"
dt<- as.Date("2026-01-01")
class(dt)

dt
dt<- as.Date("01-01-2026")
class(dt)
dt
dt<- as.Date("03-01-2026")
class(dt)
dt
dt<- as.Date("03/01/2026")
class(dt)
dt
#YYYY-MM-DD
dt<- as.Date("2026-01-01 10:30:33")#time is not possible.
dt
class(dt)

#base
#POSIXct /POSIXlt 

#POSIXct 
#portable operating system interface (POST) ct=calender time(ct)/local time(lt)
dt<- as.POSIXct("2026-01-01 10:30:33")
dt
class(dt)

#POSIXlt
dt1<- as.POSIXlt("2026-04-01 10:30:33")
class(dt1) 

#difference 
#POSIXct is faster
#POSIXlt is heavy
#Extracting the dates
dt1
#time part
dt1$sec
dt1$min
dt1$hour
#data part
dt1$year+1900 #year since 1900
dt1$mon+1 #month(0-11) since months start where jan=0
dt1$mday
#metadata
dt1$zone
dt1$gmtoff

#factors
sex <- c("male","female","trans",'female',"trans")
sex
ordered(sex) #categorical data

#data calculations
dt<- as.Date("2026-01-01")
class(dt)
#week
next_week <- dt+7
next_week
#month
#next month
next_month <- seq(dt,by="month",length.out=2)[2]
next_month
#next Month
next_month=seq(dt,by="year",length.out=2)[2]
class(next_month)
#next next year
seq(dt,by="year",length.out=3)[3]
#next month
dt<- as.POSIXlt("2026-01-01 10:30:33")
dt_mon <- dt$mon+1
as.Date(dt_mon)
#formatting 
?strptime
format(dt,"%Y") #4-digit
format(dt,"%y") # 2-digit year
format(dt,"%m")# month(1-12)
format(dt,"%b") #abbreviated month
format(dt,"%B") #full month name
format(dt,"%A") #Weekname
format(dt,"%a") #short week 
format(dt,"%d") #day
format(dt,"%M") #minutes
format(dt,"%S") #Seconds
format(dt,"%H") #Hour

library(lubridate)
Sys.time()
a<- Sys.time()
now()
a
#date
year(a)
month(a)
mday(a)
wday(a) 
#time part
hour(a) 
minute(a)
second(a)
#impute
a+months(1) #adding month
a+months(2) #adding month
a+years(1) #adding year
a+days(10) #adding 10 days

#formatting
mdy("03-01-2026")
ydm("2026-15-03")
dmy("31-03/2026")
dmy_h("31-03/2026 10")

#handling partial dates
raw_dates <- c("2026-03-21","2026-05","2026")
#turncated 2 whichmonth and day
parse_date <- parse_date_time(raw_dates,order="ymd",truncated = 2)

#string
#https://lubridate.tidyverse.org/reference/index.html
a<- 'sarang'
a<- "sarang"
class(a)
a<- "My name is sarang  "
a
class(a)

library(rDataRecon)
base_df <- data.frame(
  id   = 1:4,
  age  = c(25L, 30L, 35L, 40L),
  name = c("Alice", "Bob", "Carol", "Dave"),
  stringsAsFactors = FALSE
)
comp_df <- data.frame(
  id   = 1:4,
  age  = c(25, 31, 35, "40"),
  name = c("Alice", "bob", "Carol", "Dave"),
  weight=c(32,34,23,45),
  stringsAsFactors = FALSE
)
str(comp_df)
base_df
comp_df

# Basic comparison with a key variable
result <- recon(base_df, comp_df, id = "id")
