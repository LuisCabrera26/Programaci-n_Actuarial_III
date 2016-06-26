Completos <- function(directorio="~/specdata/",id = 1:332){
    r <- vector("numeric",0)
    setwd(directorio)
    files  <- list.files(path="~/specdata/")
    n <- lapply(files, read.csv, header = TRUE)
    length(r) <- length(r)
    for(x in id){
        y <- n[[x]]
        t <- y [complete.cases(y),]
        r[x] <- nrow(t)
    }
    nobs <- na.omit(r)
    data.frame(id,nobs)
}