#Input SDTM datasets (LB + AE)
#Business rules (real SDTM logic)
#Three implementations:
###Function mostly used.
###S3 (recommended for frameworks)
###R6 (tool-style)
##Outputs

LB <- data.frame(
  USUBJID = c("01","02","03"),
  LBORRES = c("5.4", "", NA),
  stringsAsFactors = FALSE
)
LB
#If LBORRES is missing or blank → ,LBSTAT = "NOT DONE"

AE <- data.frame(
  USUBJID = c("01","02","03"),
  AEDECOD = c("Headache", "Nausea", "Dizziness"),
  AESER   = c("N", "Y", ""),
  stringsAsFactors = FALSE
)
AE
#If AESER = "Y" → AESERFL = "Y" else "N"

########################## normaly way without using a function
LB$LBSTAT <- ifelse(is.na(LB$LBORRES) | trimws(LB$LBORRES) == "","NOT DONE",NA_character_)
LB

AE$AESERFL <- ifelse(AE$AESER == "Y", "Y", "N")
AE

############################Using the function
##Dervice LB
derive_LB <- function(df) {
  df$LBSTAT <- ifelse(
    is.na(df$LBORRES) | trimws(df$LBORRES) == "",
    "NOT DONE",
    NA_character_
  )
  df
}

##Derive AE
derive_AE <- function(df) {
  df$AESERFL <- ifelse(df$AESER == "Y", "Y", "N")
  df
}

LB_out <- derive_LB(LB)
AE_out <- derive_AE(AE)

########################## S3 (One derive() for all domains)
##Generic
derive <- function(x) UseMethod("derive")
##LB Method
derive.LB <- function(x) {
  x$LBSTAT <- ifelse(
    is.na(x$LBORRES) | trimws(x$LBORRES) == "",
    "NOT DONE",
    NA_character_
  )
  x
}

#AE Method
derive.AE <- function(x) {
  x$AESERFL <- ifelse(x$AESER == "Y", "Y", "N")
  x
}

##Assign classes
class(LB) <- c("LB", class(LB))
class(AE) <- c("AE", class(AE))

LB_out <- derive(LB)
AE_out <- derive(AE)

##Same function name, different behavior based on domain.

##########################S4
##Define S4 Classes
setClass("LB",
         slots = list(
           data = "data.frame"
         ))

setClass("AE",
         slots = list(
           data = "data.frame"
         ))
##Define a Generic Function
setGeneric("derive", function(object) standardGeneric("derive"))
##Define Domain-Specific Methods
##LB Method
setMethod("derive", "LB", function(object) {
  df <- object@data
  df$LBSTAT <- ifelse(
    is.na(df$LBORRES) | trimws(df$LBORRES) == "",
    "NOT DONE",
    NA_character_
  )
  object@data <- df
  object
})
##AE Method
setMethod("derive", "AE", function(object) {
  df <- object@data
  df$AESERFL <- ifelse(df$AESER == "Y", "Y", "N")
  object@data <- df
  object
})
##Create S4 Objects
lb_obj <- new("LB", data = LB)
ae_obj <- new("AE", data = AE)

#Run Derivations
lb_obj <- derive(lb_obj)
ae_obj <- derive(ae_obj)

lb_obj@data
ae_obj@data ##Same data result, but wrapped inside a formal S4 object.

#Use S4 when you want:
#Strict structure (only valid LB/AE objects allowed)
#Formal contracts (like Define.xml enforcing types)
#Frameworks or packages (e.g., Bioconductor-style tools)


########################R6 (Framework / Tool Style)
library(R6)
SDTM_Domain <- R6Class("SDTM_Domain",
                       public = list(
                         data = NULL,
                         domain = NULL,
                         
                         initialize = function(df, domain) {
                           self$data <- df
                           self$domain <- domain
                         },
                         
                         derive = function() {
                           if (self$domain == "LB") {
                             self$data$LBSTAT <- ifelse(
                               is.na(self$data$LBORRES) | trimws(self$data$LBORRES) == "",
                               "NOT DONE",
                               NA_character_
                             )
                           }
                           
                           if (self$domain == "AE") {
                             self$data$AESERFL <- ifelse(self$data$AESER == "Y", "Y", "N")
                           }
                         },
                         
                         get_data = function() {
                           self$data
                         }
                       )
)

lb_obj <- SDTM_Domain$new(LB, "LB")
lb_obj$derive()
lb_obj$get_data()

ae_obj <- SDTM_Domain$new(AE, "AE")
ae_obj$derive()
ae_obj$get_data()

#comparions
#Function	derive_LB(LB), derive_AE(AE)	Everyday SDTM programming
#S3	derive(LB), derive(AE)	Clean multi-domain frameworks
#R6	lb_obj$derive()	Automation tools / packages

#Key Takeaway
##All three produce the same SDTM result.
##The difference is only in how your code is organized and scaled.
##Functions → simple, fastest, most common
##S3 → elegant when handling many domains
##R6 → only when building SDTM engines or tools
  