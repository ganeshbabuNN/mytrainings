#Exception
#Types of Conditions in R
message("information of your code")
#compare to print
print("information of your code")
#Warning()-Used when something suspicious happens.
sqrt(4)
sqrt(-1)
warning("This is negative number")
#stop()-Stops execution immediately.
if(!file.exists("file5.csv")){
  stop("file is not found")
  print("hello")
}

#try() – Basic Error Handling
log(10)
try(log("a"))
print("hello")

#want his error
res <- try(log("a"))
res
if(inherits(res,"try-error")){
  print("Error got it")
}

files <- c("file3.csv","file.csv", "file1.csv", "file2.csv")
for (f in files) {
  try(read.csv(f))
  print("hello")
}
#tryCatch() – Advanced Error Handling

tryCatch(
  log("a"),
  error = function(e) {
    print("Error handled") 
    print(e$message)
  } 
)

log("a")

tryCatch(
  {
    #sqrt(-1)
    log("a")
  },
  error = function(e) {
    print("Error handled") 
    print(e$message)
  } ,
  warning = function(w) {
    print("Warning caught!Pay attent sarang")
    print(w$message)
  }
)
#finally
tryCatch(
  {
    log("a")
  },
  error = function(e) {
    print("Error handled")
  },
  finally = {
    print("Cleanup activity done")
  }
)
#custom error
my_function <- function(x) {
  if (x < 0) {
    stop(structure(
      list(message = "Negative value not allowed"),
      class = c("custom_error", "error", "condition")
    ))
  }
}
my_function(-1)

#Handling custom error:
tryCatch(
  my_function(-2),
  custom_error = function(e) {
    print("Custom error handled")
  }
)
#withCallingHandlers

withCallingHandlers(
  sqrt(-1),
  warning = function(w) {
    print("Warning intercepted")
    invokeRestart("muffleWarning")
  }
)
?invokeRestart
sqrt(-1)

#Suppressing Warnings and Messages
suppressWarnings(sqrt(-1))
suppressMessages(library(dplyr))
