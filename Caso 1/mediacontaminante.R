mediacontaminante <- function(directorio="~/specdata/",contaminante="sulfate",id = 1:332){
    setwd(directorio)
    files <- list.files(path="~/specdata/")
    
    x <- read.csv(files[id[1]],header=TRUE)
    
    for (i in id){
        if (i!=id[1]) {x <- rbind(x,read.csv(files[i],header=TRUE))}
    }
    
    if(contaminante =="sulfate"){
        mean(x$sulfate,na.rm=T)
    } else if(contaminante=="nitrate") {
        mean(x$nitrate,na.rm=T)  
    }
}
