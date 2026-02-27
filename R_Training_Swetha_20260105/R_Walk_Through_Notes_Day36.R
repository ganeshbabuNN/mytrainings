#stopifnot()- sanity check
#validation tool
is.numeric(4)
is.numeric(-1)
x<- -1
try(stopifnot("This value of x is less then 0"=x>0))

#real time 
#having .csv in your directory
##This is how real production jobs are written.
#Script never crashes
#Errors logged
#Warnings handled
#Cleanup always runs

process_file <- function(file) {
  tryCatch(
    {
      if(!file.exists(file)){
        stop("File does not exist")
      } #manually trigger an error
      data <- read.csv(file)
      if (nrow(data) == 0) {
        warning("File is empty") #manually trigger an warning
      } 
      mean(data$value)
    },
    error = function(e) {
      message(paste("Error in file:", file))
      return(NULL)
    },
    warning = function(w) {
      message(paste("Warning in file:", file))
      return(NA)
    },
    finally = {
      message(paste("Finished processing:", file))
    }
  )
}
read.csv("file.csv")
read.csv("file1.csv")
read.csv("file2.csv")
read.csv("file3.csv")
process_file("file.csv")
process_file("file1.csv")
process_file("file2.csv")
process_file("file3.csv")
process_file("abcd.csv")

file <- c("file3.csv","file.csv","file1.csv","file2.csv")
lapply(file, process_file)

#Global Error Handling (options)
options(error = traceback)
options(error = recover)
options(error = NULL)

#Packages
search() #searching al the packages in your environment
installed.packages("MASS")
remove.packages("MASS")
old.packages()
update.packages()

install.packages("C:\\Users\\ganes\\Downloads\\grates-1.7.2.zip", repos = NULL, type = "source")

installed.packages()

if (!require(reshape2)){ 
  install.packages('reshape2')
  library(reshape2)
}
#llibrary path
.libPaths()

#Get the list of all the packages installed
library()

#Namespace locator
install.packages("dplyr")
library(dplyr)
dplyr::filter()
