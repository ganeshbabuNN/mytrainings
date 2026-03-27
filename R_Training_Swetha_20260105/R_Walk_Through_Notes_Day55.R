library(tidyverse)
library(nycflights13) 

flights
view(flights)
flights <- flights #not valid
#load the data
data("flights")
data("airlines")
data("airports")
data("weather")
data("planes")


#assignment 
#list of all the desitination and categorize in their respective religion
flights |> distinct(dest) |> pull()

flights |> 
  select(origin,dest) |> 
  mutate(region = case_when(
    dest %in% c("BOS","BUF","ROC") ~ "Northeast",
    TRUE ~ "Other"
  ))

flights %>% distinct(dest)

airport_regions <- tribble(
  ~Airport_Code, ~City, ~State_Territory, ~Region,
  "ABQ", "Albuquerque", "New Mexico", "West",
  "ACK", "Nantucket", "Massachusetts", "Northeast",
  "ALB", "Albany", "New York", "Northeast",
  
  "ANC", "Anchorage", "Alaska", "West",
  
  "ATL", "Atlanta", "Georgia", "South",
  
  "AUS", "Austin", "Texas", "South",
  
  "AVL", "Asheville", "North Carolina", "South",
  
  "BDL", "Hartford", "Connecticut", "Northeast",
  
  "BGR", "Bangor", "Maine", "Northeast",
  
  "BHM", "Birmingham", "Alabama", "South",
  
  "BNA", "Nashville", "Tennessee", "South",
  
  "BOS", "Boston", "Massachusetts", "Northeast",
  
  "BQN", "Aguadilla", "Puerto Rico", "Caribbean (US Territory)",
  
  "BTV", "Burlington", "Vermont", "Northeast",
  
  "BUF", "Buffalo", "New York", "Northeast",
  
  "BUR", "Burbank", "California", "West",
  
  "BWI", "Baltimore", "Maryland", "South",
  
  "BZN", "Bozeman", "Montana", "West",
  
  "CAE", "Columbia", "South Carolina", "South",
  
  "CAK", "Akron/Canton", "Ohio", "Midwest",
  
  "CHO", "Charlottesville", "Virginia", "South",
  
  "CHS", "Charleston", "South Carolina", "South",
  
  "CLE", "Cleveland", "Ohio", "Midwest",
  
  "CLT", "Charlotte", "North Carolina", "South",
  
  "CMH", "Columbus", "Ohio", "Midwest",
  
  "CRW", "Charleston", "West Virginia", "South",
  
  "CVG", "Cincinnati", "Ohio/Kentucky", "Midwest/South",
  
  "DAY", "Dayton", "Ohio", "Midwest",
  
  "DCA", "Arlington (Washington DC)", "Virginia", "South",
  
  "DEN", "Denver", "Colorado", "West",
  
  "DFW", "Dallas/Fort Worth", "Texas", "South",
  
  "DSM", "Des Moines", "Iowa", "Midwest",
  
  "DTW", "Detroit", "Michigan", "Midwest",
  
  "EGE", "Vail/Eagle", "Colorado", "West",
  
  "EYW", "Key West", "Florida", "South",
  
  "FLL", "Fort Lauderdale", "Florida", "South",
  
  "GRR", "Grand Rapids", "Michigan", "Midwest",
  
  "GSO", "Greensboro", "North Carolina", "South",
  
  "GSP", "Greenville/Spartanburg", "South Carolina", "South",
  
  "HDN", "Hayden/Steamboat Springs", "Colorado", "West",
  
  "HNL", "Honolulu", "Hawaii", "West",
  
  "HOU", "Houston (Hobby)", "Texas", "South",
  
  "IAD", "Dulles (Washington DC)", "Virginia", "South",
  
  "IAH", "Houston (Intercontinental)", "Texas", "South",
  
  "ILM", "Wilmington", "North Carolina", "South",
  
  "IND", "Indianapolis", "Indiana", "Midwest",
  
  "JAC", "Jackson Hole", "Wyoming", "West",
  
  "JAX", "Jacksonville", "Florida", "South",
  
  "LAS", "Las Vegas", "Nevada", "West",
  
  "LAX", "Los Angeles", "California", "West",
  
  "LEX", "Lexington", "Kentucky", "South",
  
  "LGA", "New York (LaGuardia)", "New York", "Northeast",
  
  "LGB", "Long Beach", "California", "West",
  
  "MCI", "Kansas City", "Missouri", "Midwest",
  
  "MCO", "Orlando", "Florida", "South",
  
  "MDW", "Chicago (Midway)", "Illinois", "Midwest",
  
  "MEM", "Memphis", "Tennessee", "South",
  
  "MHT", "Manchester", "New Hampshire", "Northeast",
  
  "MIA", "Miami", "Florida", "South",
  
  "MKE", "Milwaukee", "Wisconsin", "Midwest",
  
  "MSN", "Madison", "Wisconsin", "Midwest",
  
  "MSP", "Minneapolis/St. Paul", "Minnesota", "Midwest",
  
  "MSY", "New Orleans", "Louisiana", "South",
  
  "MTJ", "Montrose", "Colorado", "West",
  
  "MVY", "Martha's Vineyard", "Massachusetts", "Northeast",
  
  "MYR", "Myrtle Beach", "South Carolina", "South",
  
  "OAK", "Oakland", "California", "West",
  
  "OKC", "Oklahoma City", "Oklahoma", "South",
  
  "OMA", "Omaha", "Nebraska", "Midwest",
  
  "ORD", "Chicago (O'Hare)", "Illinois", "Midwest",
  
  "ORF", "Norfolk", "Virginia", "South",
  
  "PBI", "West Palm Beach", "Florida", "South",
  
  "PDX", "Portland", "Oregon", "West",
  
  "PHL", "Philadelphia", "Pennsylvania", "Northeast",
  
  "PHX", "Phoenix", "Arizona", "West",
  
  "PIT", "Pittsburgh", "Pennsylvania", "Northeast",
  
  "PSE", "Ponce", "Puerto Rico", "Caribbean (US Territory)",
  
  "PSP", "Palm Springs", "California", "West",
  
  "PVD", "Providence", "Rhode Island", "Northeast",
  
  "PWM", "Portland", "Maine", "Northeast",
  
  "RDU", "Raleigh/Durham", "North Carolina", "South",
  
  "RIC", "Richmond", "Virginia", "South",
  
  "ROC", "Rochester", "New York", "Northeast",
  
  "RSW", "Fort Myers", "Florida", "South",
  
  "SAN", "San Diego", "California", "West",
  
  "SAT", "San Antonio", "Texas", "South",
  
  "SAV", "Savannah", "Georgia", "South",
  
  "SBN", "South Bend", "Indiana", "Midwest",
  
  "SDF", "Louisville", "Kentucky", "South",
  
  "SEA", "Seattle", "Washington", "West",
  
  "SFO", "San Francisco", "California", "West",
  
  "SJC", "San Jose", "California", "West",
  
  "SJU", "San Juan", "Puerto Rico", "Caribbean (US Territory)",
  
  "SLC", "Salt Lake City", "Utah", "West",
  
  "SMF", "Sacramento", "California", "West",
  
  "SNA", "Santa Ana/Orange County", "California", "West",
  
  "SRQ", "Sarasota/Bradenton", "Florida", "South",
  
  "STL", "St. Louis", "Missouri", "Midwest",
  
  "STT", "St. Thomas", "US Virgin Islands", "Caribbean (US Territory)",
  
  "SYR", "Syracuse", "New York", "Northeast",
  
  "TPA", "Tampa", "Florida", "South",
  
  "TUL", "Tulsa", "Oklahoma", "South",
  
  "TVC", "Traverse City", "Michigan", "Midwest",
  
  "TYS", "Knoxville", "Tennessee", "South",
  
  "XNA", "Bentonville/Fayetteville", "Arkansas", "South"
  
)

region <- airport_regions %>% select(Airport_Code, Region) %>% deframe
?deframe
class(region)

flights %>% mutate(
  zone=region[dest]
) |> select(dest,zone)


  
f<-flights |> 
  mutate(State = case_when(
    dest %in% c("EWR","LGA","JFK") ~ "New Jersy",
    dest %in% c("ORD") ~ "Illinois",
    TRUE ~ "Unknown"
  )) |> select(origin, State) |> distinct(State)
f
#dd
a<-flights |> select(carrier,flight,dest) |> 
  mutate(category = case_when(
    dest %in% c("BQN","SJU","PSE") ~ "Puerto Rico (US Territory)" ,
    dest == "STT" ~ "US Virgin Islands (US Territory)",
    TRUE ~ "United States (Mainland)" 
  ),
  religion = case_when(
    category == "United States (Mainland)" ~ "Christianity (majority, diverse)",
    category == "US Virgin Islands (US Territory)" ~ "Christianity (Protestant majority)",
    category ==  "Puerto Rico (US Territory)" ~ "Christianity (Roman Catholic majority)"
  ))
a
View(a)

#filtering using near()
2.0002 == 2
2.0002 == 2
x <- sqrt(2)^2
x# 2.00000000000000000000000000000000000000004
x==2
near(x,2)

#0.50000000022
lb |>  filter(LBORRES ==0.5)
lb |>  filter(near(LBORRES,0.5))

near(6.0000000000000067,6) #valid and acept
near(6.000000067,6) #not valid and coz of 6e8 

#only 39 temp
weather |> select(origin,temp,dewp) |> filter(near(dewp,28))

#
nrow(flights)
flights |> 
  group_by(dest) |> 
  mutate(c_g =nrow(cur_data())) |> select(dest,c_g)

#cur_data() = legacy way
flights |> 
  group_by(dest) |> 
  filter(nrow(cur_data())<=2)

#pick()
flights |> 
  group_by(dest) |> 
  filter(nrow(pick(everything()))<=2) |> 
  select(dest,year,month,day,carrier,flight) 


flights |> 
  group_by(dest) |>
  mutate(all_num = sum(pick(c(arr_delay,dep_delay)),na.rm=TRUE)) |> 
  select(dest,all_num)

#pro -way
flights |> 
  group_by(dest) |> 
  filter(n() <=2) |> 
  select(dest,year,month,day,carrier,flight)

#filtering string conditions
## == exact match
##regsex === partial match
"SEA"=="SEA"
flights |> 
  filter(dest=='SEA') |> select(carrier,dest,origin)

flights |> 
  filter(dest %in% 'SEA') |> select(carrier,dest,origin) 

"SEA"=="SEA"
flights |> 
  filter(str_detect(dest,'OR')) |> distinct(dest) #partial match

#positional filtering
flights |> 
  filter(str_starts(dest,'A')) |> distinct(dest)
flights |> 
  filter(str_ends(dest,'A')) |> distinct(dest)

#multiple string positions
flights |> 
  filter(dest %in% c("SEA","SFO","PDX") ) |> distinct(dest) #extact positions
flights |> 
  filter(str_detect(dest,"SEA|SFO|PDX")) |> distinct(dest) 

#hanlde case senstivitiy
flights |> 
  filter(str_to_lower(dest)=="sea")
flights |> 
  filter(tolower(dest)=="sea")
?str_to_lower
?tolower
flights |> 
  filter(str_detect(dest,regex("sea",ignore_case = TRUE)))

#exclude the pattern
#negative
flights |> 
  filter(!str_detect(dest,"SEA|SFO|PDX")) |> distinct(dest)

#SAS
#%MACRO  -- function(), s3,s4
#PROC SORT -- arrange()
#proc means -- summarise()
#data step--- tibble,tribble, dataframe,mutate(),filter()
