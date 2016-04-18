#verción de nacho
 
    
Practica <- function(m=1000,n=1000,dis=runif){

 #m <- 1000
 #n <- 1000 #número de 
 hist(sapply(lapply(rep(m,n),dis),mean))
}
    
 Practica(1000,1000,rexp)
    