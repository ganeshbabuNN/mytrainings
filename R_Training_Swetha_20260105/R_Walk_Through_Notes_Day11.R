#character conversion
a<-as.character(100)
a
typeof(a)
a<-as.character(3.14)#decimal
a
typeof(a)
a<-as.character(5L)#integer
a
typeof(a)
a<-as.character(TRUE)#logical
a
typeof(a)
a<-as.character(NULL)
a
typeof(a)
a<-as.character(NA)
a
typeof(a)

#integer conversion
a<-as.integer("A")
a
typeof(a)
a<-as.integer(33)
a
typeof(a)
a<-as.integer(3.6)
a
typeof(a)
a<-as.integer(TRUE)
a
typeof(a)
a<-as.integer(NULL)
a
typeof(a)
a<-as.integer(NA)
a
typeof(a)
a<-NA_integer_
typeof(a)
a<- c(1L,2L,3L,NA_integer_,TRUE,"A")
a
typeof(a)

#numeric conversion
a<-as.numeric(TRUE)
a
typeof(a)
class(a)
a<-as.numeric(4L)
a
typeof(a)
a<-as.numeric("Jyothi")
a
typeof(a)
a<-as.numeric(NULL)
a
typeof(a)

#logical conversion
a<-as.logical(1L)
a
typeof(a)
a<-as.logical(33)
a
typeof(a)
a<-as.logical("CHAR")
a
typeof(a)
a <-c(1,"A",NULL,NA)
a[1]
a<-as.logical(NULL)
a
typeof(a)
a<-as.logical(NA)
a
typeof(a)

#factor
f<-factor(c("M","F","M","F",NA,3L))
f
typeof(f)
f<-as.character(f)
f
typeof(f)
f<-as.numeric(f)
f
typeof(f)

#############################
library(tidyverse)
AE <-read.csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ae.csv")
AE
str(AE)

AE_1 <- AE[which(AE$AETERM=="PAIN"),]
AE_2<- AE_1[which(AE_1$AEBODSYS=="CARDIAC DISORDERS")]

AE_Cardiac <- AE %>% filter(AETERM=="PAIN") %>% filter(AEBODSYS=="CARDIAC DISORDERS")









