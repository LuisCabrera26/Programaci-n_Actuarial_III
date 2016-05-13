rankingcompleto <- function(resultado, num) {
leer <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
fila <- nrow(leer)
st <- unique(leer[,7])
hsp <- vector("character", 54)
        
        if (resultado == "Ataque") {
        rowlet <- 11
        } else if (resultado == "Falla") {
        rowlet <- 17
        } else if (resultado == "Neumonía") {
        rowlet <- 23
        } else {
        rowlet <- 2
        }
        
        if (rowlet>10) {
        for (q in 1:54) {
        estado<- st[q]
        vicky <- vector("numeric")
        victor <- vector("numeric")
        vicky1 <- 0
                        
        for (j in 1:fila) {
        if(leer[j,7] == estado) {
        vicky1 <- length(vicky) + 1
        length(vicky) <- vicky1
        length(victor) <- vicky1
        vicky[vicky1] <- leer[j,2]
        victor[vicky1] <- leer[j,rowlet]
                }
        }
                        
        squirtle <- getOption("Warn")
        options(Warn = -1)
        charmander <- as(victor,"numeric")
        options(Warn = squirtle)
        x<-data.frame(vicky,charmander,stringsAsFactors = FALSE)
        y<- x[order(charmander,vicky),]
                        
        if (num == "mejor") {
        hsp[q] <- y[1,1]
        } else if (num == "peor") {
        bulbasaur <- nrow(y[complete.cases(y),])
        hsp[q] <- y[bulbasaur,1]
        } else {
        hsp[q] <- y[num,1]
        }
        }
        dfh <- data.frame(hsp,st,stringsAsFactors = FALSE)
        osh <- dfh[order(st,hsp),]
        osh
        } else {
        "Invalid Result"
        }
}        

rankingcompleto("Neumonía", "peor")
