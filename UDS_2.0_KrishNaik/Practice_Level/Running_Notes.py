
https://www.notion.so/KNDataScience-2-0-2f1856e0e30d80e9a0f9c79ee348a213 - website 
Announcements : https://www.notion.so/1-Announcements-2f1856e0e30d802e8dbbf799ab79fced
AI roadmap : https://www.linkedin.com/posts/monal-s-871631140_ai-roadmap-2025-26-activity-7338257668832178178-fVPr
AI/DL work : https://www.linkedin.com/posts/monal-s-871631140_ai-deeplearning-hardwaretips-activity-7316000414255001601-ahCU


Mayak udemy:
https://www.udemy.com/course/complete-ai-automation-and-agentic-ai-bootcamp-with-n8n/ - do this first.
https://www.udemy.com/course/n8n-production-mastery-from-zero-to-agency-ready-in-30-days/  -- do this second.


#2026017 - class
#================
#agenda
#1) tools walkthrough
#2)environment steup
#3)notbool--> variable, datatype, operator-1
#4)script and notebook execution

#UV is a python management, proect management
#create a folder called C:\Users\ganes\Documents\Kriyababa\MyTraining\UDS_2.0\practice_live anylocations 
##practice_live
uv self update #upgrade via uv
pip install --upgrade uv #if you want to upgrade via pip

uv run python #running python via uv
#installating python using UV
uv python install 3.10
uv python install 3.11 
uv python install 3.12 # stable

#if you want to ping the default version of pythong
uv python pin 3.12  

#install vscode extension 
#"Python" -Python language support with extension access points for IntelliSense (Pylance), Debugging (Python Debugger), linting, formatting, refactoring, unit tests, and more.
# "Jupyter"-Jupyter notebook support, interactive programming and computing that supports Intellisense, debugging and more.
##create a file under venu .ipynb and rename as lectures folder
##select the kernal based on the pyvenu.cfg locatins
#c:/Users/ganes/AppData/Roaming/uv/python/cpython-3.12.12-windows-x86_64-none/python.exe -m pip install ipykernel -U --user --force-reinstall

#Create environment 
uv venv level1__venv #using environment with name suggest to suffix as _venv
level_1_venv\Scripts\activate  #activate the /env
level_1_venv\Scripts\deactivate  #deactivate if you want
python -m ensurepip --upgrade #The ensurepip module is a "fallback" built into Python itself. It doesn't need to be downloaded; it's there specifically to "ensure" that pip is installed in your current environment when it's missing
python -m pip install --upgrade pip #via directly by python
python -m pip install ipykernel
python -m pip install --upgrade ipykernel #if want to upgrade
python -m venv .venv ##python way if the path -TBE


#Type of operators
#There are different types of operators
#- arthematic operators : +,-,*,/,%
#- Relations operators : <,>,<=,>=,==
#- Assignment operator : = ,~=,-=,
#- logical operator : AND,OR,NOT
#- bitwise : &,|,^,~,<<,>>

##varibles
#========================
#install --> HDD/SSD
#Run --> RAM
#python --> RUN --> RAM
#when we run something it store in RAM
#variable enables storage


#operators are special symbols
#monal is using cyberpunk theme in this VSCODE


#Assignment1
#data_science--> day_1-->day_1.tx
#            --> day_2-->lectures--> day_2.ipynb
#            --> Notes -->notes.txt

#assignment -2
## revise all the code and concept
## do type casting from all combinations & understand which are comptiable


##2026018 - class
#=================
#python II
#String properties
#operator-II
#control flow
#control flow -II(advanced)
#non primitive data type.

"data science" --> type()-->function <class 'str'>
#builtin function
print()
id()
type()
int() float() str()

#class have some properties
#house -> door
#      -> windows
#      ->rooms
#      ->floor
# str --> strip(),istrip(), rstrip()

#method is property of something is called methods
#function it does some job.
#properties is concept and method is more like technical

#to remove white spaces from string we use below methods:
#lstrip()--> remove spaces from left side
#rstrip()--> remove spaces from right side
#strip()--> combinations of the above.

#operators()
#relational operator
#relation of two values and we use operators to check if it is true or false
12>3  #true
12 <3 #false
12 >=3 #true
12!=12 #false
3==3 # true
3>=3 #true
12==12 #
3<12

#Assignment operator
a+=2 --> a=a+2
a*=2 --> a=a*2
a%=2 --> a=a%2
a/=2 --> a=a/2

#logical operator
#TRUTH table
#AND 
1,0=0
0,1=0
0,0=0
1,1=1
#OR #only true when any one of them is true
1,0=1
0,1=1
0,0=0
1,1=1
#NOT
1=0
0=1

#XOR - only true when only one of them is true
1,0=1
0,1=1
0,0=0
1,1=0

#bitwise operator
# & I ^

#control flow
control the flow of the program.

#agenda: apple : 4
#if --> whether 4 apples or more are present in the store , will by apple
#then --> we will not buy apply.

#task : application /tool --> connect to a wifi
#1) if wifi_avail: connect
#2) if wifi_avail: connect 
#     else: 
#       tell user, no wifi available


#control flow -II
if <cond>:
    do something
else:
    do something
    
if <cond>:
   do something

if cond:
  do something
elif cond:
  do something:
..
..
elif cond:
    do something:
    
else:
    do something
    
elif cond:
    do something

#primitive data types of python --> primitive data Type
#int,float,str,bool
#non  primitive datat type:
#list,dict,tuple,set

#array --> [1,2,4,5] --> init
#in python we do not have array but we have list which is more powerful.


##2026021 - class
#=================
#agenda
#input
#output
#control flow(advance)
#loops


#turning of the code suggestion or recommendations
#file -> perferences --> settings --> editor.inlineSuggest.enabled=false
#github.copilot.enable ==> * =false
#chat.disableAIFeatures=false # for disableed the chat window


#control the flow of the program.


##2026024 - class
#=================
#agenda
# Python - 4
# discussion on resource
# non-primitive data types
# while loop
# function
# function arguments

#non primitive data types list
#list
#1)list when we append something to the list, it maintain the order to append.
#2)it accepts any datatype, even duplicates are allowed.
#3)Methods:
#-append(): add an element/value to the end
#-pop(): remove by index

#!. Problem statement : i want to know the last value of value.
#--> get the first value --> index 0
#--> get the last value --> index -1
#index --> -1 --> last element

#len functions.
#len() for string--> it count the characters
#len()--> list --> count total number of elements/value

#pop(index)
#append(value)--> it appends at the last index
#remove(value) --> remoe the first occurance 
#insert(value)--> insert the value based on specific index

#Dictionary(The key -value pari):
#1)to store data will labels(keys) instead of positions
#2)key must be (string/numbers/tuples) values can be anything.
#3)keys should always be unique,duplicated values are accepted.

#dictionary starts with curly brackets {}
#r ={"pritam":[dob,phone,city,pob,occuption],


#mutable and immutable 
#mutable -changes are allowed
#immutable -change are not allowed

#tuple (immutable):
#1)data that should not change(ID)
#2)prevents acidental cases where data can be overwritten.
#3)its accepts anything
#4)limitation: append(),pop(),non re-assignment after creations.

#Jelly fish theme New monal theme

#set(the Unique value)
#1)to handle uniquness
#2)Removes duplicates automatically
#3)Note:Unordered

##2026025 - class
#=================
#string methods
#while loop
#functions
#function arguments

#string methods  upper(),lower(),title(),captialize(),swapcase,split(),find(), + operator for continations,join().

#while loop :
#for loop  -- iterate over a sequence of elements ex  for i in [1,2,3],
#          --we already know how many iterations loops is going to take.
# while loop --repeat the block of code until certain condition is met.
#  while condition :--------
# condition --> understand python....
# while conditions 