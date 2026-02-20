## apply statement
lapply()
apply
a<-matrix(1:5,nrow = 2)
apply(a,2,sum)

mtcars
apply(mtcars,1,mean) # 1 row
apply(mtcars,2,mean) # 2 col

mtcars[2,]
mtcars[2,]
mtcars[1:4,]
data<- 
apply(mtcars[,c("mpg","cyl")],2,mean)
mtcars

#lapply
sqr <- function(a){
  return(a^2)
}
1:10

lapply(1:10,sqr)
mtcars
lapply(mtcars,sqr)
m1$cyl

#sapply
sapply(mtcars,function(x) x^2)

#vapply
vapply(1:3,sqr,numeric(1))
vapply(mtcars$mpg,sqr,numeric(1))

#tapply()
tapply(mtcars$mpg,mtcars$cyl,mean)
#select mpg,cyl from mtcars groupby mean(mpg)

#mapply()
1:3
4:6
mapply(sum,1:3,4:6)
#anonymous function: the function which do not have the function name 
#lamba functions
 
#apply(),lapply(),sapply(),vapply(),tapply(),mapply()

dm<- read.csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/dm.csv")
ae<- read.csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/ae.csv")
lb <- read.csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/lb.csv")
vs <- read.csv("https://raw.githubusercontent.com/ganeshbabuNN/datasets/refs/heads/master/clinical_datasets/sdtm/daibetes/csv/vs.csv")

#apply()
#it used on matrix or datafame(row-wise or column wise operations)
lb_matrix<- as.matrix(lb[,c("LBSTRESN")])
apply(lb_matrix,2,mean,na.rm=TRUE)# 2- columise wise 
lb_matrix<- as.matrix(lb[,c("LBSTRESN","LBORNRLO","LBORNRHI")])
apply(lb_matrix,1,mean,na.rm=TRUE)# 2- Row wise 

#lapply()
#it alway return list
nrow(dm)
nrow(ae)
nrow(lb)
nrow(vs)
count_domain <-list(DM=dm,AE=ae,LB=lb,VS=vs)
lapply(count_domain,nrow)
length(unique(lb$USUBJID))
#sapply()
#simplied version of lapppl(return vector or matrix)
length(unique(dm$USUBJID))
unique_subj <- function(a){
  length(unique(a$USUBJID))
}
sapply(count_domain, unique_subj)

#vapply()
#type-safe version of sappply
vapply(count_domain, unique_subj,numeric(1))
numeric(2)

#tapply()
#groupwise
tapply(dm$AGE,dm$SEX,mean,na.rm=TRUE)

#mapply()
bmi<- function(w,h){
  w/(h/100)^2
}
vs_HEIGHT <- vs[which(vs$VSTESTCD=='HEIGHT'),"VSSTRESN"]
vs_WEIGHT <- vs[which(vs$VSTESTCD=='WEIGHT'),"VSSTRESN"]
length(vs_HEIGHT)
length(vs_WEIGHT)
#FAIR principles
mapply(bmi,vs_WEIGHT,vs_HEIGHT)










