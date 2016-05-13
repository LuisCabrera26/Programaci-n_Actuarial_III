mejor <- function(estado, resultado) {
leer <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
vicky <- vector("numeric")
victor <- vector("numeric")
fila <- nrow(leer)
        
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
                vicky1 <- 0
                for (j in 1:fila) {
                if (leer[j,7] == estado) {
                vicky1 <- length(vicky) + 1
                length(vicky) <- vicky1
                length(victor) <- vicky1
                vicky[vicky1] <- leer[j,2]
                victor[vicky1] <- leer[j,rowlet]
                }
        }
                
                if (vicky1>0) {
                squirtle <- getOption("Warn")
                options(Warn = -1)
                charmander <- as(victor,"numeric")
                options(Warn = squirtle)
                x <- data.frame(vicky,charmander,stringsAsFactors = FALSE)
                y <- x[order(charmander,vicky),]
                y[1,1]
                } else {
                "Invalid State"
                }
        } else {
                "Invalid Result"
        }
}

mejor("TX", "falla")