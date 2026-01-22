
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


##2026021 - class
#=================
#agenda
#input
#output
#control flow(advance)
#loop


#turning of the code suggestion or recommendations
#file -> perferences --> settings --> editor.inlineSuggest.enabled=false
#github.copilot.enable ==> * =false
#chat.disableAIFeatures=false # for disableed the chat window


#