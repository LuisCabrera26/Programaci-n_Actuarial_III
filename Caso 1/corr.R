corr <- function(directorio="~/specdata/", horizonte=0) {
    dato <- Completos()
    d <- dato[dato["nobs"] > horizonte,]$id
    dato1 <- numeric()
    
    for (i in d) {
        n <- read.csv(paste(directorio,"/", formatC(i, width = 3, flag = "0"),".csv", sep = "")) 
        hijo<- n[complete.cases(n),]
        dato1 <- c(dato1 ,cor(hijo$sulfate,hijo$nitrate))    
    }                            
    
    dato1
}
